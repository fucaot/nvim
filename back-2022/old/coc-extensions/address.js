const {sources} = require('coc.nvim')
const {spawn} = require('child_process')
const readline = require('readline')

exports.activate = async context => {
  context.subscriptions.push(
    sources.createSource({
      // 唯一 id
      name: 'notmuch',
      // 用于 menu
      shortcut: 'address',
      // 指定 filetype
      filetypes: ['mail'],
      // 仅在触发条件满足时触发
      triggerOnly: true,
      priority: 99,
      triggerPatterns: [
        /^(Bcc|Cc|From|Reply-To|To):\s*/,
        /^(Bcc|Cc|From|Reply-To|To):.*,\s*/
      ],
      doComplete: async function(opt) {
        let matches = await getAddresses(opt.input)
        return {
          items: matches.map(m => {
            return {
              word: `${m[1]} <${m[0]}>`,
              abbr: `${m[0} ${m[1]}`,
              filterText: `${m[0]} ${m[1]}`,
              menu: this.menu
            }
          })
        }
      }
    })
  )
}

async function getAddresses(input) {
  let result = []
  return new Promise((resolve, reject) => {
    const p = spawn('lbdbq', [input])
    const rl = readline.createInterface(p.stdout)
    p.on('error', reject)
    rl.on('line', line => {
      if (line.startsWith('lbdbq:')) return
      let [email, name] = line.split('\t')
      result.push([email, name])
    })
    rl.on('close', () => {
      resolve(result)
    })
  })
}]

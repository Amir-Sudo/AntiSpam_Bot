--An empty table for solving multiple kicking problem(thanks to @Crazy_sudo )
kicktable = {}
local function run(msg, matches)
if msg.to.type == 'channel' then
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_emoji'] then
                lock_emoji = data[tostring(msg.to.id)]['settings']['lock_emoji']
            end
        end
    end
    local channel = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_emoji == "yes" then
        send_large_msg(channel, '')
        delete_msg(msg.id, ok_cb, false)
    end
end
 end
return {
 usage = {
  "lock tag: If User Send A Message With # , @ Then Bot Removed User.",
  "unlock tag: No Action Execute If User Send Mesage With # , @",
  },
  patterns = {

"😀","😬","😁","😂","😃","😄","😅","😆","😇","😉","😊","🙂","🙃","☺️","😚","😙","😗","😘","😍","😌","😋","😜","😝","😛","🤑","🤓","😎","🤗","🤔","🙄","😒","😑","😐","😶","😏","😳","😞","😟","😠","😡","😔","😕","😤","😩","😫","😖","😣","☹️","🙁","😮","😱","😨","😰","😯","😦","😧","😲","😵","😭","😓","😪","😥","😢","🤐","😷","🤒","🤕","😴","💤","💩","👽","👻","💀","👺","👹","👿","😈","💋",
 },
  run = run
}
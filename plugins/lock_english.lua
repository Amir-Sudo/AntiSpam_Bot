--An empty table for solving multiple kicking problem(thanks to @topkecleon )
kicktable = {}
local function run(msg, matches)
if msg.to.type == 'channel' then
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_english'] then
                lock_english = data[tostring(msg.to.id)]['settings']['lock_english']
            end
        end
    end
    local channel = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_english == "yes" then
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
    "(a)",
 "(o)",
 "(l)",
 "(A)",
 "(O)",
 "(L)",
 "(M)",
 "(e)",
 "(E)",
 "(i)",
 "(I)",
 "(u)",
 "(U)",
 "(m)",
"(k)",
"(K)",
"(F)",
"(f)",
"(t)",
"(T)",
"(s)",
"(S)",
"(r)",
"(R)",
"(h)",
"(H)",
"(X)",
"(x)",
"(Z)",
"(z)",
"(Y)",
"(y)",
"(C)",
"(c)",
"(B)",
"(b)",
"(D)",
"(d)",
"(G)",
"(g)",
"(Q)",
"(q)",
"(W)",
"(w)",
"(P)",
"(p)",
"(J)",
"(j)",
"(V)",
"(v)",
"(N)",
"(n)",
 },
  run = run
}
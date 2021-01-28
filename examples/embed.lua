local API = require(game.ServerScriptService.HttpWrapper)

print(API.mVersion)

local Embed = API.Embed
Embed.Title = "Hello, world!"
Embed.Description = "Cool description!"
Embed.Color = 3408005
Embed.Thumbnail = "https://tr.rbxcdn.com/e338983714189a2e248f76170ee8f7df/150/150/AvatarHeadshot/Png"
Embed.Image = "https://cdn.mos.cms.futurecdn.net/ntFmJUZ8tw3ULD3tkBaAtf.jpg"
Embed.Footer = {text = "luiggy1200", icon_url = "https://tr.rbxcdn.com/e338983714189a2e248f76170ee8f7df/150/150/AvatarHeadshot/Png"}
Embed.Url = "https://roblox.com"
Embed.Fields = {{name = "Cool", value = "Value goes here!", inline = true}, {name = "Hi!", value = "Cool value.", inline = true}}
Embed.Author = "well, author"

API:Send("DISCORD_WEBHOOK_LINK", Embed)

local API = require(game.ServerScriptService.HttpWrapper)

local Embed = API.Embed
Embed.Title = "Hello, world!"
Embed.Description = "Cool description!"
Embed.Color = 3408005
Embed.Thumbnail = "https://tr.rbxcdn.com/e338983714189a2e248f76170ee8f7df/150/150/AvatarHeadshot/Png"
Embed.Image = "https://cdn.mos.cms.futurecdn.net/ntFmJUZ8tw3ULD3tkBaAtf.jpg"
Embed.Footer = {text = "luiggy1200", icon_url = "https://tr.rbxcdn.com/e338983714189a2e248f76170ee8f7df/150/150/AvatarHeadshot/Png"}
Embed.Url = "https://roblox.com"
Embed.Author = "well, author"

API:Send("DiscordWebhookLink", Embed)
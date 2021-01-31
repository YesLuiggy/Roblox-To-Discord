local API = require(game.ServerScriptService.HttpWrapper)

local Embed = API.Embed
Embed.Title = "Hello, world!"
Embed.Description = "Cool description!"
Embed.Url = "https://roblox.com"
Embed.Timestamp = true
Embed.Color = 3408005
Embed.Footer = {text = "luiggy1200", icon_url = "https://tr.rbxcdn.com/e338983714189a2e248f76170ee8f7df/150/150/AvatarHeadshot/Png"}
Embed.Image = {url = "https://cdn.pixabay.com/photo/2016/05/24/16/48/mountains-1412683__340.png"}
Embed.Thumbnail = {url = "https://tr.rbxcdn.com/e338983714189a2e248f76170ee8f7df/150/150/AvatarHeadshot/Png"}
Embed.Author = {name = "redacted", url = "https://devforum.roblox.com/u/luiggy1200/summary", icon_url = "https://tr.rbxcdn.com/e338983714189a2e248f76170ee8f7df/150/150/AvatarHeadshot/Png"}
Embed.Fields = {{name = "Cool", value = "Value goes here!", inline = true}, {name = "Hi!", value = "Cool value.", inline = true}}

API:Send("DISCORD_WEBHOOK_URL", API.DiscordEmbed:Build(embed))

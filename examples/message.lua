local API = require(game.ServerScriptService.HttpWrapper)

API:Send(
    "DiscordWebhookLink",
    "message"    
)
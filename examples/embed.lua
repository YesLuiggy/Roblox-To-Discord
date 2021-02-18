local Api = require(game.ServerScriptService.Rohttp)

local embed = Api.Discord.Embed:new(
	{
		title = 'title goes here',
		description = 'description goes here',
	}
)

Api:Send(
	"WEBHOOK_LINK", 
	embed
)

local Api = require(game.ServerScriptService.Rohttp)

Api:Send(
	'WEBHOOK_LINK',
	{
		content = 'cool'
	}
)

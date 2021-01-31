local HTTPService = game:GetService("HttpService")

local module = {
	mVersion = "v1.0 Stable", 
	DiscordEmbed = {
		Title = nil,	  -- string
		Description = nil,-- string
		Url = nil, 		  -- string
		Timestamp = nil,  -- bool
		Color = nil,      -- number
		Footer = nil,	  -- {text = "", icon_url = "", proxy_icon_url = ""}
		Image = nil, 	  -- {url = "", proxy_url = "", height = 0, width = 0}
		Thumbnail = nil,  -- {url = "", proxy_url = "", height = 0, width = 0}
		Author = nil, 	  -- {name = "", url = "", icon_url = "", proxy_icon_url = ""}
		Fields = nil,	  -- {name = "", value = "", inline = false}
	}
}

function module:Send(Url, Content)
	if Url == nil then
		return error("Url is nil.")
	end
	
	HTTPService:PostAsync(Url, HTTPService:JSONEncode(Content))
end

function module.DiscordEmbed:Build(Content)
	local Embed = {
		["embeds"] = {{

		}}
	}
	
	if Content.Title ~= nil then
		Embed.embeds[1].title = Content.Title
	end

	if Content.Description ~= nil then
		Embed.embeds[1].description = Content.Description
	end

	if Content.Url ~= nil then
		Embed.embeds[1].url = Content.Url
	end

	if Content.Timestamp ~= nil then
		if Content.Timestamp == true then
			local OsDate = os.date("*t")
			local Date = OsDate.year .. "-" .. OsDate.month .. "-" .. OsDate.day .. "T" .. OsDate.hour .. ":" .. OsDate.min .. ":" .. OsDate.sec .. "Z"

			Embed.embeds[1].timestamp = tostring(Date)
		end
	end

	if Content.Color ~= nil then
		Embed.embeds[1].color = Content.Color
	end

	if Content.Footer ~= nil then
		Embed.embeds[1].footer = Content.Footer
	end

	if Content.Image ~= nil then
		Embed.embeds[1].image = Content.Image
	end

	if Content.Thumbnail ~= nil then
		Embed.embeds[1].thumbnail = Content.Thumbnail
	end

	if Content.Author ~= nil then
		Embed.embeds[1].author = Content.Author
	end

	if Content.Fields ~= nil then
		Embed.embeds[1].fields = Content.Fields
	end

	return Embed
end

return module

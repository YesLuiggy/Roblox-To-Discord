local HTTPService = game:GetService("HttpService")

local module = {
	mVersion = "1 stable final", 
	Embed = {
		Title = "", 
		Description = "",
		Url = "", 
		Timestamp = true,
		Color = 0, 
		Footer = {},	-- text = "", icon_url = "", proxy_icon_url = "" 
		Image = {}, 	-- url = "", proxy_url = "", height = 0, width = 0 
		Thumbnail = {},	-- url = "", proxy_url = "", height = 0, width = 0 
		Author = {}, 	-- name = "", url = "", icon_url = "", proxy_icon_url = ""
		Fields = {},	-- name = "", value = "", inline = false
	}
}

function module:Send(Url, Content)
	if Url == nil or Content == nil then
		return error("Url or Content is nil.")
	end

	local PayLoad = {
		content = Content
	}

	if typeof(Content) == "table" then
		PayLoad = {
			["embeds"] = {{

			}}
		}

		if Content.Title then
			PayLoad.embeds[1].title = Content.Title
		end

		if Content.Description then
			PayLoad.embeds[1].description = Content.Description
		end
		
		if Content.Url then
			PayLoad.embeds[1].url = Content.Url
		end
		
		if Content.Timestamp then
			local OsDate = os.date("!*t")
			local Date = OsDate.year .. "-" .. OsDate.month .. "-" .. OsDate.day .. "T" .. OsDate.hour .. ":" .. OsDate.min .. ":" .. OsDate.sec .. "Z"

			PayLoad.embeds[1].timestamp = tostring(Date)
		end
		
		if Content.Color then
			PayLoad.embeds[1].color = Content.Color
		end
		
		if Content.Footer then
			PayLoad.embeds[1].footer = Content.Footer
		end
		
		if Content.Image then
			PayLoad.embeds[1].image = Content.Image
		end

		if Content.Thumbnail then
			PayLoad.embeds[1].thumbnail = Content.Thumbnail
		end

		if Content.Author then
			PayLoad.embeds[1].author = Content.Author
		end
		
		if Content.Fields then
			PayLoad.embeds[1].fields = Content.Fields
		end
	end

	HTTPService:PostAsync(Url, HTTPService:JSONEncode(PayLoad))
end

return module

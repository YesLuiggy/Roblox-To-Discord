local HTTPService = game:GetService("HttpService")

local module = {
	mVersion = "1 stable", 
	Embed = {
		Title = "", 
		Description = "", 
		Color = 0, 
		Image = "", 
		Thumbnail = "", 
		Url = "", 
		Footer = {}, 
		Fields = {name = "", value = "", inline = false}
	}
}

function module:Send(Url, Content)
	if Url == nil or Content == nil then
		return error("Url or Content is nil.")
	end

	local PayLoad = {
		["embeds"] = {{
			
		}}
	}

	if typeof(Content) == "table" then
		if Content.Title then
			PayLoad.embeds[1].title = tostring(Content.Title)
		end

		if Content.Description then
			PayLoad.embeds[1].description = tostring(Content.Description)
		end
		
		if Content.Color then
			PayLoad.embeds[1].color = tonumber(Content.Color)
		end
		
		if Content.Image then
			PayLoad.embeds[1].image = {url = tostring(Content.Image)}
		end
		
		if Content.Thumbnail then
			PayLoad.embeds[1].thumbnail = {url = tostring(Content.Thumbnail)}
		end
		
		if Content.Footer then
			if Content.Footer.icon_url then
				PayLoad.embeds[1].footer = {text = Content.Footer.text, icon_url = Content.Footer.icon_url}
			else
				PayLoad.embeds[1].footer = {text = Content.Footer.text}
			end
		end
		
		if Content.Url then
			PayLoad.embeds[1].url = tostring(Content.Url)
		end
		
		if Content.Fields then
			PayLoad.embeds[1].fields = Content.Fields
		end
		
		if Content.Author then
			PayLoad.embeds[1].author = {text = tostring(Content.Author)}
		end
	end
	
	HTTPService:PostAsync(Url, HTTPService:JSONEncode(PayLoad))
end

return module

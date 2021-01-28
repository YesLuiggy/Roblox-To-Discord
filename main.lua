local HTTPService = game:GetService("HttpService")

local module = {
	mVersion = "1 Early Release", 
	Embed = {Title = "", Description = "", Color = 0}
}

function module:Send(Url, Content)
	if Url == nil or Content == nil then
		return error("Url or Content is nil.")
	end

	local PayLoad

	if typeof(Content) == "table" then
		if Content.Title and Content.Description and Content.Color then
			PayLoad = {
				["embeds"] = {{
					["title"] = tostring(Content.Title),
					["description"] = tostring(Content.Description),
					["color"] = tonumber(Content.Color)
				}}
			}
		end
	end

	HTTPService:PostAsync(Url, HTTPService:JSONEncode(PayLoad))
end

return module

local HTTPService = game:GetService("HttpService")

local module = {
	rohttpVersion = "Early Access",
	Discord = {
		Embed = {}
	}
}

function module:Send(Url, Content)
	if Url == nil or Content == nil then
		return error("Url or Content is nil.")
	end

	HTTPService:PostAsync(Url, HTTPService:JSONEncode(Content))
end

function module.Discord.Embed:new(Content)
	if typeof(Content) ~= 'table' then
		return error('The embed must be a table.')
	end

	local PayLoad = {
		["embeds"] = {{

		}}
	}

	if Content.title ~= nil then
		PayLoad.embeds[1].title = Content.title
	end

	if Content.description ~= nil then
		PayLoad.embeds[1].description = Content.description
	end

	if Content.url ~= nil then
		PayLoad.embeds[1].url = Content.url
	end

	if Content.timestamp ~= nil then
		if Content.timestamp == true then
			local OsDate = os.date("*t")
			local Date = OsDate.year .. "-" .. OsDate.month .. "-" .. OsDate.day .. "T" .. OsDate.hour .. ":" .. OsDate.min .. ":" .. OsDate.sec .. "Z"

			PayLoad.embeds[1].timestamp = tostring(Date)
		end
	end

	if Content.color ~= nil then
		PayLoad.embeds[1].color = Content.color
	end

	if Content.footer ~= nil then
		PayLoad.embeds[1].footer = Content.footer
	end

	if Content.image ~= nil then
		PayLoad.embeds[1].image = Content.image
	end

	if Content.thumbnail ~= nil then
		PayLoad.embeds[1].thumbnail = Content.thumbnail
	end

	if Content.author ~= nil then
		PayLoad.embeds[1].author = Content.author
	end

	if Content.fields ~= nil then
		PayLoad.embeds[1].fields = Content.fields
	end

	return PayLoad	
end

return module

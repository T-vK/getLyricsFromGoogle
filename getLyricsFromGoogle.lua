local http = require("socket.http")

function getLyricsFromGoogle(artist, title)
    artist = artist:gsub(" ", "+")
    title = title:gsub(" ", "+")
    local url = "https://www.google.com/search?q="..artist.."+-+"..title.."+lyrics"
    --print(url)
    local body, code, headers, status = http.request(url)
    --print(code, status, #body)
    --print(body)
    local lyricsPrefixHtmlStartPos = string.find(body,'</div></div></div></div><div')
    local lyricsStart = string.find(string.sub(body, lyricsPrefixHtmlStartPos), ">[^>]*\n") + lyricsPrefixHtmlStartPos
    local lyricsEnd = string.find(string.sub(body, lyricsStart), "<") + lyricsStart -2
    return string.sub(body, lyricsStart, lyricsEnd)
end

-- EXAMPLE USAGE:

--local lyrics = getLyricsFromGoogle('Oasis', "Wonderwall")
--print(lyrics)

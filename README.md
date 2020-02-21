# getLyricsFromGoogle

Simple Lua script to get the lyrics to any song directly from google

## Example Usage

See [getLyricsFromGoogle.lua](getLyricsFromGoogle.lua)

You can simply use it like this:

``` Lua
local lyrics = getLyricsFromGoogle('Oasis', "Wonderwall")
print(lyrics)
```

The first parameter is the artist of the song and the second parameter is the title of the song.
Thanks to Google's algorithms you can even have typos in the song title or artist name and you'll most likely still get what you want.

## LICENSE

This code is MIT licensed. Meaning you can pretty much do whatever you want with it.

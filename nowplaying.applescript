#!/usr/bin/osascript
#
# Outputs the current playing track in iTunes

tell application "iTunes"
	try
		if not (exists current track) then return
		set this_artist to (get artist of current track)
		set this_track to (get name of current track)
		set this_album to (get album of current track)
		(this_artist & " - “" & this_track & "” (from “" & this_album & "”)")
	end try
end tell

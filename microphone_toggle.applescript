set inputVolume to input volume of (get volume settings)

if inputVolume is missing value then return

if inputVolume < 10 then
	set volume input volume 70
	do shell script "echo '🎤' > /tmp/mic_status.pipe"
	display notification "Microphone Unmuted" sound name "Glass"
else
	set volume input volume 0
	do shell script "echo '🔇' > /tmp/mic_status.pipe"
	display notification "You are muted!" sound name "Bottle"
end if
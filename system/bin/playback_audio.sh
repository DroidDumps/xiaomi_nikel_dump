# $1: wave file to read
# $2: volume(0-15)
# $3: device for output
#     1: speaker
#     2: receiver
#     3: headset left ear
#     4: headset right ear
#     5: left speaker
#     6: right speaker
#     7: headset both ear


# sample usage: playback_audio.sh /etc/sweep.wav  15 1

setprop persist.sys.audioft.play_end 0
echo "set persist.sys.audioft.play_end to 0"
am start -n com.longcheertel.audioft/.AudioPlayActivity -e path "$1" --ei volume "$2" --ei output "$3"
echo "play start"

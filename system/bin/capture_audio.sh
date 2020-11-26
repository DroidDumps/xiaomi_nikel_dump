# $1: wave file to write
# $2: audio source
#     0: both mic (or headphone mic if plugged)
#     1: main mic
#     2: ref mic
# $3: sample rate(Hz)
# $4: sample bit (only 16 bit supported)
# $5: channel number
# $6: capture duration(s)

# sample usage: capture_audio.sh /data/test.wav 1 48000 16 1 5

setprop persist.sys.audioft.rec_end 0
echo "set persist.sys.audioft.rec_end to 0"
echo "only sample bit 16 bit supported for now"
am start -n com.longcheertel.audioft/.AudioRecordActivity -e path "$1" --ei mic "$2" --ei samplerate "$3" --ei bit "$4" --ei channel "$5" --ei time "$6" 
echo "record start"

#-------------------------------------------------------------------------------
# A timer function that will say the message and display a pop-up
# after the specified amount of time.
#-------------------------------------------------------------------------------
function workTimer() {
    echo -n "How long to set timer for? (ex. 1h, 10m, 20s, etc) => "; read duration
    echo -n "What to words_to_say when done => "; read words_to_say
    sleep $duration && say "$words_to_say"
}

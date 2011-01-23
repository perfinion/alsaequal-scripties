    #define a function to save current alsa equalizer state
    aes() 
    {
        ssh root@localhost su -l -s /bin/sh -c "aectl\ save\ .aectl/$1" mpd
        ssh root@localhost chmod g+w ~mpd/.aectl/$1
    }

    #and one to load it back
    ael()
    {
        ssh root@localhost su -l -s /bin/sh -c "aectl\ load\ .aectl/$1" mpd
    }


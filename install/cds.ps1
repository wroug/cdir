
    $clear = $false

    function cdir-help {
        echo "Available commands:"
        echo
        echo cdir
        echo
        echo back
        echo
        echo clear-on
        echo
        echo clear-off
    }
    function cdir {
        param (
            [string]$c_target
        )

        cd $c_target
        ls
        if ($clear -eq $true) {
            cls
        }
    }

    function back {
        cd ..
        ls
        if ($clear -eq $true) {
            cls
        }
    }

    function clear-on {
        $clear = $true
    }

    function clear-off {
        $clear = $false
    }
    
    echo "Use cdir-help to see cmdlets related to cdir"


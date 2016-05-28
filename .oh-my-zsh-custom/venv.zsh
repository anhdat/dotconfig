# Activate virtual env if has .venv file

function prompt()
{

    if [[ "$VIRTUAL_ENV" == "" ]] then
        test -e .venv && workon `cat .venv`
    fi


    # if [ "$PWD" != "$MYOLDPWD" ]; then
    #     MYOLDPWD="$PWD"
    #     test -e .venv && workon `cat .venv`
    # fi
}

chpwd() { eval prompt }
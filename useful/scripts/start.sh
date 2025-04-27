# validate options
if [ "$#" -eq 0 ] || [[ "$1" != "-u" && "$1" != "-c" && "$1" != "-g" ]]; then
    echo "> Usage: $0 [-u] [-c/-g] [params]"
    exit 1
fi

# interpret options
while getopts "ucg" flag; do
  case $flag in
    u)
      echo "> Updating..."
      ./update.sh
      exit 0;;
    c)
      mode="cli"
      break;;
    g)
      mode="gui"
      break;;
    *)
      echo "> Usage: $0 [-u] [-c/-g] [params]"
      exit 1;;
  esac
done

# start application
clear
if [ -n "$2" ]; then
    params="$2"
    echo "> Parameters: $params"
    shift 2
    if [ "$#" -eq 0 ]; then
        pipenv run python src/script_"$mode".py "$params"
    else
        args="$@"
        echo "> Arguments: $args"
        pipenv run python src/script_"$mode".py "$params" "$args"
    fi
else
    echo "> No parameters/arguments specified."
    pipenv run python src/script_"$mode".py
fi

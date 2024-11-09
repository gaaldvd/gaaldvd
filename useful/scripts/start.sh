# validate options
if [ "$#" -eq 0 ]
  then
    echo "> Usage: $0 [-c/-g]"
    exit 1
fi

# interpret options
while getopts "cg" flag; do
  case $flag in
    c) mode="cli";;
    g) mode="gui";;
    *)
      echo "> Usage: $0 [-c/-g]"
      exit 1;;
  esac
done

# start script
clear
pipenv run python script_$mode.py

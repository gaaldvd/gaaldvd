echo "> Setting up pipenv..."
pipenv sync

echo "> Configuring privileges..."
chmod +x start.sh
chmod +x update.sh

echo "> Done. Goodbye!"

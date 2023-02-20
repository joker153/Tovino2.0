if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/joker153/Tovino2.0.git /Tovino2.0
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Tovino2.0
fi
cd /Tovino2.0
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

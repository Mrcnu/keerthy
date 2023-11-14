if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mrcnu/naamartinbot.git /naamartinbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /naamartinbot
fi
cd /naamartinbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

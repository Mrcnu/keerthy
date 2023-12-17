if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mrcnu/Martinbot2.git /Martinbot2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Martinbot2
fi
cd /Martinbot2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

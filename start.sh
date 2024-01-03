if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Candypop678/MINNAL-T_ADV-V22.git /MINNAL-T_ADV-V2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MINNAL-T_ADV-V2
fi
cd /MINNAL-T_ADV-V2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

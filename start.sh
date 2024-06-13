echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/RJ-YT/ForwardBotV1 RJ-YT/ForwardBotV1
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/RJ-YT/ForwardBotV1 -b $BRANCH /ForwardBotV1
fi
cd RJ-YT/ForwardBotV1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py

# Using Python Slim-Buster
FROM kyyex/kyy-userbot:busterv2
#━━━━━ Userbot Telegram ━━━━━
#━━━━━ By Tonic-Userbot ━━━━━

RUN apt-get update && apt-get upgrade -y
RUN apt-get install ffmpeg -y
RUN git clone -b wyzubot https://github.com/whyfzn/wyzubot /home/wyzubot
RUN mkdir /home/wyzubot
RUN pip install --upgrade pip setuptools
WORKDIR /home/wyzubot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/whyfzn/wyzubot/wyzubot/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3", "-m", "userbot"]

FROM WHYFZN/wyzubot:buster

RUN git clone -b main https://github.com/WHYFZN/wyzubot /home/wyzubot/ \
    && chmod 777 /home/wyzubot \
    && mkdir /home/wyzubot/bin/

COPY ./sample_config.env ./config.env* /home/wyzubot/

WORKDIR /home/wyzubot/

CMD ["python3", "-m", "userbot"]

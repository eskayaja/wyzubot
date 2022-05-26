FROM greycilik/cilikuserbot:buster

RUN git clone -b main https://github.com/WHYFZN/wyzubot /home/main/ \
    && chmod 777 /home/main \
    && mkdir /home/main/bin/

COPY ./sample_config.env ./config.env* /home/main/

WORKDIR /home/main/

CMD ["python3", "-m", "userbot"]

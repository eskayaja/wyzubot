FROM greycilik/cilikuserbot:buster

RUN git clone -b wyzubot https://github.com/wyzubot /home/wyzubot/ \
    && chmod 777 /home/wyzubot \
    && mkdir /home/main/wyzubot/

COPY ./sample_config.env ./config.env* /home/wyzubot/

WORKDIR /home/wyzubot/

CMD ["python3", "-m", "userbot"]

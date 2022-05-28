FROM RR77R/jmthon:alpine

RUN git clone https://github.com/RR77R/jmthon/tree/master.git /root/jmthon

WORKDIR /root/jmthon

RUN pip3 install -U -r requirements.txt

ENV PATH="/home/jmthon/bin:$PATH"

CMD ["python3","-m","jmthon"]

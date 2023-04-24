FROM python:3.8
LABEL maintainer="Testing guy"
LABEL version="0.1"
LABEL description="Noteboook and data (.csv file) to provide a summary \
                  of the total medals won by participating countries \
                  in the 2008 Summer Olympics."

WORKDIR /data

COPY . /data

RUN pip install numpy pandas seaborn jupyter

EXPOSE 8888

CMD ["jupyter","notebook","--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

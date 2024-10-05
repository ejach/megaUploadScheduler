FROM python:3.8-alpine

# set the working directory in the container
WORKDIR /

COPY requirements.txt /

# install dependencies
RUN pip install -r requirements.txt

# copy the content of the local directory to the working directory
COPY main.py /

ENTRYPOINT ["python", "-u"]

# command to run on container start
CMD [ "main.py" ]

FROM python:3.11.8

#WORKDIR /Users/mime/Desktop/code/try
WORKDIR  /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .
RUN chmod +x wait-for.sh

EXPOSE 5000
RUN apt-get update && apt-get install -y default-mysql-client netcat-traditional && rm -rf /var/lib/apt/lists/*
#CMD [ "flask", "run", "--host=0.0.0.0", "--port=5000"]
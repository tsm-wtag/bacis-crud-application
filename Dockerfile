FROM python:3.11.8


WORKDIR  /app

COPY requirements.txt ./

RUN pip install -r requirements.txt
RUN apt-get update && apt-get install -y postgresql-client && rm -rf /var/lib/apt/lists/*
COPY . .
# RUN chmod +x wait-for.sh

EXPOSE 5000
 
CMD [ "flask", "run", "--host=0.0.0.0", "--port=5000"]
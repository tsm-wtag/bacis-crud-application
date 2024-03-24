FROM python:3.11.8

WORKDIR /Users/mime/Desktop/code/try

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "flask", "run", "--host=0.0.0.0", "--port=5000"]
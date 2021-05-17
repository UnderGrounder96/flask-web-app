FROM python:3.7-alpine

LABEL maintainer="@UnderGrounder96"

ENV FLASK_APP="main.py" FLASK_RUN_HOST="0.0.0.0" PORT="5000"
EXPOSE ${PORT}

WORKDIR /app

RUN apk add --no-cache gcc musl-dev linux-headers

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .

CMD ["flask", "run"]

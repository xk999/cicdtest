FROM python:3.8

COPY . /cicdtest

WORKDIR /cicdtest

RUN pip install --no-cache-dir -r requirements.txt

RUN ["pytest", "-v", "--junitxml=reports/result.xml"]

CMD tail -f /dev/null

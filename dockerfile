FROM python:3.10.0-slim-buster

WORKDIR D:\Data Science\Git\repo_flask\Docker_File

COPY requirements.txt ./

RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
CMD ["python", "-m", "flask", "--app", "predictions.py", "run","--host=0.0.0.0"]

FROM python:3.10.21-alpine3.23
COPY . .
RUN pip install -e .
EXPOSE 8080
ENTRYPOINT ["uvicorn", "horde_openai.server:app", "--host", "0.0.0.0", "--port", "8080"]
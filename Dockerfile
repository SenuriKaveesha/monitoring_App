FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

# Set the host to 0.0.0.0 for external access
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port
EXPOSE 5000

# Run the Flask application
CMD ["flask", "run"]

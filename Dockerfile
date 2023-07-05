# Use the official Python image as the base image
FROM python:3.8.10-slim

# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt /app/requirements.txt

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app folder into the container
COPY amscsait /app

# Copy the gunicorn.conf.py file to the container
COPY gunicorn.conf.py /app

# Expose the port the app will run on
EXPOSE 8080

# python /app/manage.py makemigrations
# python /app/manage.py migrate
# python /app/manage.py createsuperuser

# Start the application using Gunicorn
CMD ["gunicorn", "--config", "gunicorn.conf.py", "--bind", "0.0.0.0:8080", "--log-level", "debug", "amscsait.wsgi:application"]

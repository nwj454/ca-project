FROM ubuntu

# Copy all of our app into the docker image
COPY . /app/

# Lets go there to work
WORKDIR /app/

# Install the software we need on the image
RUN apt-get update && apt-get install -y python-pip

# Install python libraries
RUN pip install -r /app/requirements.txt

# Command for starting our app
CMD python run.py

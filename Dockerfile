# The base image Docker starts from
FROM python:3.7

# Copy the requirements.txt and install the dependencies
# This pattern prevents the dependencies being re-installed
# Due to an application code change.
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of the package code and its scripts into the WORKDIR
COPY . .

CMD bash

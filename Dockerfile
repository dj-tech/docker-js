# Use the offical Debian Docker image with a specified version tag, Wheezy, so not all
# versions of Debian images are downloaded.
FROM debian:wheezy
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /sys
CMD python .py
# Expose the container's network port: 25565 during runtime.
EXPOSE 25565

FROM ghcr.io/osgeo/gdal:ubuntu-full-3.9.2

RUN apt update && apt -y upgrade
RUN apt -y install python3-pip
RUN pip install --break-system-packages click

# Prepare processor script
RUN mkdir -p /home/worker/processor
COPY . /home/worker/processor/

ENTRYPOINT ["/home/worker/processor/entrypoint.sh"]

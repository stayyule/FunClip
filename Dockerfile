FROM jenkins/jenkins:latest
USER root
RUN apt-get update && apt-get install -y python3 python3-pip ffmpeg imagemagick
RUN sed -i 's/none/read,write/g' /etc/ImageMagick-6/policy.xml
COPY requirements.txt .
RUN pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/ --break-system-packages
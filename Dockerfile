FROM MohammedRD313/Scorpion:slim-buster

#clonning repo 
RUN git clone https://github.com/MohammedRD313/Scorpion.git /root/JoKeRUB
#working directory 
WORKDIR /root/JoKeRUB
RUN apt-get install git curl python3-pip ffmpeg -y
RUN apt-get install git curl python3-pip mediainfo -y
RUN apt-get install git curl python3-pip p7zip-full -y
# Install requirements
ARG USER=root
USER $USER
RUN python3 -m venv venv
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/JoKeRUB/bin:$PATH"

CMD ["python3","-m","JoKeRUB"]

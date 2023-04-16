FROM node:19.8.1-bullseye-slim

RUN apt update && apt install -y \
    git \
    #curl \
    locales-all

RUN git clone https://github.com/jonigata/FramePlanner2.git
WORKDIR /FramePlanner2
# RUN git checkout 80a057494c24039cd4fd01425a95d917950ed813

RUN npm install

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ=Asia/Tokyo

EXPOSE 5173

CMD npm run dev -- --host

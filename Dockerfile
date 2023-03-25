FROM node:19.8.1-bullseye-slim

RUN apt update && apt install -y \
    git \
    #curl \
    locales-all

RUN git clone https://github.com/jonigata/FramePlanner2.git
WORKDIR /FramePlanner2
RUN git checkout 570c152d7dd712239ce9d2af6efedc617c56f46d

RUN npm install

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ=Asia/Tokyo

EXPOSE 5173

CMD npm run dev -- --host

# FramePlanner2-docker

This repository has made FramePlanner2 available to Docker.

see also: https://github.com/jonigata/FramePlanner2

## Usage

```
git clone https://github.com/iuill/FramePlanner2-docker.git
cd FramePlanner2-docker
docker build -t frame_planner_2 .
docker run -p 5173:5173 --rm -it frame_planner_2
```

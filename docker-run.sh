docker build -t dec-docker .
docker run -v ${PWD}/app:/workspace/app -it dec-docker /bin/bash
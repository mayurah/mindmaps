# build stage
FROM node
COPY . /src
WORKDIR /src
RUN npm install
RUN npm run build
RUN chmod +x run.sh
# RUN ls -lah /src
# RUN ls -lah /src/dist/
CMD ./run.sh
EXPOSE 80

# run stage
# FROM linuxserver/nginx
# RUN mkdir /mindmap
# WORKDIR /mindmap/
# RUN ls -lah /src
# COPY --from=0 /src/bin /config/www
# EXPOSE 80

# docker push m4yur/mindmaps:

# Build Docker Image from Dockerfile
## docker build https://github.com/mayurah/mindmaps.git#master:.
# docker build . -t mindmaps
# docker run -t -i -p 81:80 mindmaps:latest

## PUSH
# docker login -u m4yur
# docker tag mindmaps m4yur/mindmaps:latest
# docker push m4yur/mindmaps

## PULL
# docker pull m4yur/mindmaps
# docker run -t -i -p 81:80 m4yur/mindmaps:latest
# curl -v loalhost:81
#specify a base image
From node:alpine

#Install some dependency
#
WORKDIR /usr/app

COPY ./package.json ./
RUN npm install
COPY ./ ./
#Default command
CMD ["npm","start"]

# To run docker image
# docker run -p 8080:8080 53f5398e4140
# docker run -it <dockerid> sh(This will open a shell script )
# docker build .(this dot is build context)
# docker build -t dockerlearning/samplewebnode .
# docker exec -it <dockerID> sh




FROM node:18-alpine
#variable to be passed to ENV and EXPOSE
ARG port=6567
ENV PORT=$port
#ROOT dir inside our backend container 
WORKDIR /app/node-backend
#COPY the content of /node-service in our container
COPY /src/node-service .
RUN npm ci
CMD [ "npm", "run", "start" ]
#Make port visible to the host machine
EXPOSE $port 

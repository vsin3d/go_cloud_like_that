FROM node:18-alpine
#ROOT dir inside our frontend container 
WORKDIR /app/react-web-app
#COPY the content of /frontend-webapp in our container
COPY /src/frontend-webapp .
RUN npm ci
CMD [ "npm", "run", "start" ]
EXPOSE 3000
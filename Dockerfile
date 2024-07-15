FROM node:20-alpine

WORKDIR /project

COPY package.json .
RUN npm install
COPY . .

EXPOSE 3000

# TODO: try to make hot reload work in dev env
CMD ["npm", "start"]
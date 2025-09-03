FROM node:22
WORKDIR /usr/src/app

COPY ./next-app ./
RUN npm install
ENV NEXT_PUBLIC_API_URL=http://backend:8000
CMD ["npm", "run", "dev"]
EXPOSE 3000

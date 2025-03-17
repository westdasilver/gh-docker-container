FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.ntrwp.mongodb.net
ENV MONGODB_USERNAME maximilian
ENV MONGODB_PASSWORD eI3R3UfNlJgWJe17

WORKDIR /app

COPY package*.json .

RUN npm install

# 현재 디렉토리(.)의 모든 파일과 폴더를 도커 컨테이너의 작업 디렉토리(/app)로 복사
# package*.json 파일은 이미 앞서 복사되었지만, 나머지 소스코드 파일들을 복사하기 위한 명령어
COPY . .

CMD ["npm", "start"]
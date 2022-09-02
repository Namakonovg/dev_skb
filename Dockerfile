FROM node:13.12.0-alpine	# Использование облегченного образа дляя скорости сборки, использование определенного тега вместо "latest" для исключения обновления базового образа
WORKDIR /app	# создание директории приложения
COPY . /app		
RUN npm install	# образ включает в себя Node.js и npm
ENTRYPOINT ["npm", "run", "prod"]	# можно объеденить в одну инструкцию

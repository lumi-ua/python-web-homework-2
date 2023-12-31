# Docker-команда FROM указывает базовый образ контейнера
# Наш базовый образ - это Linux с предустановленным python
FROM python:3.8.4

ENV APP_HOME .

# Установим рабочую директорию внутри контейнера
WORKDIR $APP_HOME

# Скопируем остальные файлы в рабочую директорию контейнера
COPY . .

# Установим зависимости внутри контейнера
RUN pip install -r requirements.txt


# Запустим наше приложение внутри контейнера
ENTRYPOINT ["python", "./src/assistant.py"]


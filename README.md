```
docker build -t webapp .
docker run -p 63380:63380 --env APP_REDIS_URI=redis://webapp_redis:6379 --env APP_MONGO_URI=mongodb://webapp_mongo:27017/app --env APP_SERVER_PORT=63380 -d webapp
docker ps -a
```

```
docker-compose --verbose up
```

### To create dashboards in monitoring

```
wget -q https://raw.githubusercontent.com/Kentik/docker-monitor/master/Container.json.tmpl
wget -O - -q https://raw.githubusercontent.com/Kentik/docker-monitor/master/create-dashboards.sh | bash -x
```

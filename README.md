```
docker build -t webapp .
docker-compose --verbose up
```

### To create dashboards in monitoring

```
wget -q https://raw.githubusercontent.com/Kentik/docker-monitor/master/Container.json.tmpl
wget -O - -q https://raw.githubusercontent.com/Kentik/docker-monitor/master/create-dashboards.sh | bash -x
```

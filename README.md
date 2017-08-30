### docker build
```
$ docker build -t elasticsearch .
```  

### docker run
```
$ docker run -d -p 9200:9200 -p 9300:9300 --name elasticsearch -e "network.host=0.0.0.0" -e "transport.host=127.0.0.1" -e "xpack.security.enabled=false" -e "xpack.monitoring.enabled=false" elasticsearch
```  

### check elasticsearch run successfully
```
$ curl -X GET 'http://localhost:9200'
```  

#### query example
```
$ curl -X GET 'http://localhost:9200/videos/_search?pretty=true' -d '{"query": {"term": {"tags": "乳" }}}'
```  

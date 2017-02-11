### Docker Automation & Builder Image


Run following code to build image
```
docker build -t automation_builder_image .
```

After building image run following command to run container
``` 
docker run --name automation_builder_container -d -v path/to/your/project/directory:/var/www/html -t -p 8080:80 automation_builder_image
```

if **8080** port not available use any other available port

While *automation_builder_container* container is running run following code to ssh into container
```
docker exec -i -t automation_builder_container /bin/bash
```

If *automation_builder_container* container is not running run following command to start it
```
docker start automation_builder_container
```
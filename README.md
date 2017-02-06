### Docker PHP builder image


Run following code to build image
`docker build -t php_builder_image .`

After building image run following command to run container
`docker run --name php_builder -d -v path/to/your/project/directory:/var/www/html -p 8181:80 php_builder_image`

if **8181** port not available use any other available port

While *php_builder* container is running run following code to ssh into container
`docker exec -i -t php_builder /bin/bash`

If *php_builder* container is not running run following command to start it
`docker start php_builder`
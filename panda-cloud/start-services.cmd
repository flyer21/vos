net start RabbitMQ
net start redisserver1
net start MySQL
start mvn spring-boot:run -f panda-server
start mvn spring-boot:run -f panda-config-server
ping -n 10 127.0.0.1>nul
start mvn spring-boot:run -f panda-services/panda-user-service
start mvn spring-boot:run -f panda-auth
start mvn spring-boot:run -f panda-gateway

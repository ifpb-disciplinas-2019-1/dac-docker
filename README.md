## Criar o arquivo `Dockerfile` da aplicação
```
FROM tomcat
COPY /target/app.war ${CATALINA_HOME}/webapps
```

## Criar uma imagem da aplicação

`docker build -t ricardojob/app:2 .`:  
*`-t`: qual a tag que vamos atribuir a essa imagem*  
*`.`: caminho relativo (ou absoluto) para o arquivo Dockerfile*  

## Executar o container  

`docker run -p 8082:8080 -d --name app ricardojob/app:2`:   
*`-p`: o bind entre a porta do host local com a porta do container*  
*`-d`: o container seja executar em background*  
*`--name`: o nome do container (para identificarmos posteriormente)*  


## Listar as imagens

`docker image ls`

## Listar os containers

`docker container ls`

## Parar o container

`docker stop <container_id | container_name>`

## Executar comandos no container  
Para executarmos comandos necessitamos de executar o comando `docker exec -it <container_id | container_name> <command>`. 

Por exemplo, para termos acesso ao container da aplicação que configuramos podemos fazer:

`docker exec -it app /bin/bash`:  
*`-it`: para termos acesso iterativo ao TTY*  
*`app`: o nome do container que desejamos seja executar determinado comando*  
*`/bin/bash`: o comando que vamos executar no container*  
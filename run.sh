# passo 1: criar o arquivo .war 
mvn clean package
# passo 2: copiar o arquivo .war 
DIR="/Users/job/Documents/dev/servers/apache-tomcat-8"
cp target/app.war  $DIR/webapps
# passo 3: start o tomcat
cd "$DIR/bin" && sh catalina.sh start

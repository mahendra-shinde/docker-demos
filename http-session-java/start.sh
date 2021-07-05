cd $CATALINA_HOME
export hostname=$(hostname)
echo "Using hostname $hostname"
envsubst < /server.tmp > $CATALINA_HOME/conf/server.xml
rm /server.tmp
echo '=================='
echo "JVM Route set "
cat $CATALINA_HOME/conf/server.xml | grep "jvmRoute"
echo '--------------------'
bin/catalina.sh run
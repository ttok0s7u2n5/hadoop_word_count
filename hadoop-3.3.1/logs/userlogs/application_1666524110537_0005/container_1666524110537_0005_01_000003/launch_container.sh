#!/bin/bash

set -o pipefail -e
export PRELAUNCH_OUT="/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003/prelaunch.out"
exec >"${PRELAUNCH_OUT}"
export PRELAUNCH_ERR="/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003/prelaunch.err"
exec 2>"${PRELAUNCH_ERR}"
echo "Setting up env variables"
export JAVA_HOME=${JAVA_HOME:-"/Library/Java/JavaVirtualMachines/jdk-11.0.6.jdk/Contents/Home"}
export HADOOP_COMMON_HOME=${HADOOP_COMMON_HOME:-"/Users/yangheewon/hadoop-3.3.1"}
export HADOOP_HDFS_HOME=${HADOOP_HDFS_HOME:-"/Users/yangheewon/hadoop-3.3.1"}
export HADOOP_CONF_DIR=${HADOOP_CONF_DIR:-"/Users/yangheewon/hadoop-3.3.1/etc/hadoop"}
export HADOOP_YARN_HOME=${HADOOP_YARN_HOME:-"/Users/yangheewon/hadoop-3.3.1"}
export HADOOP_HOME=${HADOOP_HOME:-"/Users/yangheewon/hadoop-3.3.1"}
export PATH=${PATH:-"/usr/bin:/bin:/usr/sbin:/sbin"}
export LANG=${LANG:-"ko_KR.UTF-8"}
export HADOOP_TOKEN_FILE_LOCATION="/tmp/hadoop-yangheewon/nm-local-dir/usercache/yangheewon/appcache/application_1666524110537_0005/container_1666524110537_0005_01_000003/container_tokens"
export CONTAINER_ID="container_1666524110537_0005_01_000003"
export NM_PORT="55990"
export NM_HOST="localhost"
export NM_HTTP_PORT="8042"
export LOCAL_DIRS="/tmp/hadoop-yangheewon/nm-local-dir/usercache/yangheewon/appcache/application_1666524110537_0005"
export LOCAL_USER_DIRS="/tmp/hadoop-yangheewon/nm-local-dir/usercache/yangheewon/"
export LOG_DIRS="/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003"
export USER="yangheewon"
export LOGNAME="yangheewon"
export HOME="/home/"
export PWD="/tmp/hadoop-yangheewon/nm-local-dir/usercache/yangheewon/appcache/application_1666524110537_0005/container_1666524110537_0005_01_000003"
export LOCALIZATION_COUNTERS="0,238093,0,2,2"
export JVM_PID="$$"
export NM_AUX_SERVICE_mapreduce_shuffle="AAA0+gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="
export STDOUT_LOGFILE_ENV="/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003/stdout"
export SHELL="/bin/bash"
export HADOOP_ROOT_LOGGER="INFO,console"
export HADOOP_MAPRED_HOME="${HADOOP_HOME}"
export CLASSPATH="$PWD:$HADOOP_CONF_DIR:$HADOOP_COMMON_HOME/share/hadoop/common/*:$HADOOP_COMMON_HOME/share/hadoop/common/lib/*:$HADOOP_HDFS_HOME/share/hadoop/hdfs/*:$HADOOP_HDFS_HOME/share/hadoop/hdfs/lib/*:$HADOOP_YARN_HOME/share/hadoop/yarn/*:$HADOOP_YARN_HOME/share/hadoop/yarn/lib/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/*:$HADOOP_MAPRED_HOME/share/hadoop/mapreduce/lib/*:job.jar/*:job.jar/classes/:job.jar/lib/*:$PWD/*"
export LD_LIBRARY_PATH="$PWD:$HADOOP_COMMON_HOME/lib/native"
export STDERR_LOGFILE_ENV="/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003/stderr"
export HADOOP_CLIENT_OPTS=""
export MALLOC_ARENA_MAX=""
echo "Setting up job resources"
ln -sf -- "/tmp/hadoop-yangheewon/nm-local-dir/usercache/yangheewon/appcache/application_1666524110537_0005/filecache/11/job.jar" "job.jar"
ln -sf -- "/tmp/hadoop-yangheewon/nm-local-dir/usercache/yangheewon/appcache/application_1666524110537_0005/filecache/13/job.xml" "job.xml"
echo "Copying debugging information"
# Creating copy of launch script
cp "launch_container.sh" "/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003/launch_container.sh"
chmod 640 "/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003/launch_container.sh"
# Determining directory contents
echo "ls -l:" 1>"/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003/directory.info"
ls -l 1>>"/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003/directory.info"
echo "find -L . -maxdepth 5 -ls:" 1>>"/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003/directory.info"
find -L . -maxdepth 5 -ls 1>>"/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003/directory.info"
echo "broken symlinks(find -L . -maxdepth 5 -type l -ls):" 1>>"/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003/directory.info"
find -L . -maxdepth 5 -type l -ls 1>>"/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003/directory.info"
echo "Launching container"
exec /bin/bash -c "$JAVA_HOME/bin/java -Djava.net.preferIPv4Stack=true -Dhadoop.metrics.log.level=WARN   -Xmx820m -Djava.io.tmpdir=$PWD/tmp -Dlog4j.configuration=container-log4j.properties -Dyarn.app.container.log.dir=/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003 -Dyarn.app.container.log.filesize=0 -Dhadoop.root.logger=INFO,CLA -Dhadoop.root.logfile=syslog -Dyarn.app.mapreduce.shuffle.logger=INFO,shuffleCLA -Dyarn.app.mapreduce.shuffle.logfile=syslog.shuffle -Dyarn.app.mapreduce.shuffle.log.filesize=0 -Dyarn.app.mapreduce.shuffle.log.backups=0 org.apache.hadoop.mapred.YarnChild 127.0.0.1 56168 attempt_1666524110537_0005_r_000000_0 3 1>/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003/stdout 2>/Users/yangheewon/hadoop-3.3.1/logs/userlogs/application_1666524110537_0005/container_1666524110537_0005_01_000003/stderr "

while read p;
do
printf "use admin\ndb.changeUserPassword("$p\”,\”<new_password>\”)\nexit" | mongo --authenticationDatabase admin --password <current_password> --username "$p" --host mongodb://<mongo_host_name>:<port> -tls;
done < $1

use mysql;
CHANGE MASTER TO GET_MASTER_PUBLIC_KEY=1;
CREATE USER 'repl'@'%' IDENTIFIED BY 'slavepassword';
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';
# Docker Volume 

Volumes are additional R/W Layers external to running container. Deleting a container would not affect a volume.

Volume mounting uses switch "-v" with syntax:
    docker run -v "hostdir":"guestdir":mode  ... IMAGENAME

Note:
    hostdir is Fully Qualified Directory Path on Host systems
    guestdir is Fully Qualified Directory Path on Container File system
    mode could be RW (default: ReadWrite) or RO (ReadOnly)


## Example:

### For Linux / MiniKube or Cloud VM or Katakoda Lab

    ```bash
    $ mkdir -p db/data
    $ docker run -d 
        -e MYSQL_USER=mahendra -e MYSQL_PASSWORD=pass@1234 -e MYSQL_ROOT_PASSWORD=Pass@1234 
        -e MYSQL_DATABASE=XBankDB -v /home/mahendra/db/data:/var/lib/mysql 
        -p 3306:3306 mysql:5.7
    ```

### For Windows (Docker Desktop)
    
    ```pwsh
    $ mkdir -p c:/db/data
    $ docker run -d 
        -e MYSQL_USER=mahendra -e MYSQL_PASSWORD=pass@1234 -e MYSQL_ROOT_PASSWORD=Pass@1234 
        -e MYSQL_DATABASE=XBankDB -v c:/db/data:/var/lib/mysql 
        -p 3306:3306 mysql:5.7
    ```

> NOTE: Windows would prompt you to enter ADMIN USERNAME & PASSWORD for allowing disk access to HyperV (DockerDesktopVM)

### Common steps for both linux/windows 

    ```
    $ docker top <CONTAINER-ID>
    $ docker logs <CONTAINER-ID>
    $ docker exec -it <CONTAINER-ID> bash
    $ mysql -umahendra -ppass@1234
    SQL> use XBankDB
    SQL> create table account (acc_id int primary key, acc_holder varchar(20));
    SQL> insert into account values (10001, 'Nehru');
    SQL> COMMIT;
    SQL> exit
    $ exit
    $ docker stop <CONTAINER-ID>
    $ docker rm <CONTAINER-ID>
    ```

## Repeating Container creation with same volume host directory path
### For Linux / MiniKube or Cloud VM or Katakoda Lab

    ```bash
    $ mkdir -p db/data
    $ docker run -d 
        -e MYSQL_USER=mahendra -e MYSQL_PASSWORD=pass@1234 -e MYSQL_ROOT_PASSWORD=Pass@1234 
        -e MYSQL_DATABASE=XBankDB -v /home/mahendra/db/data:/var/lib/mysql 
        -p 3306:3306 mysql:5.7
    ```

### For Windows (Docker Desktop)
    
    ```pwsh
    $ mkdir -p c:/db/data
    $ docker run -d 
        -e MYSQL_USER=mahendra -e MYSQL_PASSWORD=pass@1234 -e MYSQL_ROOT_PASSWORD=Pass@1234 
        -e MYSQL_DATABASE=XBankDB -v c:/db/data:/var/lib/mysql 
        -p 3306:3306 mysql:5.7
    ```

### Common steps for Windows/Linux

    ```
    $ docker exec -it <CONTAINER-ID> <cmd>
    $ mysql -umahendra -ppass@1234
    SQL> use XBankDB;
    SQL> select * from account;
    SQL> exit
    $ exit
    ```

## Conclusion

After container was destroyed and re-created, the volume preserved the mysql database!


## Clean-Up

    ```
    $ docker stop <container-id>
    $ docker rm <container-id>
    ```

> NOTE: Please replace every occurrence of <container-id> with ID of your container
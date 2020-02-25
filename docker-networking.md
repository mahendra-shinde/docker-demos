## Container Networking

Docker has Three built in network drivers on linux hosts

1. Host Driver (Single Network 'host')
2. Null Driver (Single Network 'None')
3. Bridge Driver (Single default network 'bridge' )

## Host Network

- No Virtual Container network, bind container directory to host Network.
- Container shared IP Address of host system.
- Docker doesn't allow creating additional host network.

## None Network

- No Virtual Container network, no binding to host network.
- Full isolation.
- Docker doesn't allow creating additional none network.

### Example of None Network

    ```bash
    $ docker run -d --net none --name c1 nginx:alpine
    $ docker inspect c1 
    ### Locate IP Address
    $ docker inspect c1 -f "{{.NetworkSettings.IPAddress}}"
    ## Expected is NO IP Address
    ## Delete the container
    $ docker stop c1
    $ docker rm c1
    ```

## Bridge Network

- Virtual Network "Subnet" with dedicated IP Address range.
- Isolate / Group containers into multiple bridge networks
- Allow Local network / Internet access from inside container.
- Allows User-defined bridge networks created with non-overlapping IP address ranges.

### Creating a new bridge network

1. Create two bridge networks with IP Address ranges.

    ```bash
    $ docker network create b1 -d bridge --subnet 20.0.0.0/16
    $ docker network create b2 -d bridge --subnet 30.0.0.0/16
    $ docker network ls
    ```

2.  Create containers in network `b1` and `b2`

    ```bash
    $ docker run -d --name c1 --net b1 nginx:alpine
    $ docker run -d --name c2 --net b2 nginx:alpine
    $ docker run -d --name c3 --net b2 nginx:alpine
    ```

3.  Get IP Addresses for ALL containers 

    ```
    $ docker inspect c1 -f "{{.NetworkSettings.Networks.b1.IPAddress}}"
    # You should get 20.0.0.2
    $ docker inspect c2 -f "{{.NetworkSettings.Networks.b2.IPAddress}}"
    # You should get 30.0.0.2
    $ docker inspect c3 -f "{{.NetworkSettings.Networks.b2.IPAddress}}"
    # You should get 30.0.0.3
    ```

4.  Try to ping container c3 from container c1 [Impossible]

    ```
    $ docker exec -it c1 sh
    $ ping 30.0.0.3
    $ exit
    ```

5.  Try to ping container c2 from container c3 [Possible]

    ```
    $ docker exec -it c3 sh
    $ ping 30.0.0.2
    $ exit
    ```

6.  Clean-Up

    ```bash
    $ docker stop c1 c2 c3
    $ docker rm c1 c2 c3
    $ docker network rm b1 b2
    ```
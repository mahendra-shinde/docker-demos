# Docker Demo: Setting Up a MySQL Database with Docker

This guide walks you through setting up a MySQL database using Docker. Follow the steps below to create a containerized MySQL instance with a sample schema and data.

---

## Step 1: Create and Navigate to a New Folder

Open a command prompt and create a new folder for your project:

```cmd
mkdir demo5
cd demo5
```

Launch Visual Studio Code in the newly created folder:

```cmd
code .
```

---

## Step 2: Create an SQL File

Create a file named `data.sql` and add the following schema and sample data:

```sql
CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    published_date DATE
);

INSERT INTO books (title, author, published_date) VALUES
('To Kill a Mockingbird', 'Harper Lee', '1960-07-11'),
('1984', 'George Orwell', '1949-06-08'),
('The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10');
```

**Tip:** Ensure your SQL file is saved in the same directory as your Dockerfile.

---

## Step 3: Create a Dockerfile

Create a file named `Dockerfile` and add the following content:

```Dockerfile
FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=Password123
ENV MYSQL_DATABASE=library_db
ENV MYSQL_PASSWORD=Password123
ENV MYSQL_USER=library_user

COPY data.sql /docker-entrypoint-initdb.d/
```

**Best Practice:** Use environment variables to manage sensitive data like passwords. Avoid hardcoding them in production environments.

---

## Step 4: Build the Docker Image

Run the following commands to build your Docker image:

```cmd
cd demo5

docker build -t mysqldb1 .
```

**Tip:** Use descriptive tags for your Docker images to make them easier to identify.

---

## Step 5: Create a New Container Instance

Create and run a new container instance using the image you just built:

```cmd
docker run --name db3 -d -p 3306:3306 mysqldb1
```

**Tip:** Use meaningful names for your containers to simplify management.

---

## Step 6: Test the Container Instance

Access the MySQL database inside the container and verify the `books` table:

```bash
docker exec -it db3 bash
mysql -ulibrary_user -pPassword123    library_db

show tables;
SELECT * FROM books;

EXIT;
EXIT;
```

**Best Practice:** Use `docker logs` to troubleshoot any issues with your container.

---

## Additional Tips

- **Data Persistence:** Use Docker volumes to persist data beyond the lifecycle of the container.
- **Security:** Rotate passwords regularly and use a `.env` file to manage environment variables securely.
- **Cleanup:** Remove unused images and containers to free up disk space:

```cmd
docker stop db3 
docker rm db3
docker rmi mysqldb1
```

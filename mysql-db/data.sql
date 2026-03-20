create table books (
    id int primary key auto_increment,
    title varchar(255) not null,
    author varchar(255) not null,
    published_date date
);

insert into books (title, author, published_date) values
('To Kill a Mockingbird', 'Harper Lee', '1960-07-11'),
('1984', 'George Orwell', '1949-06-08'),
('The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10');
create table librarians(id int primary key not null,name varchar(255) not null,email varchar(255)unique not null,
telephone int unique not null,library_id int unique not null
);
create table authors(name varchar not null,id int primary key not null,email varchar unique not null,bio varchar(255) not null,contact int unique
not null, company_id int not null, Foreign key (company_id) references pulishing_company(id)
);
create table pulishing_company(name varchar(255) not null,id int primary key not null);
create table books(book_id int primary key not null,title varchar(255)unique not null,price int not null
,description varchar not null,publish_date varchar(255) not null,author_id int not null,Foreign key(author_id)references authors(id)
);
create table students(id int primary key not null,name varchar(255) not null,date_of_borrowing varchar not null,contact int not null,
date_of_return varchar not null
);
create table borrowing_details(borrowing_date varchar(255) not null,student_id int not null,Foreign key(student_id)references students(id)

);

 
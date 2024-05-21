CREATE DATABASE Dormitory;

CREATE TABLE dormitory (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    address TEXT
);

CREATE TABLE room (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    capacity INT,
    id_dormitory BIGINT,
    FOREIGN KEY (id_dormitory) REFERENCES Dormitory(id)
);

CREATE TABLE student (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255),
    group_name VARCHAR(255),
    phone VARCHAR(30),
    id_room BIGINT,
    FOREIGN KEY (id_room) REFERENCES Room(id)
);

CREATE TABLE app_for_living (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    date_of_app DATETIME(6),
    request_status VARCHAR(255),
    id_student BIGINT,
    FOREIGN KEY (id_student) REFERENCES Student(id)
);


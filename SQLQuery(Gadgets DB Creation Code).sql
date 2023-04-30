CREATE TABLE Product (
    maker VARCHAR(50),
    model VARCHAR(50) PRIMARY KEY,
    type VARCHAR(50)
);

CREATE TABLE PC (
    code VARCHAR(50) PRIMARY KEY,
    model VARCHAR(50) REFERENCES Product(model),
    speed INT,
    ram INT,
    hd INT,
    cd VARCHAR(10),
    price FLOAT
);

CREATE TABLE Laptop (
    code VARCHAR(50) PRIMARY KEY,
    model VARCHAR(50) REFERENCES Product(model),
    speed INT,
    ram INT,
    hd INT,
    screen FLOAT,
    price FLOAT
);

CREATE TABLE Printer (
    code VARCHAR(50) PRIMARY KEY,
    model VARCHAR(50) REFERENCES Product(model),
    color CHAR(1),
    type VARCHAR(50),
    price FLOAT
);

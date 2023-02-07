-- TODO add more fields, name, email, password etc
CREATE TABLE users (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    role ENUM('manager', 'technician')
);

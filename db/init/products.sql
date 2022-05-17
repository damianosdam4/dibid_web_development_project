CREATE TABLE IF NOT EXISTS products (
	productId INT NOT NULL,
	name VARCHAR(64) NOT NULL,
	imgUrl VARCHAR(64) NOT NULL,
    price INT NOT NULL,
    description VARCHAR(64) NOT NULL,
    productUrl VARCHAR(64) NOT NULL,
	PRIMARY KEY (productId)
);
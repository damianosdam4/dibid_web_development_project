CREATE TABLE IF NOT EXISTS products (
	productId INT AUTO_INCREMENT NOT NULL,
	name VARCHAR(64) NOT NULL,
	imgUrl VARCHAR(64) NOT NULL,
    buyPrice FLOAT,
    firstBid FLOAT NOT NULL,
    numberOfBids INT NOT NULL,
    startingDate INT NOT NULL,
    endingDate INT NOT NULL,
    description VARCHAR(256) NOT NULL,
    location VARCHAR(64) NOT NULL,
    longitude FLOAT,
    latitude FLOAT,
    bidsTableId INT,
    seller VARCHAR(64),
    -- FOREIGN KEY(bidsTableId) REFERENCES bidstable(bidsTableId),
    FOREIGN KEY(seller) REFERENCES users(username),
	PRIMARY KEY (productId)
);
CREATE TABLE IF NOT EXISTS nova_airdefense (
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner VARCHAR(50) NOT NULL,
    location VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO nova_airdefense (owner, location) VALUES ('system', 'default');
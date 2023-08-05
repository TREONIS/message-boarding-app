CREATE TABLE IF NOT EXISTS topics (
	id			INTEGER PRIMARY KEY,
	username	TEXT 	NOT NULL,
	subject		TEXT 	NOT NULL,
	description	TEXT 	NOT NULL,
	modified	INTEGER DEFAULT 0,
	likes		INTEGER DEFAULT 0,
	dislikes	INTEGER DEFAULT 0,
	timestamp   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS messages (
	id			INTEGER PRIMARY KEY,
	username	TEXT,
	message		TEXT,
	reply_to	INTEGER,
	topic		INTEGER,
	modified	INTEGER DEFAULT 0,
	likes		INTEGER DEFAULT 0,
	dislikes	INTEGER DEFAULT 0,
	timestamp   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY(reply_to) REFERENCES message(id),
	FOREIGN KEY(topic) REFERENCES topic(id)
);
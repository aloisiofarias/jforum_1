ALTER TABLE jforum_topics ALTER COLUMN topic_views SET DEFAULT 0;

--
-- Table structure for table 'jforum_mail_integration'
--
CREATE TABLE jforum_mail_integration (
	forum_id INTEGER NOT NULL,
	forum_email VARCHAR(100) NOT NULL,
	pop_username VARCHAR(100) NOT NULL,
	pop_password VARCHAR(100) NOT NULL,
	pop_host VARCHAR(100) NOT NULL,
	pop_port INTEGER DEFAULT 110,
	pop_ssl INTEGER DEFAULT 0
);

CREATE INDEX idx_mi_forum ON jforum_mail_integration(forum_id);

--
-- Table structure for table 'jforum_api'
--
CREATE SEQUENCE jforum_api_seq;
CREATE TABLE jforum_api (
	api_id INTEGER NOT NULL DEFAULT NEXTVAL('jforum_api_seq'),
	api_key VARCHAR(32) NOT NULL,
	api_validity timestamp NOT NULL,
	PRIMARY KEY(api_id)
);
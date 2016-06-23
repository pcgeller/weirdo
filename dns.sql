#setup dns
CREATE TABLE dns (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  tstamp INTEGER(0),
  srccomputer VARCHAR(20),
  computerresolved VARCHAR(20));

LOAD DATA LOCAL INFILE '/home/pcgeller/weirdo/data/dns.txt'
  INTO TABLE dns
  FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'
  (tstamp, srccomputer, computerresolved);

#setup redteam
CREATE TABLE redteam (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
tstamp VARCHAR(30),
userdomain VARCHAR(30),
src VARCHAR(20),
dst VARCHAR(20));

LOAD DATA LOCAL INFILE '/home/pcgeller/weirdo/data/redteam.txt'
  INTO TABLE redteam
    FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n'
    (tstamp, userdomain, src, dst);

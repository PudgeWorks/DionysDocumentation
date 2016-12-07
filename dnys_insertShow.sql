
select nick as 'Username', fname as 'First name', lname as 'Last name', 
bio as 'Description', pic_href as 'Picture URL',url as 'Website',sex as 'IsMale?', age as 'Age', password_hash as 'pw', salt
from dionys.users;

INSERT INTO dionys.users(nick,fname,lname,sex,age,pic_href,url,bio,venue_key,password_hash,salt)
VALUES('EsaNahka','Esa','Nahka',true,18,'www','www','Oispa kaljaa',1,'jgaijgjigsjisdgjiosdgj','asdasd');
INSERT INTO dionys.users(nick,fname,lname,sex,age,pic_href,url,bio,venue_key,password_hash,salt)
VALUES('BigBoobs69','Miina','Kenttä',false,20,'www','www','On kaljaa',21,'jgaijgjigsjisdgjiosdgj','asdasd');

INSERT INTO dionys.patrons_venues(venue_key,users_key)
VALUES((select id from venues where venue_name="Hemingway's"),
(select id from users where fname='Miina'));
INSERT INTO dionys.patrons_venues(venue_key,users_key)
VALUES((select id from venues where venue_name="Bra2"),
(select id from users where nick='EbinMake'));
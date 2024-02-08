/*
	This script and database are to be used only as an aide for doing exercises published on the Wise Owl website.  Neither 
	this script nor the database it generates should be distributed in whole or in part in any format whatsoever without
	the prior written permission of Wise Owl Business Solutions Ltd.  
*/

-- create the database
DROP DATABASE IF EXISTS WorldEvents;
CREATE DATABASE WorldEvents
;

-- switch to it
USE WorldEvents
;

-- create the tables
CREATE TABLE tblCategory (
	CategoryID int  NOT NULL PRIMARY KEY,
	CategoryName nvarchar(255) NULL
)

;
CREATE TABLE tblContinent(
	ContinentID int NOT NULL PRIMARY KEY,
	ContinentName nvarchar(255) NULL
)

;
CREATE TABLE tblCountry(
	CountryID int  NOT NULL PRIMARY KEY,
	CountryName nvarchar(255) NULL,
	ContinentID int NULL
)

;
CREATE TABLE tblEvent(
	EventID int  NOT NULL PRIMARY KEY,
	EventName varchar(8000) NULL,
	EventDetails varchar(1000) NULL,
	EventDate date NULL,
	CountryID int NULL,
	CategoryID int NULL
) 

;


INSERT tblCategory (CategoryID, CategoryName) VALUES (1, 'Politics')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (2, 'Alien life')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (3, 'Exploratio')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (4, 'Natural world')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (5, 'Death and disaster')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (6, 'War and conflict')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (7, 'Sports')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (8, 'Economy')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (9, 'Entertainment and culture')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (10, 'Health and medicine')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (11, 'Love and relationships')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (12, 'Science and technology')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (13, 'Old')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (14, 'Transport')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (15, 'Energy')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (16, 'Royalty and monarchy')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (17, 'Crime and legal')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (18, 'Religio')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (19, 'Educatio')
;
INSERT tblCategory (CategoryID, CategoryName) VALUES (20, 'General')

;

-- add the continents
;
INSERT tblContinent (ContinentID, ContinentName) VALUES (1, 'Asia')
;
INSERT tblContinent (ContinentID, ContinentName) VALUES (2, 'Africa')
;
INSERT tblContinent (ContinentID, ContinentName) VALUES (3, 'Europe')
;
INSERT tblContinent (ContinentID, ContinentName) VALUES (4, 'Australasia')
;
INSERT tblContinent (ContinentID, ContinentName) VALUES (5, 'South America')
;
INSERT tblContinent (ContinentID, ContinentName) VALUES (6, 'North America')
;
INSERT tblContinent (ContinentID, ContinentName) VALUES (7, 'Antarctic')
;
INSERT tblContinent (ContinentID, ContinentName) VALUES (8, 'Not applicable')
;


-- add the countries
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (1, 'Ukraine', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (2, 'France', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (3, 'Germany', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (4, 'Italy', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (5, 'United States', 6)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (6, 'Bosnia and Herzegovina', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (7, 'United Kingdom', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (8, 'Japa', 1)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (9, 'Indonesia', 1)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (10, 'Vietnam', 1)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (11, 'Russia', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (12, 'Switzerland', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (13, 'Space', 8)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (14, 'Argentina', 5)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (15, 'Antarctica', 7)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (16, 'Belgium', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (17, 'Egypt', 2)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (18, 'Ghana', 2)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (19, 'China', 1)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (20, 'Not set', 1)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (21, 'International', 8)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (22, 'Marshall Islands', 4)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (23, 'Iraq', 1)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (24, 'India', 1)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (25, 'South Korea', 1)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (26, 'Nepal', 1)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (27, 'Austria', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (28, 'Hungary', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (29, 'South Africa', 2)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (30, 'Cuba', 6)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (31, 'Zimbabwe', 2)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (32, 'Australia', 4)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (33, 'Swede', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (34, 'Bolivia', 5)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (35, 'Sri Lanka', 1)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (36, 'Spai', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (41, 'Netherlands', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (42, 'Singapore', 1)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (43, 'Vatican City', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (37, 'Ira', 1)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (38, 'Ireland', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (39, 'Luxembourg', 3)
;
INSERT tblCountry (CountryID, CountryName, ContinentID) VALUES (40, 'Lebano', 1)
;

-- add the events
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (1, 'Chernobyl', 'Reactor 4 at a nuclear power plant in Chernobyl, Ukraine exploded, blowing the 1,000 ton cover off the top of the reactor.', CAST('1986-04-26' AS Date), 1, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (2, 'Pearl Harbour', 'Japan launched an attack dubbed ‘Operation Z’ on Pearl Harbour, a United States naval base in Hawaii. The U.S. declared war on Japan the following day, bringing them into World War II.', CAST('1941-12-07' AS Date), 5, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (3, 'World War 1 bega', 'Often referred to as The Great War, World War I resulted in the death of over 16 million combatants and civilians. The catalyst that spurred the outbreak of fighting was the assassination of Archduke Franz Ferdinand of Austria-Hungary in June 1914, which took place in Sarajevo on 28th June, a month earlier.', CAST('1914-07-28' AS Date), 6, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (4, 'World War 1 ends', 'The first world war ended on what is now known as Armistice Day or Remembrance Day.  The armistice was signed in Compiegne in France.', CAST('1918-11-11' AS Date), 2, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (5, 'The UK declares war on Germany', 'Following Germany''s invasion of Poland, the UK''s Prime Minister Neville Chamberlain concluded a speech with the words "I have to tell you now that no such undertaking has been received and that consequently this country is at war with Germany."', CAST('1939-09-03' AS Date), 7, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (6, 'Liberation of Bergen-Belse', 'Up to 60,000 prisoners were liberated by the British 11th Armoured Division, although many subsequently died.', CAST('1945-04-15' AS Date), 3, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (7, 'World War II ends', 'Japanese representatives aboard the USS Missouri surrender, in effect ending World War II.', CAST('1945-09-02' AS Date), 8, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (8, 'Hiroshima', 'The United States dropped an atomic bomb on the city of Hiroshima (Nagasaki followed 3 days later), leading to Japa''s surrender, ending World War II.  At least 129,000 people were killed.', CAST('1945-08-06' AS Date), 8, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (9, 'Asian tsunami', 'An earthquake of magniture 9.1-9.3 occurred, with the epicentre off the west coast of Sumatra, Indonesia, killing 230,000 people in 14 countries.', CAST('2004-12-26' AS Date), 21, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (10, 'Liberation/fall of Saigo', 'The People''s Army of Vietnam and the National Liberation Front of South Vietnam captured the capital of the south of the country, ending the Vietnam War', CAST('1975-04-30' AS Date), 10, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (11, '9/11 attacks', 'Two hijacked planes crashed into the twin towers of the world trade centre, killing over 3,000 people  (among them over 400 firefighters and police officers).', CAST('2001-09-11' AS Date), 5, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (12, 'Brexit vote', 'By a narrow majority Britain votes to leave the European Union (England and Wales voted to leave, although Scotland and Northern Ireland voted to remain).', CAST('2016-06-23' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (13, 'London Olympic games', 'Widely considered a success, the London Olympics started on 27th July with an opening ceremony which included the Spice Girls and a dramatisation of the NHS.', CAST('2012-07-27' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (14, 'Lehman Brothers collapses', 'Financial services firm Lehman Brothers filed for Chapter 11 bankruptcy protection on this date.  The filing remains the largest bankruptcy filing in U.S. history, with Lehman holding over $600 billion in assets.', CAST('2008-09-15' AS Date), 5, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (15, 'Last edition of "Top of the Pops"', 'The last edition of "Top of the Pops" is broadcast.  The show was hosted by Jimmy Savile, subsquently to be disgraced as a serial sex offender.', CAST('2006-07-30' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (16, 'London Eye opens', 'The London Eye is a giant Ferris wheel on the South Bank of the River Thames in London, built to celebrate the millennium (although it opened late).', CAST('2000-03-09' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (17, 'First Harry Potter Book published', 'Harry Potter and the Philosopher''s Stone was first published, the first of an eventual series of 7 by the authoress JK Rowling', CAST('1997-07-30' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (18, 'Teletubbies first broadcast', 'Tinky-Winky, Dipsy, Laa Laa and Po (not forgetting Nu Nu, the vacuum cleaner) first hit the UK''s television screens on this momentous date in history.', CAST('1997-03-31' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (19, 'Channel Tunnel opens', 'The Channel Tunnel was officially opened, one year later than originally planned, by Queen Elizabeth II and the French president, François Mitterrand, in a ceremony held in Calais on this date.', CAST('1994-05-06' AS Date), 2, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (20, 'Premier League starts', 'The first season ended (as it did 11 times subsequently) with Alex Ferguson ’s Mancheser United taking the trophy. Teddy Sheringham finished as top scorer with 22 goals (one for Nottingham Forest , 21 for Spurs ).', CAST('1992-08-15' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (21, 'Margaret Thatcher resigns', 'Rather than face a humiliating second round of the Conservative Party leadership election, Margraret Thatcher bows out after 11 years in government.', CAST('1990-11-22' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (22, 'Coup attempt in Russia', 'The 1991 Soviet coup d''état attempt, also known as the August Putsch or August Coup, was an attempt by members of the Soviet Unio''s government to take control of the country from Soviet president Mikhail Gorbachev.', CAST('1991-08-19' AS Date), 11, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (23, 'Google launched', 'Google filed for incorporation in California on this date, bringing a new verb to the English language.', CAST('1998-09-04' AS Date), 5, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (24, 'Hillsborough', '96 people died in the crowd gathered to watch a football match between Liverpool and Nottingham Forest  Lord Justice Taylor’s report on the disaster subsequently found there had been a series of problems leading to the huge death toll.', CAST('1989-04-15' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (25, 'World Wide Web launched', 'On this date Tim Berners-Lee and Robert Cailliau, a Belgian engineer, issued a formal detailed proposal for a project, the acceptance of which initiated The Web.', CAST('1990-11-12' AS Date), 12, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (26, 'Great Storm of 1987', 'After Michael Fish (the weatherman) memorably dismisses the chances of a severe storm causing problems, Sevenoaks becomes NoOaks and powerful winds cause chaos in the South-East of England.', CAST('1987-10-15' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (27, 'M25 opens', 'The last stage of the M25, Londo''s orbital motorway, opened on this date, ensuring traffic jams for years to come.', CAST('1986-10-29' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (28, 'Live Aid', 'Bob Geldof organises a host of celebrities to play at Wembley Stadium to raise money to alleviate hunger in Africa - by common consent Queen steal the show.', CAST('1985-07-13' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (29, 'Miners'' strike starts', 'Arthur Scargill begins a coal miners'' strike which leads to bitter confrontations between miners and police, most notably at the Orgreave coking works', CAST('1984-06-18' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (30, 'Shergar kidnapped', 'The racehorse Shergar was kidnapped (presumably being held in the same place as Lord Lucan, who disappeared from public life somewhat earlier).', CAST('1983-02-08' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (32, 'Monty Python first broadcast', 'John Cleese, Michael Palin, Terry Jones, Terry Gilliam, Graham Chapman and Eric Idle launch Monty Pytho''s Flying Circus on TV.  They''re all naughty boys!', CAST('1969-10-05' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (33, 'Decimalisatio', 'Britain says goodbye to base 12 currency and thruppeny bits, when 12 old pennies suddenly became worth 5 new ones.', CAST('1971-02-15' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (34, 'Bloody Sunday', 'At a civil rights march in Derry, 30th January, 1972, thirteen people were shot dead (a fourteenth would die months later in hospital).', CAST('1972-01-30' AS Date), 7, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (35, 'Britain joins the EEC', 'On this date, Britain (along with Ireland and Denmark) joined the European Community, as it was then called.  In Britai''s case, temporarily it would seem …', CAST('1973-01-01' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (36, 'Microsoft founded', 'Microsoft ((the first version was hyphenated as Micro-Soft) was founded on this date by Bill Gates (who was 19 at the time) and Paul Allen (who was 22).  Curiously, the company did''t crash and have to be re-booted.', CAST('1975-04-04' AS Date), 5, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (37, 'Fawlty Towers first broadcast', 'John Cleese''s Basil Fawlty entered the UK culture, as did the late Andrew Sachs''s Manuel.  Or should that be "Manuel!"?', CAST('1975-09-19' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (39, 'First test-tube baby', 'Louise Joy Brown born in Oldham, weighing 5lb 12oz.  Patrick Steptoe, a consultant gynaecologist, and Robert Edwards, a research physiologist, had been developing their techniques in the field of in vitro (in glass) fertilisation since the mid-1960s.', CAST('1978-07-25' AS Date), 7, 10)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (40, 'Space Invaders arrive', 'On this date the first Space Invaders Machine arrived in Britain, ready for the forthcoming Amusements Trade Exhibition in London.', CAST('1979-01-22' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (41, 'John Lennon shot', 'Mark Chapman shot John Lennon near the entrance to the Dakota Building in the Upper-West Side of Manhattan, where Lennon lived.', CAST('1980-12-08' AS Date), 5, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (43, 'Argentina invades the Falklands', 'Argentina''s General Galtieri invades the Malvinas (as they are known in Spanish), leading Margaret Thatcher to send a task force to recapture them.', CAST('1982-04-02' AS Date), 14, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (46, 'Thunderbirds are go!', 'The launch of a new era in puppetry.  Which was your favourite Thunderbird rocket?', CAST('1965-09-30' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (47, 'Churchill dies', 'Voted the Greatest Briton of all time, Winnie finally popped his clogs on this date, leading to a massive state funeral.', CAST('1965-01-24' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (49, 'Beatles'' first single', 'Love Me Do reached number 17 in the UK, but ushered in the world''s greatest band.  Surely.', CAST('1962-10-04' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (50, 'The Pill is launched', 'Leading to the sexual revolution, women can control their own conception for the first time.', CAST('1961-12-04' AS Date), 7, 11)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (51, 'First episode of Coronation Street', 'The trumpeter who played the memorable solo on the theme tunetook a one-off fee rather than opting for royalties.  Poor trumpeter, as the Street is still going 65+ years on.', CAST('1960-12-09' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (52, 'M1 opens', 'The first full British motorway opens, leading to the introduction of that great British institution, the service station.', CAST('1959-11-02' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (54, 'The Lord of the Rings published', 'Fans of Bilbo, Frodo, Gollum or even Sauron (less of the last two, perhaps) have cause to celebrate this date.  Haters of overlong films stuffed with CGI effects less so.', CAST('1954-07-21' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (55, 'DNA helix unravelled', 'Francis Crick and James D Watson publish the double helix structure of DNA.  Although James Watso''s autobiography claims all of the credit, the truth is that some of it should also go to Rosalind Franklin of King''s College Londo', CAST('1953-04-25' AS Date), 7, 10)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (58, '1984 published', 'George Orwell predated "I''m a celebrity, get me out of here!" by 60 years or so - you''ll never look at a rat in the same way again.', CAST('1949-06-08' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (60, 'Berlin air-lift begins', 'To get supplies to the American, French and British sectors of Berlin, the allies (excluding Russia, naturally) began flying goods in by air.', CAST('1948-06-26' AS Date), 3, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (61, 'The Windrush docks', 'Almost 500 (mainly Jamaicans and Trinidadians) sailed on the SS Empire Windrush, landing in the UK and immediately wondering a) why it was so cold and b) where all the colours had gone.', CAST('1948-06-22' AS Date), 7, 20)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (62, 'WWII ends in Europe', 'Although the war in the Far East would go on for another 4 months, this date saw the end of war in Europe, with Germany surrendering unconditionally in Reims.', CAST('1945-05-07' AS Date), 2, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (63, 'First edition of Desert Island Discs', 'The greatest radio program ever had its first episode, hosted by its creator Roy Plomley.  The first guest was Vic Oliver, an Austro-American comedian, actor and musician.', CAST('1942-01-29' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (64, 'First Times Crossword', 'A great day in history indeed, as the finest cryptic crossword in the world saw the light of day for the first time.', CAST('1930-02-01' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (65, 'First pylo', 'Where would the "Pylon of the Month" website be without this date?  And more importantly, where would the National Grid be?', CAST('1928-07-14' AS Date), 7, 15)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (66, 'General Strike begins', 'The great General Strike of 1926 began on this day.', CAST('1926-05-03' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (67, 'BBC formed', 'The British Broadcasting Company (as it then was called) came into existence, leading to teletubbies and Doctor Who a few decades later.', CAST('1922-10-18' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (68, 'Women vote for the first time', 'On this date women voted in a General Election for the first time.', CAST('1918-12-14' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (69, 'Russian revolutio', 'Actually the second revolution in a year, as Lenin led the Bolsheviks to power (although a long and bitter civil war followed before the communists gained complete control).', CAST('1917-11-07' AS Date), 11, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (70, 'The Titanic sinks', 'Would we have ever heard of Leonardo di Caprio and Kate Winslet without this event?', CAST('1912-04-15' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (71, 'Captain Oates leaves his tent for the last time', 'Displaying true heroism, Captain Oates goes out for a walk in the polar cold, uttering the famous words that he might be gone for some time.', CAST('1912-03-17' AS Date), 15, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (72, 'Theory of relativity published', 'Albert Einstein gives unruly hair a new cool, publishing his theory of relativity.', CAST('1905-06-06' AS Date), 3, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (73, 'Queen Victoria dies', 'The then longest-serving monarch Queen Victoria died on this date.', CAST('1901-01-22' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (74, 'Labour party formed', 'Leading indirectly to Jeremy Corbyn, the "Labour Representation Committee" first met.', CAST('1900-02-27' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (75, 'Daily Mail launched', 'On one of the sadder days in world history, the Daily Mail began.  It set the tone by campaigning against accepting Jewish refugees from Nazi Germany.', CAST('1896-05-04' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (76, 'Manchester Ship Canal opens', 'To break the monopoly of Liverpool, Manchester businessmen dug a canal which is still used to this day.', CAST('1894-01-01' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (77, 'Preston North End win first league', 'The greatest football team of all time, North End won the first football league.  A pilgrimage to their ground at Deepdale is still a must for the discerning football fan.', CAST('1889-01-04' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (78, 'Alice in Wonderland published', 'Lewis Carroll''s masterpiece - humour, wit, puzzles and a bit of a dodgy back story involving an obsession with Alice Liddell.', CAST('1865-07-04' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (79, 'US Civil War begins', 'After the secession of South Carolina from the Union, conflict became inevitable.  The first shots of the war were fired on this date.', CAST('1861-04-12' AS Date), 5, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (80, 'Charge of the Light Brigade', 'Into the valley of death, rode the 600.  "C’est magnifique, mais ce n’est pas la guerre", said the French field-marshal who watched the charge.', CAST('1854-10-25' AS Date), 1, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (81, 'Marx publishes the Communist manifesto', 'One of the most influential events in history, although whether any society has genuinely adopted communism is doubtful.', CAST('1848-02-21' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (82, 'Jane Eyre published', 'Chick-lit fiction advanced significantly on this date.  "I married him; I hold myself supremely blest".', CAST('1847-10-16' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (83, 'Slavery abolished', 'The disgrace of slavery was officially abolished on this date, after years of campaigning by the likes of William Wilberforce.', CAST('1834-08-01' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (84, 'The Battle of Waterloo', 'Immortalised in Abba''s winning Eurovision Song Contest entry, Waterloo saw (just) the defeat of Napoleon by the Duke of Wellington.', CAST('1815-06-18' AS Date), 16, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (85, 'Rosetta Stone found', 'Bearing the same inscription in three different languages, the Rosetta Stone was uncovered by Napoleo''s army and allowed us to interpret hieroglyphics.', CAST('1799-07-19' AS Date), 17, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (86, 'Storming of the Bastille', 'Thus began the French revolution, leading to the concepts of liberty, equality and fraternity, and much terror besides.', CAST('1789-07-14' AS Date), 2, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (87, 'US colonies declare independence', 'Would history have been different if Britain had treated its colonies more fairly?  Perhaps we''d have missed the first man on the moon, the welcoming of refugees from around the world, and Donald Trump.', CAST('1776-07-04' AS Date), 5, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (88, 'The Wealth of Nations published', 'Adam Smith''s seminal work began the "dismal science" of economics, explaining the division of labour by reference to a needle factory.', CAST('1776-03-09' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (89, 'The Origin of Species published', 'The most influential theory every published?  Even today a good precept of biology is not to bet against Charles Darwi''s research.', CAST('1859-11-24' AS Date), 7, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (90, 'The Y2K bug does''t happe', 'Armies of contract programmers make enough money to keep them in coffee and games consoles, but the millennium bug fails to strike.', CAST('2000-01-01' AS Date), 7, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (91, 'Berlin Wall falls', 'The collapse of communism in Eastern Europe was complete when East Germans started to tear down the wall that had imprisoned them for decades.', CAST('1989-11-09' AS Date), 3, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (92, 'Donald Trump elected', 'The United States shocks the world by electing Donald Trump, a man with (it''s fair to say) illiberal views.', CAST('2016-11-08' AS Date), 5, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (94, 'Ghana becomes independent', 'The state of Ghana, named after the medieval West African empire, becomes an independent country within the Commonwealth of Nations.', CAST('1957-03-06' AS Date), 18, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (95, 'The Matrix released', 'One of the greatest films ever made was released on this date.  And yes, the sequels were rubbish.', CAST('1999-06-11' AS Date), 5, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (96, 'Wise Owl starts', 'Wise Owl Training began life on this date, being run initially from the basement of a house in Chorlton-cum-Hardy in Manchester.  Those were the days!', CAST('1992-02-07' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (97, 'Mao dies', 'Responsible for more deaths than probably anyone else in history, Mao also wrote one of history''s best-sellers - his "Little Red Book".', CAST('1976-09-09' AS Date), 19, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (98, 'The Economist launched', 'The bible of absolute truth on earth was launched on this date (or at least, that''s the impression the Economist would give).', CAST('1843-08-05' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (99, 'First modern triathlo', 'The first modern swim/bike/run event to be called a triathlon was held at Mission Bay, San Diego, California on this date.', CAST('1974-09-25' AS Date), 5, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (100, 'Inventor of glider dies', 'Sir George Cayley, 6th Baronet, was a prolific English engineer who (it is often claimed) invented the glider.', CAST('1857-12-15' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (101, 'Karate included in Olympics', 'On this date he International Olympic Committee''s executive board announced from Lausanne that they were supporting the inclusion of karate in the 2020 Games.', CAST('2016-06-01' AS Date), 12, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (102, 'Comic-Con conference', 'More than 131,000 visitors make the trip to Excel London for MCM London Comic Con, the UK’s biggest celebration of modern pop culture.', CAST('2016-05-27' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (103, 'The world did''t end', 'On this date in history, the world did''t end (although the Mayan long calendar did).', CAST('2012-12-21' AS Date), 21, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (106, 'UN Charter signed', 'The signing of the UN Charter in San Francisco led to the establishment of the United Nations in New York, ensuring that a little corner of America would be forever international.', CAST('1945-06-26' AS Date), 5, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (107, 'First ever atomic bomb exploded', 'First ever atomic bomb exploded in a test in New Mexico (although there were other forms of atomic device before that, such as the Pile at Stagg Field, first critical on 2nd Dec 1942).', CAST('1945-07-16' AS Date), 5, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (108, 'Labour win UK General Electio', 'Clement Attlee is elected to power in a labour landslide, booting Churchill out of office and laying the grounds for the NHS and the welfare state.', CAST('1945-07-26' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (114, 'UN founded', 'United Nations Organisation comes into existence (the charter is ratified by the five permanent members of the Security Council – Republic of China, France, Soviet Union, United Kingdom, and United States – and by a majority of the other 46 signatories)', CAST('1945-10-24' AS Date), 5, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (116, 'Bermuda Triangle legend starts', 'Loss of ''Flight 19'' on a training exercise begins the legend of the Bermuda Triangle.', CAST('1945-12-05' AS Date), 21, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (118, 'First civil flight from Heathrow Airport', 'The first aircraft to take off from Heathrow was a converted Lancaster bomber called Starlight, that flew to Buenos Aires.', CAST('1946-01-01' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (119, 'Bank of England nationalised', 'The Bank was privately owned by stockholders from its foundation in 1694 until it was nationalised in 1946.', CAST('1946-03-01' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (120, 'Iron Curtain used', 'Churchill uses the term ''Iron Curtai'' in a speech in Missouri.', CAST('1946-03-05' AS Date), 5, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (121, 'US starts nuclear tests', 'US starts nuclear tests at Bikini Atoll – hence the name adopted for the garment which ''reveals the most potent forces of nature''.', CAST('1946-07-25' AS Date), 22, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (122, 'Start of Dick Barton on radio', 'Start of Dick Barton, Special Agent on BBC radio – the series ran until March 1951', CAST('1946-10-07' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (123, 'First session of U', 'The first session of the new United Nations Organisation was held in Flushing Meadow, New York.', CAST('1946-10-23' AS Date), 5, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (124, 'Coal Mines nationalised', 'The Labour government of Clement Attlee nationalised the UK''s coal mines, creating the National Coal Board.', CAST('1947-01-01' AS Date), 7, 15)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (125, 'International Organization for Standardization founded', 'Paving the way for a million meetings and reports to discuss standards, the ISO came into being on this date in London.', CAST('1947-02-23' AS Date), 7, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (126, 'IMF founded', 'The International Monetary Fund was created in Bretton Woods in the United States.', CAST('1945-12-27' AS Date), 5, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (127, 'School leaving age raised to 15', 'School leaving age raised to 15 in Britai', CAST('1947-04-01' AS Date), 7, 19)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (128, 'India gains independence', 'India gains independence: the sub-continent partitioned to form India (secular, but with a Hindu majority) and Pakistan (Islamic).', CAST('1947-08-14' AS Date), 21, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (129, 'Sound barrier broke', 'Chuck Yeager becomes the first person to break the sound barrier', CAST('1947-10-14' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (130, 'British military occupation ends in Iraq', 'History repeats itself, as Britain pulls out of Iraq.', CAST('1947-10-26' AS Date), 23, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (131, 'Marriage of Princess Elizabeth', 'Princess Elizabeth (later Elizabeth II) marries Philip Mountbatten in Westminster Abbey.', CAST('1947-11-20' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (132, 'British Railways nationalised', 'The Labour government nationalises the rail industry.', CAST('1948-01-01' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (133, 'Gandhi assassinated in Delhi', 'Mahatma Gandhi died from his assassin Nathuram Vinayak Godse''s bullets during an evening prayer ceremony at Birla House in Delhi. Perched atop a gate of Birla House, Prime Minister Jawaharlal Nehru announced to the world that the “light has gone out of our lives”.', CAST('1948-01-30' AS Date), 24, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (134, 'Marshall Plan signed', 'The Marshall Plan is signed by President Truman for rebuilding the allied countries of Europe (aid had started in 1947 and ended in 1951).', CAST('1948-04-03' AS Date), 21, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (136, 'NHS founded', 'The National Health Service (NHS) begins in Britain.  Who would have thought it would have a starring role in the London Olympics over 60 years later?', CAST('1948-07-05' AS Date), 20, 10)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (138, 'Clothes rationing ends', 'Clothes rationing ends in Britain, as wartime austerity gradually eases.', CAST('1949-03-15' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (139, 'NATO founded', 'Twelve nations sign The North Atlantic Treaty, creating NATO', CAST('1949-04-04' AS Date), 21, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (140, 'The Berlin blockade ends', 'Russia lifts the Berlin blockade, allowing the overland transport of goods to the allied parts of Berlin to resume.', CAST('1949-05-12' AS Date), 3, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (144, 'Korean War starts', 'North Korea (helped by Mao Tse Tung''s China) invaded South Korea, leading to a war which officially ended on 27 Jul 1953, but still rumbles on today.', CAST('1950-06-25' AS Date), 25, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (145, 'Andy Pandy first seen on TV', 'Andy Pandy first appears on BBC TV.  "Andy Pandy''s come to play, la la-la la-la la".', CAST('1950-07-11' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (147, 'Peak District is the first National Park', 'The Peak District becomes the Britai''s first National Park, leading to traffic jams through Glossop which may some day be removed by the building of the Longdendale Bypass …', CAST('1950-12-28' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (148, 'Festival of Britai', 'Festival of Britain and the Royal Festival Hall open on South Bank, Londo', CAST('1951-05-03' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (150, 'Electricity first produced by nuclear power', 'Electricity first produced by nuclear power, from the Experimental Breeder Reactor I in Idaho', CAST('1951-12-20' AS Date), 5, 15)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (151, 'George VI dies; Elizabeth II quee', 'Elizabeth II learns while on holiday in Kenya that she is to be queen (although she probably could''t imagine that she would go on to become Britai''s longest-serving monarch)', CAST('1952-02-06' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (154, 'First commercial jet', 'The first commercial jet airliner service launched, by BOAC Comet between London and Johannesburg', CAST('1952-05-02' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (155, 'Last tram runs in Londo', 'Last tram runs in London (from Woolwich to New Cross) - at least until Croydon re-introduces trams in the 21st century', CAST('1952-07-05' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (156, 'Lynmouth flood disaster', 'More than 100 buildings were destroyed or seriously damaged along with 28 bridges, and 38 cars were washed out to sea. In total, 34 people died, with a further 420 made homeless.', CAST('1952-08-16' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (157, 'DH110 crashes at Farnborough', 'A DH110 crashes at the Farnborough Air Show, killing 26 people', CAST('1952-09-06' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (158, 'John Cobb killed', 'John Cobb killed in an attempt on the world water speed record on Loch Ness', CAST('1952-09-29' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (160, 'Harrow & Wealdstone rail crash', '112 people are killed in the Harrow & Wealdstone rail crash', CAST('1952-10-08' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (161, 'First H Bomb exploded', 'The first H-bomb ever (''Mike'') was exploded by the USA – the mushroom cloud was 8 miles across and 27 miles high. The canopy was 100 miles wide. Radioactive mud fell out of the sky followed by heavy rain. 80 million tons of earth was vaporised.', CAST('1952-11-01' AS Date), 5, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (162, 'Eisenhower is US President', 'Eisenhower sweeps to power as US President', CAST('1952-11-05' AS Date), 5, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (163, 'First UK singles chart', 'The first regular UK singles chart is published by the New Musical Express', CAST('1952-11-14' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (164, 'The Mousetrap opens', 'Agatha Christie''s The Mousetrap opens in London - where it is still running today', CAST('1952-11-25' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (165, 'Great smog hits Londo', 'The great smog renders most of London invisible, leading to the passing of the Clean Air Act', CAST('1952-12-04' AS Date), 7, 10)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (166, 'Floods devastate the East Coast', 'Said to be the biggest civil catastrophe in Britain in the 20th century: severe storm and high tides caused the loss of hundreds of lives.  The effects travelled from the west coast of Scotland round to the south-east coast of England.', CAST('1953-01-31' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (168, 'Death of Stali', 'Iosif Vissarionovich Dzhugashvili, better known as Stalin, died - almost certainly of natural causes - at his Kuntsevo residence 15 km west of Moscow centre.', CAST('1953-03-05' AS Date), 11, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (169, 'Polio vaccine announced', 'Dr. Francis announces the development of a polio vaccine to a crowd of scientists and reporters at the University of Michiga''s Rackham Auditorium, concluding his two-year national field trials of the poliomyelitis vaccine developed by his former student, Jonas Salk.', CAST('1953-03-26' AS Date), 5, 10)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (170, 'Winston Churchill knighted', '"Winnie" becomes Sir Winston Churchill', CAST('1953-04-24' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (172, 'Everest conquered', 'Edmund Hillary and Tenzing Norgay climb Mount Everest for the first time.', CAST('1953-05-29' AS Date), 26, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (173, 'Coronation of Elizabeth II', 'Elizabeth II is crowned queen of England, a post she was to hold for a fair few years.', CAST('1953-06-02' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (174, 'End of the Korean War', 'The 1950-53 Korean War ended in an armistice, with neither side able to claim outright victory. Decades on, the truce is still all that technically prevents North Korea and the US - along with its ally South Korea - resuming the war, as no peace treaty has ever been signed.', CAST('1953-07-27' AS Date), 25, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (177, 'Piltdown Man skull declared a hoax', 'The Piltdown Man skull is declared a hoax by the Natural History Museum.  The identity of the Piltdown forger remains unknown.', CAST('1953-11-21' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (178, 'Hungary win 6-3 at Wembley Stadium', 'Hungary becomes the first football team outside the British Isles to beat England at home, winning 6-3 at Wembley Stadium.', CAST('1953-11-25' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (179, 'First sub 4 minute mile', 'Roger Bannister becomes the first man to run a mile in under 4 minutes (3 minutes 59.4 secs, to be exact)', CAST('1954-05-06' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (180, 'Rock Around the Clock released', 'Bill Haley and the Comets release Rock Around the Clock', CAST('1954-05-10' AS Date), 5, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (182, 'First BBC news', 'The BBC broadcasts its first television news bulleti', CAST('1954-07-05' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (183, 'First atomic powered sumbmarine', 'The USS Nautilus is commissioned - the world''s first nuclear powered submarine', CAST('1954-09-30' AS Date), 5, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (184, 'Anthony Eden becomes Prime Minister', 'Anthony Eden becomes Prime Minister, having succeeded Winston Churchill as leader of the Conservatives', CAST('1955-04-07' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (186, 'Allied occupation of Austria ends', 'The allied occupation of Austria (after World War 2) ends', CAST('1955-07-27' AS Date), 27, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (187, 'Commercial TV starts in Britai', 'Commercial TV starts in Britain (the first advert was for Gibbs SR toothpaste).  BBC Radio kills off Grace Archer in retaliation.', CAST('1955-09-22' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (188, 'Radiotelephony spelling alphabet introduced', 'Originally developed by the International Civil Aviation Organization, the radiotelephony spelling alphabet was introduced (Alpha, Bravo, Charlie, Delta, Echo ...).', CAST('1956-03-01' AS Date), 21, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (189, 'Premium Bonds introduced', 'Premium Bonds launched – the first prizes were drawn on 1 Jun 1957', CAST('1956-04-17' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (190, 'Eurovision Song Contest launched', 'The first Eurovision Song Contest is held in Lugano, Switzerland – won by the host nation.', CAST('1956-05-24' AS Date), 12, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (191, '3rd class travel abolished on BR', '3rd class travel abolished on British Railways (who renamed ''Third Class'' as ''Second Class'', which had been abolished in 1875 leaving just First and Third Class)', CAST('1956-06-03' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (193, 'Hungarian uprising', 'Hungarians protest against the Soviet occupation (the protest was crushed on 4th November)', CAST('1956-10-23' AS Date), 28, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (194, 'Britain and France invade Suez', 'Israel invades Egypt to regain western control of the Suez Canal, followed by Britain and France.  Political pressure from the United States, the Soviet Union, and the United Nations led to a withdrawal by the three invaders.', CAST('1956-10-31' AS Date), 17, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (196, 'Harold Macmillan becomes Prime Minister', 'Harold Macmillan, the first Earl of Stockton, becomes Conservative Prime Minister', CAST('1957-01-11' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (197, 'BBC TV broadcasts Six-Five Special', 'BBC TV started to broadcast Six-Five Special, breaking the ''Toddlers'' Truce'' of no broadcasting between 6 and 7pm', CAST('1957-02-16' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (198, 'Suez canal reopened', 'Egypt reopens the Suez Canal', CAST('1957-03-08' AS Date), 17, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (199, 'EEC founded', 'The Treaty of Rome creates a European Economic Community (EEC) of six countries: France, West Germany, Italy, Belgium, Holland and Luxembourg, becoming operational in January 1958', CAST('1957-03-25' AS Date), 21, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (201, 'Britain explodes first H bomb', 'Britain explodes her first hydrogen bomb, at Christmas Island', CAST('1957-05-15' AS Date), 21, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (203, 'West Side Story opens', 'West Side Story opens in New York', CAST('1957-09-26' AS Date), 5, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (204, 'Sputnik I launched by Soviet Unio', 'Sputnik I launched by Soviet Union - the world''s first artificial satellite', CAST('1957-10-04' AS Date), 13, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (205, 'Sputnik 2 launched by Soviet Unio', 'Sputnik 2 launched by Soviet Union, carrying a dog (''Laika'') into sapce', CAST('1957-11-03' AS Date), 13, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (206, 'Lewisham rail disaster', '90 people are killed as two trains collide in thick fog and a viaduct collapses on top of them.', CAST('1957-12-04' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (208, 'Munich air disaster', '23 people including many Manchester United team members were killed when flight 609 crashed on its third attempt to take off from a slush-covered runway at Munich-Riem Airport, West Germany.', CAST('1958-02-06' AS Date), 3, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (209, 'CND launched', 'The Campaign for Nuclear Disarmament was launched', CAST('1958-02-25' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (211, 'Velcro trade mark registered', 'Swiss electrical engineer George de Mestral invented his first touch fastener when, in 1941, he went for a walk in the woods and wondered if the burrs that clung to his trousers — and dog — could be turned into something useful.', CAST('1958-05-13' AS Date), 21, 17)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (212, 'Charles created Prince of Wales', 'Queen Elizabeth''s eldest child, Charles, is created Prince of Wales', CAST('1958-07-26' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (213, 'USS Nautilus travels under the polar ice cap', 'The USS Nautilus becomes the first submarine to complete a submerged transit of the North Pole', CAST('1958-08-03' AS Date), 21, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (214, 'Charles de Gaulle establishes Fifth Republic', 'Charles de Gaulle establishes the Fifth Republic in France – and is elected President on 21 December', CAST('1958-10-05' AS Date), 2, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (215, 'First commercial flight of Boeing 707', 'First commercial flight of Boeing 707 (from New York to Paris)', CAST('1958-10-26' AS Date), 5, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (216, 'Inauguration of STD calls', 'Inauguration of Subscriber Trunk Dialling (STD) in Britain (completed in 1979)', CAST('1958-12-05' AS Date), 7, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (217, 'Preston by-pass opens', 'Preston by-pass opens – the UK''s first stretch of motorway', CAST('1958-12-05' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (218, 'Buddy Holly dies', '''The Day The Music Died'' – a plane crash kills Buddy Holly, Ritchie Valens, and The Big Bopper near Clear Lake, Iowa', CAST('1959-02-03' AS Date), 5, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (220, 'St Lawrence Seaway opens', ' The system of locks, canals and channels in Canada and the United States permitting ocean-going vessels to travel from the Atlantic Ocean to the Great Lakes of North America opens', CAST('1959-04-25' AS Date), 21, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (222, 'Hawaii becomes 50th State', 'Hawaii becomes 50th State of the USA, rendering Barack Obama''s future birthplace indubitably America', CAST('1959-08-21' AS Date), 5, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (224, 'Postcodes introduced', 'Postcodes introduced in Britai', CAST('1959-10-03' AS Date), 7, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (226, 'Macmillan ''wind of change'' speech', 'Harold Macmillan makes his famous ''wind of change'' speech in South Africa', CAST('1960-02-03' AS Date), 29, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (227, 'New £1 notes issued', 'New £1 notes are issued by the Bank of England', CAST('1960-03-17' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (228, 'Last steam locomotive named', 'The last steam locomotive of British Railways named', CAST('1960-03-18' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (229, 'Francis Chichester arrives in New York', 'Francis Chichester arrives in New York aboard Gypsy Moth II (took 40 days), winning the first single-handed transatlantic yacht race which he co-founded', CAST('1960-07-21' AS Date), 5, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (231, 'MoT tests introduced', 'MoT tests on motor vehicles introduced', CAST('1960-09-12' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (232, 'Nikita Khrushchev disrupts the U', 'Nikita Khrushchev disrupts the United Nations General Assembly with a number of angry outbursts', CAST('1960-09-29' AS Date), 21, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (234, 'Lady Chatterley''s Lover case', 'Penguin Books found not guilty of obscenity in the Lady Chatterley''s Lover case', CAST('1960-11-02' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (235, 'Farthing ceases to be legal tender', 'The farthing (representing one quarter of an old penny) ceases to be legal tender in the UK', CAST('1961-01-01' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (236, 'JFK becomes US President', '"Ask not what your country can do for you …" - John F Kennedy becomes the 35th President of the United States', CAST('1961-01-20' AS Date), 5, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (237, 'First US Polaris submarines', 'The first US Polaris submarines arrive at Holy Loch', CAST('1961-03-08' AS Date), 5, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (240, 'Yuri Gagarin first man in space', 'Yuri Gagarin becomes the first man in space – followed shortly afterwards by Alan Shepard on 5th May', CAST('1961-04-12' AS Date), 13, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (241, 'Census results', 'Census returns gives the population of England and Wales at 46 million, Scotland and 5.1 millions and Northern Ireland at 1.4 millionM', CAST('1961-04-23' AS Date), 7, 20)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (242, 'Betting shops legal', 'Betting shops become legal in Britai', CAST('1961-05-01' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (243, 'JFK announces space goal', 'John F Kennedy announces his goal to put a "man on the moon" before the end of the decade', CAST('1961-05-25' AS Date), 13, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (244, 'Volcanic eruption on Tristan da Cunha', 'Volcanic eruption on Tristan da Cunha – the whole population is evacuated to Britai', CAST('1961-10-10' AS Date), 21, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (245, 'Consecration of new Coventry Cathedral', 'Consecration of new Coventry Cathedral (the old one was destroyed in the WW2 blitz) accompanied by the Britten War Requiem', CAST('1962-05-25' AS Date), 7, 18)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (246, 'First nuclear generated electricity', 'First nuclear generated electricity is supplied to the National Grid (from Berkeley, Glos)', CAST('1962-06-15' AS Date), 7, 15)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (247, 'Telstar launched', 'First TV transmission between US and Europe (Telstar) – first live broadcast on 23 July', CAST('1962-07-10' AS Date), 21, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (248, 'Marilyn Monroe found dead', 'Marilyn Monroe (aka Norma Jean Baker) is found dead in her bedroom', CAST('1962-08-05' AS Date), 5, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (249, 'Cuba missile crisis', 'The Cuba missile crisis takes the world to the brink of nuclear war', CAST('1962-10-24' AS Date), 30, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (251, 'Beeching Report', 'The Beeching Report on British Railways (the ''Beeching Axe'') recommends the closure of many lines', CAST('1963-03-27' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (252, 'John Profumo resigns', 'Secretary of State for War John Profumo resigns in a sex scandal', CAST('1963-06-05' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (253, 'The "red telephone" link established', 'The "red telephone" link is established between Soviet Union and United States following the Cuban Missile Crisis', CAST('1963-06-20' AS Date), 21, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (255, 'Great Train Robbery', '''Great Train Robbery'' on Glasgow to London mail trai', CAST('1963-08-08' AS Date), 7, 17)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (256, 'Martin Luther King speech', 'Somehow Donald Trump''s "Lock her up" does''t have quite the same gravitas as this call for equal rights in the United States.', CAST('1963-08-28' AS Date), 5, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (257, 'Fylingdales operational', 'Fylingdales (Yorks) early warning system operational', CAST('1963-09-17' AS Date), 7, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (260, 'President Kennedy assassinated', 'Providing endless ammunition for conspiracy theorists, JFK was shot by Lee Harvey Oswald in Dallas, Texas.  Or was he?', CAST('1963-11-22' AS Date), 5, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (261, 'First episode of Dr Who', 'The first episode of Dr Who is broadcast on BBC TV', CAST('1963-11-23' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (262, 'First ''Top of the Pops''', 'First ''Top of the Pops'' on BBC TV', CAST('1964-01-01' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (263, 'The Beatles arrive in the US', 'The Beatles arrive on their first visit to the United States', CAST('1964-02-07' AS Date), 5, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (264, 'Cassius Clay beats Sonny Listo', 'Cassius Clay (Muhammad Ali) beats Sonny Liston in Miami Beach', CAST('1964-02-25' AS Date), 5, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (265, 'First GLC electio', 'First Greater London Council (GLC) electio', CAST('1964-04-09' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (266, 'BBC2 TV starts', 'BBC2 TV starts -  Play School is the first programme to be shown officially on the channel.', CAST('1964-04-21' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (267, 'Match of the Day starts', 'Match of the Day starts on BBC2', CAST('1964-08-22' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (268, 'Forth road bridge opens', 'The Forth road bridge opens - presumably with fresh paint', CAST('1964-09-04' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (269, 'The Sun newspaper founded', 'The Sun newspaper is founded in Britain, replacing the Daily Herald', CAST('1964-09-15' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (270, 'First US raids against North Vietnam', 'The first US raids are made against North Vietnam, beginning the Vietnam War', CAST('1965-02-07' AS Date), 10, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (271, 'First walk in space', 'Cosmonaut Aleksei Leonov becomes the first man to ''walk'' in space', CAST('1965-03-18' AS Date), 13, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (277, 'North Sea oil found', 'Oil / natural gas is struck by BP in the North Sea', CAST('1965-09-21' AS Date), 7, 15)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (278, 'Post Office Tower opens', 'The iconic Post Office Tower becomess operational in Londo', CAST('1965-10-08' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (279, 'Death penalty for murder suspended', 'Death penalty for murder suspended in Britain for a five-year trial period, and then abolished 18 Dec 1969', CAST('1965-10-28' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (280, 'UDI in Rhodesia', 'Ian Smith''s Unilateral Declaration of Indepence in Rhodesia (now Zimbabwe)', CAST('1965-11-11' AS Date), 31, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (281, '70mph speed limit introduced', 'A 70mph speed limit comes into force on British roads', CAST('1965-12-22' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (283, 'Australia converts from £ to $', 'The Australian dollar is introduced, replacing the pound', CAST('1966-02-14' AS Date), 32, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (285, 'The Times prints news on front page', 'The Times begins to print news on its front page in place of classified advertisements', CAST('1966-05-03' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (287, 'World Cup won by England at Wembley', 'World Cup won by England at Wembley (4-2 in extra time v West Germany). They think it''s all over … and it was, as England have''t won the World Cup since.', CAST('1966-07-30' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (288, 'First Severn road bridge opens', 'The first Severn road bridge opens', CAST('1966-09-08' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (289, 'Aberfan disaster', 'Aberfan disaster – a slag heap slip kills 144, including 116 childre', CAST('1966-10-21' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (291, 'Donald Campbell dies', 'Donald Campbell dies attempting to break his world water speed record on Conniston Water – his body and Bluebird recovered in 2002', CAST('1967-01-04' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (292, 'Apollo launch pad test fire', 'Three US astronauts are killed in a fire during Apollo launch pad test', CAST('1967-01-27' AS Date), 5, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (293, 'Torrey Canyon oil tanker disaster', 'Torrey Canyon oil tanker runs aground off Lands End – first major oil spill', CAST('1967-03-18' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (294, 'Celtic win the European Cup', 'Celtic become the first British team to win the European Cup', CAST('1967-05-25' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (295, 'Francis Chichester arrives in Plymouth', 'Francis Chichester arrives in Plymouth after solo circumnavigation in Gipsy Moth IV (he was knighted 7th July at Greenwich by the queen using the sword with which Elizabeth I had knighted Sir Francis Drake four centuries earlier)', CAST('1967-05-28' AS Date), 7, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (296, 'First withdrawal from a cash dispenser (ATM)', 'First withdrawal from a cash dispenser (ATM) in Britain – at the Enfield branch of Barclays', CAST('1967-06-27' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (297, 'First colour TV', 'First colour television in Britai', CAST('1967-07-01' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (298, 'Public Record Act', 'Public Record Act – records now closed for only 30 years (but the census is still closed for 100 years)', CAST('1967-07-13' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (301, 'Sweden drives on the right', 'Sweden changes the rules of the road overnight to drive on right', CAST('1967-09-03' AS Date), 33, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (302, 'QE2 launched', 'The QE2 is launched on Clydebank', CAST('1967-09-20' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (303, 'Queen Mary last transatlantic voyage', 'Queen Mary arrives Southampton at end of her last transatlantic voyage', CAST('1967-09-27' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (304, 'BBC Radios 1, 2, 3 & 4 ope', 'BBC Radios 1, 2, 3 & 4 open – first record played on Radio 1 was the controversial Flowers in the Rain by ''The Move''', CAST('1967-09-30' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (305, 'Introduction of majority verdicts', 'Introduction of majority verdicts in English courts', CAST('1967-10-05' AS Date), 7, 17)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (306, 'Che Guevara killed in Bolivia', 'Che Guevara killed in Bolivia – and becomes a cult hero', CAST('1967-10-09' AS Date), 34, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (307, 'Russian spacecraft Venus IV', 'Russian spacecraft Venus IV became first successful probe to perform in-place analysis of the environment of another planet', CAST('1967-10-18' AS Date), 13, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (308, 'First human heart transplant', 'First human heart transplant (in South Africa by Christiaan Barnard)', CAST('1967-12-03' AS Date), 29, 10)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (309, 'British Standard Time introduced', 'British Standard Time introduced – Summer Time becomes permanent - the UK reverts to GMT in October 1971', CAST('1968-02-18' AS Date), 7, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (310, 'London Bridge sold', 'London Bridge sold (and eventually moved to Arizona) – the modern London Bridge, built around it as it was demolished, was opened in Mar 1973', CAST('1968-04-18' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (311, 'Enoch Powell ''Rivers of Blood'' speech', 'Enoch Powell''s famous ''Rivers of Blood'' speech on immigratio', CAST('1968-04-20' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (313, 'Student riots in Paris', 'Student riots in Paris', CAST('1968-05-10' AS Date), 2, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (314, 'Manchester United win the European Cup', 'Manchester United first English club to win the European Cup', CAST('1968-05-29' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (315, 'Robert F Kennedy shot', 'Robert F Kennedy shot – dies next day', CAST('1968-06-05' AS Date), 5, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (316, 'Pope condemns birth control', 'Papal encyclical condemns all artificial forms of birth control', CAST('1968-07-29' AS Date), 21, 11)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (317, 'Last steam passenger train service', 'Last steam passenger train service runs in Britain (Carlisle–Liverpool)', CAST('1968-08-11' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (321, 'Beginning of troubles', 'The beginning of disturbances in N Ireland', CAST('1968-10-05' AS Date), 7, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (322, 'The Beatles'' last public performance', 'The Beatles'' last public performance, on the roof of Apple Records in Londo', CAST('1969-01-30' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (323, 'Maiden flight of Concorde', 'Maiden flight of Concorde, at Toulouse', CAST('1969-03-02' AS Date), 2, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (324, 'Victoria Line tube opens', 'The Victoria Line tube opens in Londo', CAST('1969-03-07' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (325, 'Voting age lowered to 18', 'The voting age is lowered from 21 to 18', CAST('1969-04-17' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (326, 'Maiden voyage of QE2', 'The maiden voyage of the liner Queen Elizabeth 2 (QE2)', CAST('1969-05-02' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (327, 'Investiture of Prince Charles', 'Investiture of Prince Charles as Prince of Wales at Caernarfon Castle', CAST('1969-07-01' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (328, 'First men land on the moo', 'Apollo 11 – First men land on the moon (Neil Armstrong & Buzz Aldrin)', CAST('1969-07-20' AS Date), 13, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (330, 'Civil disturbances in Ulster', 'Civil disturbances in Ulster – Britain sends troops to support civil authorities', CAST('1969-08-14' AS Date), 7, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (331, 'Woodstock Music Festival', 'Woodstock Music Festival in NY State attracts 300,000 fans', CAST('1969-08-15' AS Date), 5, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (334, 'Apollo 12 – second manned landing on the moo', 'Apollo 12 – second manned landing on the moon (Charles Conrad & Alan Bean)', CAST('1969-11-19' AS Date), 13, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (335, 'Death penalty for murder abolished in Britai', 'Death penalty for murder abolished in Britain (had already been suspended since Oct 1965)', CAST('1969-12-18' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (337, 'Apollo 13 launched', 'Apollo 13 launched – oxygen tank explosion aborted the moon landing mission two days later – successfully returned to Earth on 17 Apr', CAST('1970-04-11' AS Date), 13, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (339, 'Edward Heath becomes Prime Minister', 'Edward Heath becomes Prime Minister', CAST('1970-06-19' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (340, 'Damages awarded to Thalidomide victims', 'Damages awarded to Thalidomide victims', CAST('1970-07-30' AS Date), 7, 10)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (341, 'First Glastonbury Festival held', 'First Glastonbury Festival held', CAST('1970-09-19' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (342, 'Ten shilling note goes out of circulatio', 'Ten shilling note (50p after decimalisation) goes out of circulation in Britai', CAST('1970-11-20' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (344, 'Open University starts', 'Open University starts', CAST('1971-01-03' AS Date), 7, 19)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (346, 'Internment without trial', 'Internment without trial introduced in N Ireland', CAST('1971-08-09' AS Date), 7, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (348, 'Parliament votes to join Common Market', 'Parliament votes to join Common Market (joined 1973)', CAST('1971-10-28' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (349, 'Mariner 9 orbits Mars', 'Mariner 9, becomes the first spacecraft to orbit another planet (Mars)', CAST('1971-11-13' AS Date), 13, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (352, 'Ceylon changes its name to Sri Lanka', 'Ceylon changes its name to Sri Lanka', CAST('1972-05-22' AS Date), 35, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (356, 'Last manned moon mission, Apollo 17, launched', 'Last manned moon mission, Apollo 17, launched – crew take the ''Blue marble'' photograph of earth', CAST('1972-12-07' AS Date), 13, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (358, 'Vietnam ceasefire agreement signed', 'Vietnam ceasefire agreement signed', CAST('1973-01-27' AS Date), 10, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (359, 'London Bridge opened', 'Modern London Bridge opened by the Quee', CAST('1973-03-17' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (360, 'VAT introduced', 'VAT introduced in Britai', CAST('1973-04-01' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (361, 'First call made on mobile', 'First call made (in New York) on a portable cellular phone', CAST('1973-04-03' AS Date), 5, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (363, 'Concorde crosses Atlantic', 'Concorde makes its first non-stop crossing of the Atlantic in record-breaking time', CAST('1973-09-26' AS Date), 21, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (364, 'Yom Kippur War', 'Yom Kippur War precipitates world oil crisis', CAST('1973-10-06' AS Date), 21, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (365, 'Marriage of Princess Anne', 'Marriage of Princess Anne and Captain Mark Phillips in Westminster Abbey', CAST('1973-10-14' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (366, 'Sydney Opera House opens', 'Sydney Opera House opens', CAST('1973-10-22' AS Date), 32, 20)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (367, 'Miners strike and three-day week', 'Miners strike and oil crisis precipitate ''three-day week'' (till 9 Mar 1974) to conserve power', CAST('1973-12-31' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (368, 'Watergate scandal', 'President Nixon resigns over Watergate scandal', CAST('1974-08-08' AS Date), 5, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (369, 'Lord Lucan disappears', 'Lord Lucan disappears', CAST('1974-11-07' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (370, 'Birmingham pub bombings', 'Birmingham pub bombings by the IRA', CAST('1974-11-21' AS Date), 7, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (371, 'Margaret Thatcher becomes Tory leader', 'Margaret Thatcher becomes leader of Conservative party (in opposition)', CAST('1975-02-11' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (372, 'Moorgate tube crash in Londo', 'Moorgate tube crash in London – over 43 deaths, greatest loss of life on the Underground in peacetime. The cause of the incident was never conclusively determined', CAST('1975-02-28' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (373, 'Charlie Chaplin knighted', 'Charlie Chaplin knighted', CAST('1975-03-04' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (375, 'UK votes to stay in EEC', 'UK votes in a referendum to stay in the European Community.  This time, anyway.', CAST('1975-06-05' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (376, 'Suez canal reopens', 'Suez canal reopens (after 8 years closure)', CAST('1975-06-05' AS Date), 17, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (377, 'Arthur Ashe wins Wimbledo', 'Arthur Ashe wins Wimbledon singles title', CAST('1975-07-05' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (378, 'American Apollo and Soviet Soyuz spacecraft dock in orbit', 'American Apollo and Soviet Soyuz spacecraft dock in orbit', CAST('1975-07-17' AS Date), 13, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (379, '''Yorkshire Ripper'' commits his first murder', '''Yorkshire Ripper'' commits his first murder', CAST('1975-10-29' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (380, 'First North Sea oil comes ashore', 'First North Sea oil comes ashore', CAST('1975-11-03' AS Date), 7, 15)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (381, 'General Franco dies in Spai', 'General Franco dies in Spain; Juan Carlos declared King', CAST('1975-11-20' AS Date), 36, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (383, 'Equal Pay Act and Sex Discrimination Act', 'Equal Pay Act and Sex Discrimination Act come into force', CAST('1975-12-27' AS Date), 7, 17)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (384, 'Concorde enters service', 'Concorde enters supersonic passenger service', CAST('1976-01-21' AS Date), 21, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (385, 'Apple Computer formed', 'Apple Computer formed by Steve Jobs and Steve Wozniak', CAST('1976-04-01' AS Date), 5, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (386, 'Drought Act 1976 comes into force', 'Drought Act 1976 comes into force — the long, hot summer', CAST('1976-08-06' AS Date), 7, 4)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (387, 'Lib-Lab pact', 'The short-lived pact between the Liberal and Labour parties is made', CAST('1977-03-23' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (388, 'Red Rum wins a third Grand National', 'Red Rum wins a third Grand National', CAST('1977-04-02' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (389, 'Star Wars released', 'George Lucas'' film Star Wars released', CAST('1977-05-25' AS Date), 5, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (390, 'New road speed limits', 'Road speed limits: 70mph dual roads; 60mph single', CAST('1977-06-01' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (391, 'Apple II goes on sale', 'Apple II, the first practical personal computer, goes on sale', CAST('1977-06-05' AS Date), 5, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (392, 'Quee''s Silver Jubilee celebrations', 'Quee''s Silver Jubilee celebrations in Londo', CAST('1977-06-07' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (393, 'Virginia Wade wins Wimbledo', 'Virginia Wade wins the Ladies Singles title at Wimbledo', CAST('1977-06-30' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (394, 'Elvis Presley dies', 'Elvis Presley, the King of Rock and Roll, dies - spawning a myriad impersonators', CAST('1977-08-16' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (395, 'Eradication of smallpox declared', 'Eradication of smallpox world-wide declared by WHO (certified in 1979)', CAST('1977-10-26' AS Date), 21, 10)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (397, 'Broadcast of proceedings in Parliament starts', 'Regular broadcast of proceedings in Parliament starts', CAST('1978-04-08' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (400, 'Pope John Paul II elected', 'Pope John Paul II elected – a Pole, and first non-Italian for 450 years – died 2 Apr 2005', CAST('1978-10-15' AS Date), 43, 18)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (401, 'Publication of The Times suspended', 'Publication of The Times suspended – industrial relations problems (until 13 Nov 1979)', CAST('1978-11-30' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (402, 'Ayatollah Khomeini returns to Ira', 'Ayatollah Khomeini returns to Ira', CAST('1979-02-01' AS Date), 37, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (403, 'Devolution votes', '32.5% of Scots vote in favour of devolution (40% needed) – Welsh vote overwhelmingly against', CAST('1979-03-01' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (404, 'Airey Neave killed', 'Airey Neave killed by a car bomb at Westminster', CAST('1979-03-30' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (406, 'Margaret Thatcher becomes Prime Minister', 'Margaret Thatcher becomes first woman UK Prime Minister', CAST('1979-05-04' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (407, 'Sony introduces the Walkma', 'Sony introduces the Walkman personal stereo', CAST('1979-07-01' AS Date), 21, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (408, 'Lord Mountbatten killed', 'Lord Mountbatten and 3 others killed in bomb blast off coast of Sligo, Ireland', CAST('1979-08-27' AS Date), 38, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (409, 'ILEA votes to abolish corporal punishment', 'ILEA votes to abolish corporal punishment in its schools', CAST('1979-09-18' AS Date), 7, 19)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (411, 'Lancaster House agreement', 'Lancaster House agreement to give Southern Rhodesia independence (became Zimbabwe on 18 Apr 1980)', CAST('1979-12-21' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (412, 'Death of President Tito of Yugoslavia', 'Death of President Tito of Yugoslavia', CAST('1980-05-04' AS Date), 21, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (413, 'SAS storm Iranian Embassy', 'SAS storm Iranian Embassy in London to free hostages', CAST('1980-05-05' AS Date), 7, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (415, 'Launch of SDP by ''Gang of Four'' in Britai', 'Launch of the Social Democrat Party by ''Gang of Four'' in Britai', CAST('1981-01-25' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (416, 'First London maratho', 'First London marathon ru', CAST('1981-03-29' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (418, 'Brixton riots in South Londo', 'Brixton riots in South London – 30 other British cities also experience riots', CAST('1981-04-11' AS Date), 7, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (419, 'First US Space Shuttle (Columbia) launched', 'First US Space Shuttle (Columbia) launched', CAST('1981-04-12' AS Date), 5, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (421, 'First use of computer mouse', 'First use of computer mouse (by Xerox PARC system)', CAST('1981-04-27' AS Date), 5, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (422, 'Wedding of Prince Charles', 'The UK indulges in an orgy of romance, as the  ‘fairy-tale wedding’ takes place at St Paul’s Cathedral between Prince Charles and Lady Diana Spencer (divorced 28 Aug 1996)', CAST('1981-07-29' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (423, 'IBM launches its PC', 'IBM launches its PC — and starts the general use of personal computers', CAST('1981-08-12' AS Date), 5, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (424, 'Unemployment reaches 3 millio', 'Unemployment reaches 3 million in Britain (1 in 8 of working population)', CAST('1982-01-26' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (425, 'Laker Airways collapses', 'Laker Airways collapses', CAST('1982-02-05' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (426, 'DeLorean collapses', 'DeLorean Car factory in Belfast goes into receivership', CAST('1982-02-19' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (429, 'Royal Navy fleet sails from Portsmouth', 'Royal Navy fleet sails from Portsmouth for Falklands', CAST('1982-04-05' AS Date), 7, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (430, 'General Belgrano sunk', 'British nuclear submarine HMS Conqueror sinks Argentine cruiser General Belgrano', CAST('1982-05-02' AS Date), 21, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (431, 'Goose Green battle', 'First land battle in Falklands (Goose Green)', CAST('1982-05-28' AS Date), 21, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (433, 'Birth of Prince William', 'Birth of Prince William of Wales', CAST('1982-06-21' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (434, 'IRA bombings in Londo', 'IRA bombings in London (Hyde Park and Regents Park)', CAST('1982-07-20' AS Date), 7, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (435, 'Smiley emoticon first used', 'Smiley emoticon :-) said to have been used for the first time', CAST('1982-09-19' AS Date), 5, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (436, 'Mary Rose raised in the Solent', 'Mary Rose raised in the Solent (sank in 1545)', CAST('1982-10-11' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (437, 'Thames Barrier raised for first time', 'Thames Barrier raised for first time (some say first public demonstration Nov 7)', CAST('1982-10-31' AS Date), 7, 4)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (438, 'Channel 4 TV station launched', 'Channel 4 TV station launched – first programme ''Countdow''', CAST('1982-11-02' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (440, 'Greenham Common protests', 'Wome''s peace protest at Greenham Common (Cruise missiles arrived 14 Nov 1983)', CAST('1982-12-12' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (441, 'Start of breakfast TV in Britai', 'Start of breakfast TV in Britai', CAST('1983-01-17' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (442, 'Lotus 1-2-3 released', 'Lotus 1-2-3 spreadsheet released', CAST('1983-01-25' AS Date), 5, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (443, 'Seat belt law comes into force', 'Seat belt law comes into force', CAST('1983-01-31' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (444, '£1 coi', '£1 coin into circulation in Britai', CAST('1983-04-21' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (446, 'Brinks Mat robbert', 'Brinks Mat robbery: 6,800 gold bars worth nearly £26 million are stolen from a vault at Heathrow Airport', CAST('1983-11-26' AS Date), 7, 17)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (449, 'Police Constable Yvonne Fletcher killed', 'Police Constable Yvonne Fletcher killed by gunfire from the Libyan Embassy in Londo', CAST('1984-04-17' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (451, 'York Minster struck by lightning', 'York Minster struck by lightning – the resulting fire damaged much of the building but the "Rose Window" not affected', CAST('1984-07-09' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (452, 'IRA bomb explodes at Brighto', 'IRA bomb explodes at Tory conference hotel in Brighton – 4 killed', CAST('1984-10-12' AS Date), 7, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (453, 'Miners'' strike', 'Miners'' strike — High Court orders sequestration of NUM assets', CAST('1984-10-24' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (454, 'Indira Gandhi assassinated', 'Indira Gandhi assassinated', CAST('1984-10-31' AS Date), 24, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (455, 'British Telecom privatised', 'British Telecom privatised – shares make massive gains on first day''s trading', CAST('1984-12-03' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (456, 'Bhopal disaster', 'At the Union Carbide India Limited (UCIL) pesticide plant in Bhopal, Madhya Pradesh. over 500,000 people were exposed to methyl isocyanate (MIC) gas and other chemicals. The highly toxic substance made its way into and around the shanty towns located near the plant.', CAST('1984-12-03' AS Date), 24, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (458, 'Miners'' strike ends', 'Miners agree to call off strike', CAST('1985-03-03' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (459, 'Al Fayed buys Harrods', 'Al Fayed buys Harrods', CAST('1985-03-11' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (460, 'First episode of Neighbours', 'First episode of Neighbours in Australia', CAST('1985-03-18' AS Date), 32, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (461, 'Heysel Stadium disaster', 'Heysel Stadium disaster in Brussels', CAST('1985-05-29' AS Date), 16, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (462, 'Schengen Agreement', 'Schengen Agreement on abolition of border controls agreed between Belgium, France, West Germany, Luxembourg, and The Netherlands – not implemented until 26 Mar 1995 when it also included Spain & Portugal – by 2007 there are 30 states included', CAST('1985-06-14' AS Date), 39, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (464, 'Wreck of Titanic found', 'Wreck of Titanic found (sank 1912)', CAST('1985-09-01' AS Date), 21, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (465, 'GLC abolished', 'GLC and 6 metropolitan councils abolished', CAST('1986-03-31' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (467, 'Mannie Shinwel dies', 'Mannie Shinwell, veteran politician, dies aged 101', CAST('1986-05-07' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (468, 'EC adopts the European flag', 'The European Community adopts the European flag', CAST('1986-05-26' AS Date), 21, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (469, 'Prince Andrew marries', 'Prince Andrew, Duke of York marries Sarah Ferguson at Westminster Abbey', CAST('1986-07-23' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (470, '''Big Bang'' in the City', '''Big Bang'' (deregulation) of the London Stock Market', CAST('1986-10-27' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (472, 'Terry Waite kidnapped', 'Terry Waite kidnapped in Beirut (released 17 Nov 1991)', CAST('1987-02-02' AS Date), 40, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (473, 'Herald of Free Enterprise capsizes', 'Car ferry Herald of Free Enterprise capsizes off Zeebrugge – 188 die', CAST('1987-03-06' AS Date), 16, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (474, 'Channel Tunnel excavation starts', 'Excavation begins on the Channel Tunnel', CAST('1987-07-01' AS Date), 21, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (475, 'Hungerford Massacre', 'Hungerford Massacre – Michael Ryan kills sixteen people with a rifle', CAST('1987-08-19' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (477, '''Black Monday'' in the City of Londo', '''Black Monday'' in the City of London – Stock Market crash', CAST('1987-10-19' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (478, 'Enniskillen bombing', 'Enniskillen bombing at a Remembrance Day ceremony', CAST('1987-11-08' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (479, 'King''s Cross fire', 'King''s Cross fire in London – 31 people die', CAST('1987-11-18' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (480, 'First ''Red Nose Day'' in UK', 'First ''Red Nose Day'' in UK, raising money for charity', CAST('1988-02-05' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (481, 'Copyright, Designs and Patents Act', 'Copyright, Designs and Patents Act – reformulated the statutory basis of copyright law (including performing rights) in the UK', CAST('1988-11-15' AS Date), 7, 17)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (482, 'Clapham Junction rail crash', 'Clapham Junction rail crash kills 35 and injures hundreds after two collisions of three commuter trains', CAST('1988-12-12' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (483, 'Lockerbie disaster', 'Lockerbie disaster – Pan Am flight 103 explodes over Scotland', CAST('1988-12-21' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (484, 'Global Positioning System launched', 'The first of 24 satellites of the Global Positioning System is placed into orbit', CAST('1989-02-14' AS Date), 21, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (485, 'Fatwa issued against Salman Rushdie', 'Fatwa issued against Salman Rushdie for The Satanic Verses', CAST('1989-02-14' AS Date), 21, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (486, 'EU decision to ban CFCs', 'EU decision to ban production of all chlorofluorocarbons (CFCs) by the end of the century', CAST('1989-03-02' AS Date), 21, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (487, 'Tiananmen Square massacre', 'Tanks stopped in Tiananmen Square, Peking by unknown protester', CAST('1989-06-05' AS Date), 19, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (489, 'Parliament first televised live', 'Proceedings of House of Commons first televised live', CAST('1989-11-21' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (490, 'Nelson Mandela released', 'Nelson Mandela released in South Africa', CAST('1990-02-11' AS Date), 29, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (491, 'Riots in London against Poll Tax', 'Riots in London against Poll Tax which had been implemented in England & Wales', CAST('1990-03-31' AS Date), 7, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (493, 'Iraq invades Kuwait', 'Iraq invades Kuwait', CAST('1990-08-02' AS Date), 21, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (494, 'German reunificatio', 'East and West Germany are reunited, following the fall of the Berlin Wall in the previous year', CAST('1990-10-03' AS Date), 3, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (496, 'Channel Tunnel excavation teams meet', 'Channel Tunnel excavation teams meet in the middle', CAST('1990-12-01' AS Date), 21, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (497, 'Helen Sharman is first British Astronaut in Space', 'Helen Sharman is first British Astronaut in Space', CAST('1991-05-18' AS Date), 13, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (498, 'Leningrad renamed St Petersburg', 'Leningrad renamed St Petersburg', CAST('1991-09-06' AS Date), 11, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (499, 'Robert Maxwell drowns at sea', 'Robert Maxwell drowns at sea', CAST('1991-11-05' AS Date), 21, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (500, 'Maastricht treaty', 'European Union formed by The Maastricht Treaty', CAST('1992-02-07' AS Date), 41, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (501, 'Betty Boothroyd elected as first female Speaker', 'Betty Boothroyd elected as first female Speaker of the House of Commons', CAST('1992-04-22' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (503, 'Black Wednesday', '''Black Wednesday'' as Pound leaves the ERM', CAST('1992-09-16' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (504, 'Fire breaks out in Windsor Castle', 'Fire breaks out in Windsor Castle causing over £50 million worth of damage', CAST('1992-11-20' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (505, 'First female priests', 'Church of England ordains its first female priests', CAST('1994-03-12' AS Date), 7, 18)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (507, 'National Lottery starts', 'National Lottery starts', CAST('1994-11-19' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (508, 'Nick Leeson brings down Barings', 'Nick Leeson brings down Barings', CAST('1995-02-26' AS Date), 42, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (509, 'First item sold on Amazo', 'First item sold on Amazon.com', CAST('1995-07-15' AS Date), 5, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (510, 'The Queen Mother has a hip replacement', 'The Queen Mother has a hip replacement operation at 95 years old', CAST('1995-11-16' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (511, 'Toy Story released', 'Toy Story released – first feature-length film created completely using computer-generated imagery', CAST('1995-11-22' AS Date), 5, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (512, 'Galileo spacecraft arrives at Jupiter', 'Galileo spacecraft arrives at Jupiter (launched from shuttle 18 Oct 1989)', CAST('1995-12-07' AS Date), 13, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (514, 'Dunblane massacre', 'Gunman Thomas Hamilton kills sixteen children and one teacher at Dunblane Primary School near Stirling, Scotland on 13 March 1996, before killing himself', CAST('1996-03-13' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (515, 'IRA bomb explodes in Manchester', 'The IRA detonate a powerful 1,500-kilogram truck bomb on Corporation Street in the centre of Manchester, England.', CAST('1996-06-15' AS Date), 7, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (516, 'Dolly the sheep cloned', 'Scientists in Scotland clone a sheep (Dolly)', CAST('1996-07-05' AS Date), 7, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (517, 'Princess of Wales divorced', 'Charles, Prince of Wales and Diana, Princess of Wales are divorced', CAST('1996-08-28' AS Date), 7, 16)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (518, 'Channel 5 TV begins in UK', 'Channel 5 TV begins in UK (launched by the Spice Girls)', CAST('1997-03-30' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (520, '''New'' Labour landslide victory in Britai', '''New'' Labour landslide victory in Britain (Tony Blair replaces John Major as Prime Minister)', CAST('1997-05-01' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (521, 'Bank of England independence', 'Announcement that Bank of England to be made independent of Government control', CAST('1997-05-06' AS Date), 7, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (522, 'A computer beats a master at chess', 'First time a computer beats a master at chess (IBM''s Deep Blue v Garry Kasparov)', CAST('1997-05-11' AS Date), 5, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (524, 'Hong Kong returned to China', 'Hong Kong returned to China', CAST('1997-07-01' AS Date), 19, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (526, 'IRA declares a ceasefire', 'IRA declares a ceasefire', CAST('1997-07-19' AS Date), 38, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (527, 'Diana, Princess of Wales killed', 'Diana, Princess of Wales killed in car crash in Paris', CAST('1997-08-31' AS Date), 2, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (528, 'Land speed record breaks sound barrier for first time', 'Land speed record breaks sound barrier for first time – Wing Commander Andy Green in Thrust SSC at Black Rock Desert, USA', CAST('1997-09-25' AS Date), 5, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (529, 'Good Friday peace agreement in Northern Ireland', 'Good Friday peace agreement in Northern Ireland – effectively implemented in May 2007', CAST('1998-04-10' AS Date), 38, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (530, 'Car bomb explodes in Omagh', 'Car bomb explodes in Omagh killing 29 people', CAST('1998-08-14' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (532, 'International Space Station launched', 'First module of the International Space Station launched', CAST('1998-11-20' AS Date), 13, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (533, 'US President Bill Clinton is impeached', 'US President Bill Clinton is impeached over Monica Lewinsky scandal', CAST('1998-12-19' AS Date), 5, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (534, 'European Monetary Union begins', 'European Monetary Union begins – UK opts out.  By the end of the year the Euro has approximately the same value as the US Dollar.', CAST('1999-01-01' AS Date), 21, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (535, 'The Scottish Parliament is opened', 'The Scottish Parliament is officially opened by Queen Elizabeth – powers are officially transferred from the Scottish Office in London to the new devolved Scottish Executive in Edinburgh', CAST('1999-07-01' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (537, 'House of Lords reform', 'Hereditary Peers no longer have right to sit in House of Lords', CAST('1999-11-11' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (539, 'The Big Number Change', 'The Big Number Change takes place in the UK – affected telephone dialling codes assigned to Cardiff, Coventry, London, Northern Ireland, Portsmouth and Southampto', CAST('2000-04-22' AS Date), 7, 12)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (540, 'Ken Livingstone elected first Mayor of Londo', 'Ken Livingstone elected first Mayor of London (not to be confused with Lord Mayor of London!)', CAST('2000-05-04' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (541, 'Millennium footbridge opens for first time', 'Millennium footbridge over the Thames opens, but wobbles and is quickly declared dangerous and closed – finally reopened Feb 2002', CAST('2000-06-10' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (542, 'A chartered Air France Concorde crashes', 'A chartered Air France Concorde crashes on take-off at Paris with loss of all lives – debris on the runway blamed for causing fuel to escape and catch fire, and all Concordes grounded until 7 November 2001', CAST('2000-07-25' AS Date), 2, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (543, 'Derailment at Hatfield', 'Derailment at speed on the main London-North eastern line at Hatfield caused by a broken rail – Railtrack put restrictions on the rest of the network while all other suspect locations were checked', CAST('2000-10-17' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (548, 'FA Cup Final played at the Millennium Stadium in Cardiff', 'FA Cup Final played at the Millennium Stadium in Cardiff – first time away from Wembley since 1922', CAST('2001-05-12' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (549, 'New-style number plates', 'New-style number plates on road vehicles in UK eg. AB 51 ABC', CAST('2001-09-01' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (552, 'The Leaning Tower of Pisa reopens', 'The Leaning Tower of Pisa reopens after 11 years, still leaning', CAST('2001-12-15' AS Date), 4, 20)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (553, 'Euro launched', 'Twelve major countries in Europe (Austria, Belgium, Holland, Irish Republic, Italy, Luxembourg, Finland, France, Germany, Greece, Spain, Portugal) and their dependents start using the Euro instead of their old national currencies', CAST('2002-01-01' AS Date), 21, 8)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (556, 'Queen Mother dies', 'The Queen Mother dies, aged 101 years', CAST('2002-03-30' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (558, 'Steve Fossett flies nonstop round world in balloo', 'Steve Fossett becomes the first person to fly solo around the world nonstop in a balloo', CAST('2002-07-02' AS Date), 21, 3)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (559, 'Space Shuttle Columbia disintegrates', 'Space Shuttle Columbia disintegrates during re-entry, killing all seven astronauts aboard', CAST('2003-02-01' AS Date), 5, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (560, 'Start of Congestion Charge', 'Start of Congestion Charge for traffic entering central Londo', CAST('2003-02-17' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (561, 'Temperatures reach record high', 'Temperatures reach record high of 101 F (38.3 C) in Kent', CAST('2003-08-10' AS Date), 7, 4)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (563, 'England wins Rugby World Cup', 'England wins Rugby World Cup in nail-biting final in Australia – first northern hemisphere team to do this', CAST('2003-11-22' AS Date), 32, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (564, 'Saddam Hussein captured', 'Saddam Hussein captured near his home town of Tikrit (executed 30 Dec 2006)', CAST('2003-12-13' AS Date), 23, 6)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (565, 'Queen Mary 2 arrives in Southampto', 'Queen Mary 2 arrives in Southampton from the builder''s yard in France', CAST('2003-12-26' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (566, 'Alistair Cooke dies', 'Alistair Cooke dies at the age of 95 – until four weeks previously, and since 1946, he had broadcast his regular ''Letter from America'' on BBC radio', CAST('2004-03-29' AS Date), 7, 9)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (567, 'Ireland bans smoking', 'Ireland becomes first country in the world to ban smoking in public places', CAST('2004-03-29' AS Date), 38, 10)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (568, 'Enlargement of the European Unio', 'Enlargement of the European Union to include 25 members by the entry of 10 new states: Estonia, Latvia, Lithuania, Poland, Czech Republic, Slovakia, Hungary, Slovenia, Malta, Cyprus.', CAST('2004-05-01' AS Date), 21, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (569, 'Kyoto Protocol starts', 'Kyoto Protocol on climate change came into force', CAST('2005-02-16' AS Date), 21, 4)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (570, 'Ban on hunting with dogs', 'Ban on hunting with dogs came into force in England & Wales (had already been a similar law for about two years in Scotland)', CAST('2005-02-18' AS Date), 7, 17)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (571, 'Death of Pope John Paul II', 'Death of Pope John Paul II, first non-Italian Pope for 450 years when elected in 1978', CAST('2005-04-02' AS Date), 4, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (572, 'Pope Benedict XVI elected', 'Pope Benedict XVI elected – first German Pope for about 1,000 years', CAST('2005-04-19' AS Date), 43, 18)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (573, 'London chosen for 2012 Olympics', 'London chosen as venue for the 2012 Olympic Games', CAST('2005-07-06' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (574, 'Suicide bombers attack Londo', 'A series of coordinated terrorist suicide bomb attacks in central London target civilians using the public transport system during the rush hour', CAST('2005-07-07' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (576, 'England regain the ''Ashes''', 'England regain the ''Ashes'' after a gripping Test series (but are whitewashed 5-0 in the return series in Australia 2007)', CAST('2005-09-12' AS Date), 7, 7)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (577, 'Angela Merkel becomes first female Chancellor', 'Angela Merkel becomes first female Chancellor of Germany', CAST('2005-11-22' AS Date), 3, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (578, 'John Sentamu becomes Archbishop of York', 'John Sentamu becomes Archbishop of York; the first black archbishop in the Church of England', CAST('2005-11-30' AS Date), 7, 18)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (579, 'Last Routemaster bus runs', 'Last Routemaster bus runs on regular service in Londo', CAST('2005-12-09' AS Date), 7, 14)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (580, 'Explosions at the Buncefield Oil Depot', 'Explosions at the Buncefield Oil Depot in Hemel Hempstead', CAST('2005-12-11' AS Date), 7, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (581, 'Same-sex civil partnerships begi', 'Same-sex civil partnerships begin – famously, on this day, between Elton John and David Furnish', CAST('2005-12-21' AS Date), 7, 11)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (582, 'Welsh Assembly Building opened', 'Welsh Assembly Building opened by the Quee', CAST('2006-03-01' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (583, 'Prohibition of smoking in Scotland', 'Prohibition of smoking in enclosed public places in Scotland', CAST('2006-03-26' AS Date), 7, 10)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (586, 'Saddam Hussein executed', 'Saddam Hussein executed', CAST('2006-12-30' AS Date), 23, 5)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (587, 'Further enlargement of the European Unio', 'Further enlargement of the European Union to include Bulgaria and Romania', CAST('2007-01-01' AS Date), 21, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (589, 'A Northern Ireland Executive formed', 'A Northern Ireland Executive formed under the leadership of Ian Paisley (DUP) and Martin McGuinness (Sinn Fein)', CAST('2007-05-08' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (590, 'Tony Blair resigns as Prime Minister', 'Tony Blair resigns as Prime Minister after 10 years – replaced by Gordon Brow', CAST('2007-06-27' AS Date), 7, 1)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (591, 'Prohibition of smoking in England', 'Prohibition of smoking in enclosed public places in England (thus completing cover of the entire UK)', CAST('2007-07-01' AS Date), 7, 10)
;
INSERT tblEvent (EventID, EventName, EventDetails, EventDate, CountryID, CategoryID) VALUES (592, 'Seventh and final Harry Potter book', 'People queue up to buy the seventh and final Harry Potter book', CAST('2007-07-21' AS Date), 7, 9)
;
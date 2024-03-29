USE BBBS;

INSERT INTO Customer (email, firstName, lastName, phone, postalCode, city, address, receiveNewsletter) VALUES
(
	"customer@email.com",
	"Customer",
	"Customersen",
	"004512345678",
	"1234",
	"København",
	"Købmandstorvet 123",
	false
),
(
	"kunde@email.dk",
	"Kunde",
	"Kundesen",
	"004512345678",
	"1234",
	"København",
	"Købmandstorvet 123",
	false
),
(
	"cammilla@illerslot.dk",
	"Cammilla",
	"Schou",
	"004512345678",
	"6310",
	"Iller",
	"Slotsvej 20A",
	false
);

INSERT INTO Room (name, description, capacity, pricePerNight, thumbnailImagePath) VALUES 
(
	"Cathrines Minde Værelset",
	"800kr pr nat for to personer. Morgenmad kan tilkøbes á 100kr.\nEt østvendt twin-værelse med to opredte senge og kig til marker og gårdsplads.\nDeler bad og toilet med værelse 2/ Gotland.\nBadeværelse A.",
	2,
	800,
	"room/1.avif"
),
(
	"Gotlandsværelset",
	"800kr pr nat for to personer. Morgenmad kan tilkøbes á 100kr.\nØstvendt Dobbeltværelse med to enkeltsenge.\nTo vinduer med kig til Iller, samt marker og natur.\nVærelset deler bad og toilet med værelse 1/ Cathrines Minde.\nBadeværelse A.",
	2,
	800,
	"room/2.avif"
),
(
	"Vandrernes Kammer",
	"1000kr for tre personer incl opredte enkeltsenge. Morgenmad kan tilkøbes á 100kr.\nVindue mod øst med udsigt mod Iller, Busholm og omkringliggende marker.\nVærelset deler bad og toilet med værelse 4/ Bygherre Matzens værelse.\nBadeværelse B.",
	3,
	1000,
	"room/3.avif"
),
(
	"Bygherre Matzens Værelse",
	"1250 kr for op til fire personer med linned pr nat.\nDette 4-personers værelse med vinduer mod syd, har to enkeltsenge samt en køjeseng (gode madrasser). Der er en håndvask på værelset.\nVærelset deler bad og toilet med værelse 3/ Vandrerenes kammer.\nBadeværelse B.",
	4,
	1250,
	"room/4.avif"
),
(
	"Hertugværelset",
	"1400kr for op til fire personer i opredte enkeltsenge. Morgenmad kan tilkøbes á 100kr.\nFra de to brede vindueskarme kan du, i eftermiddag- og aftensolen, sidde og nyde den formidable fjordudsigt mod syd og vest. Der er håndvask på værelset.\nVærelset deler bad og toilet med værelse 6/ Pilgrimmenes kammer.\nBadeværelse C.",
	4,
	1400,
	"room/5.avif"
),
(
	"Pilgrimmenes Kammer",
	"700kr for to personer incl opredte enkeltsenge.\nTwin-værelse med vestvendt skråvindue med lyst gardin.\nDeler bad og toilet med værelse 5/ Hertug værelset.\nBadeværelse C.",
	2,
	700,
	"room/6.avif"
),
(
	"Det Lille Tårnkammer",
	"700kr for to personer incl opredte enkeltsenge.\nTwin-værelse med vestvendt skråvindue med lyst gardin.\nVærelset deler bad og toilet med værelse 8/ Tårnværelset.\nBadeværelse D.",
	2,
	700,
	"room/7.avif"
),
(
	"Tårnværelset",
	"1000kr for to personer pr nat.\nEt dejligt rummeligt flot værelse med højt til loftet og husets bedste udsigt.\nDu lægger dig i den høje dobbeltseng og hviler eller drømmer dig væk til udsigten af bølgerne på Flensborg Fjord; den skønneste natur; Cathrines Minde og til Broager.\nDeler bad og toilet med Det lille tårnkammer/ værelse 7.\nBadeværelse D.",
	2,
	1000,
	"room/8.avif"
),
(
	"Stue Suiten (stueplan)",
	"800kr for to personer.\nDejligt dobbelt-værelse med to enkelte senge og lille stue.\nVindue mod øst og mod syd.\nDeler badeværelse med Det lille stuekammer.",
	2,
	800,
	"room/9.jpg"
),
(
	"Det Lille Stuekammer (stueplan)",
	"700kr for to personer i to opredte enkeltsenge. Morgenmad kan tilkøbes á 100kr.\nLille værelse med et vindue mod syd.\nDeler badeværelse med naboværelset/ Stue-suiten.",
	2,
	700,
	"room/10.jpg"
);

INSERT INTO AdditionalService (name, description, pricePerUnit, thumbnailImagePath) VALUES
(
	"Morgenmad",
	"Det her er morgenmad.",
	125,
	"as/breakfast.webp"
),
(
	"DIY Lunchbox",
	"Smør selv madpakke med masser af godt pålæg.",
	50,
	"as/lunchbox.jpg"
), 
(
	"Aftensmad",
	"Det her er aftensmad.",
	150,
	"as/dinner.jpg"
);
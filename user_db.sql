Create Table User (
 	UserNumber 	NUMBER(8) 	Constraint user_num PRIMARY KEY,,
 	UserID 		CHAR(16) 	Constraint user_id PRIMARY KEY,
 	Name 		CHAR(8),
 	Gender 		VARCHAR(6),
// 	Gender 		TINYINT(1),
// 	Gender 		NUMBER(1) 	Constraint user_gender CHECK (Gender IN ('0', '1'),
 	Age 		DATE,
 	Job 		VARCHAR(12),
 	Address 		VARCHAR(108),
 	Phone 		NUMBER(11)
)

Create Table Bath (
 	PerfumeNumber 	NUMBER(8) 	Constraint perfume_num PRIMARY KEY,
 	Perfume 		CHAR(32)
)

Create Table Kustom (
 	KustomNumber 	NUMBER(8) 	Constraint kustom_num PRIMARY KEY,
 	UserNumber 	NUMBER(8) 	Constraint kustom_user_num REFERENCES User(UserNumber),
 	PerfumeCheck 	TINYINT(1) 	DEFAULT '0',
 	PerfumeNumber 	NUMBER(8) 	Constraint kustom_perfum_number REFERENCES Bath(PerfumeNumber),
 	Temperature 	NUMBER(2),
 	BathStartTime 	DATE,
 	BathTime 	DATE,
 	Constraint kustom_pk PRIMARY KEY(KustomNumber, UserNumber)
)
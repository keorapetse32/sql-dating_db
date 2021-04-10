CREATE TABLE public.my_contacts
(
    zip_code integer,
    prof_id integer,
    contact_id bigint NOT NULL,
    status_id integer,
    phone character varying[100],
    last_name character varying[100],
    gender char[1],
    first_name character varying[100],
    email character varying[100],
    birthday character varying[100],
    PRIMARY KEY (contact_id)
);

CREATE TABLE public."Profession"
(
    prof_id integer NOT NULL,
    "Profession" character varying[100],
    PRIMARY KEY (prof_id)
);

CREATE TABLE public.zip_code
(
    zip_code integer NOT NULL,
    postal_code character varying[100],
    PRIMARY KEY (zip_code)
);

CREATE TABLE public.status
(
    status_id integer NOT NULL,
    status character varying[100],
    PRIMARY KEY (status_id)
);

CREATE TABLE public.contact_intrest
(
    contact_id bigint NOT NULL,
    interest_id integer,
    PRIMARY KEY (contact_id, interest_id)
);

CREATE TABLE public.contact_seeking
(
    contact_id bigint NOT NULL,
    seeking_id integer,
    PRIMARY KEY (contact_id, seeking_id)
);

CREATE TABLE public.interests
(
    interest_id integer NOT NULL,
    interest character varying[50],
    PRIMARY KEY (interest_id)
);

CREATE TABLE public.seeking
(
    seeking_id integer NOT NULL,
    seeking character varying[25],
    PRIMARY KEY (seeking_id)
);

ALTER TABLE public.my_contacts
    ADD FOREIGN KEY (prof_id)
    REFERENCES public."Profession" (prof_id)
    NOT VALID;


ALTER TABLE public.my_contacts
    ADD FOREIGN KEY (zip_code)
    REFERENCES public.zip_code (zip_code)
    NOT VALID;


ALTER TABLE public.my_contacts
    ADD FOREIGN KEY (status_id)
    REFERENCES public.status (status_id)
    NOT VALID;


ALTER TABLE public.my_contacts
    ADD FOREIGN KEY (contact_id)
    REFERENCES public.contact_intrest (contact_id)
    NOT VALID;


ALTER TABLE public.my_contacts
    ADD FOREIGN KEY (contact_id)
    REFERENCES public.contact_seeking (contact_id)
    NOT VALID;


ALTER TABLE public.contact_intrest
    ADD FOREIGN KEY (interest_id)
    REFERENCES public.interests (interest_id)
    NOT VALID;


ALTER TABLE public.contact_seeking
    ADD FOREIGN KEY (seeking_id)
    REFERENCES public.seeking (seeking_id)
    NOT VALID;

INSERT INTO public."Profession" (prof_id,"Profession")
VALUES 
('1','{Model}'),
('2','{Musician}'),
('3','{Teacher}'),
('4','{Docter}');

INSERT INTO public.zip_code (zip_code,postal_code)
VALUES
('1','{0001}'),
('2','{0300}'),
('3','{1400}'),
('4','{1700}');

INSERT INTO public.status (status_id,status)
VALUES
('1','{Single}'),
('2','{Single}'),
('3','{Single}'),
('4','{Divorced}');


INSERT INTO public.interests (interest_id,interest)
VALUES
('1','{Blogging}'),
('2','{Traveling}'),
('3','{Cooking}'),
('4','{Reading}');

INSERT INTO public.seeking (seeking_id,seeking)
VALUES
('1','{Gay Male}'),
('2','{Straight Male}'),
('3','{Straight Female}'),
('4','{Straight Male}');

INSERT INTO public.my_contacts (first_name,last_name,email, birthday,phone,gender,zip_code,prof_id,contact_id,status_id)
VALUES 
('{Reilly}','{Burgess}','{burgess32@gmail.com}','{02-23-1998}','{0613456725}','{M}','1','1','1','1'),
('{Diana}','{Hernandez}','{Dhernedez@gmail.com}','{03-13-1993}','{0713456723}','{F}','2','2','2','2'),
('{Giovanny}','{Macdonald}','{Giovanny00@gmail.com}','{06-15-1989}','{0612345567}','{M}','3','3','3','3'),
('{Trystan}','{Freeman}','{tryfreeman7@gmail.com}','{09-12-1975}','{0614357564}','{F}','4','4','4','4');


INSERT INTO public.contact_seeking (contact_id, seeking_id)
VALUES 
('1','1'),
('2','2'),
('3','3'),
('4','4');


INSERT INTO public.contact_intrest (contact_id,interest_id )
VALUES 
('1','1'),
('2','2'),
('3','3'),
('4','4');
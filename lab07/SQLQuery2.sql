ALTER TABLE PREDMET_16
ADD CONSTRAINT CN_PREDMET_LIST
CHECK (PNAME IN('Физика','Математика','Философия','Экономика','Химия'));
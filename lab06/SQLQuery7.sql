SELECT* FROM PREDMET
WHERE PNUM = (SELECT PNUM FROM PREDMET WHERE PNAME = '���������')-1
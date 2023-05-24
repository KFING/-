CREATE TRIGGER dateTrigger
ON CUSTOMERS FOR INSERT,UPDATE
AS
DECLARE @dateCust DATE;
IF EXISTS (SELECT 0 FROM deleted)
BEGIN
	IF EXISTS (SELECT 0 FROM inserted)
	BEGIN
		
		SELECT @dateCust = (SELECT DATA_ORDER FROM inserted);
		IF DATEPART(DAY,@dateCust) > 15
		BEGIN
		PRINT '����� ������ ����� 15 ����� (' + convert(varchar, @dateCust, 0) + ')';
		ROLLBACK TRANSACTION
		END
	END
END
ELSE
BEGIN
		SELECT @dateCust = (SELECT DATA_ORDER FROM inserted);
		IF DATEPART(DAY,@dateCust) > 15
		BEGIN
		PRINT '����� ������ ����� 15 ����� (' + convert(varchar, @dateCust, 0) + ')';
		ROLLBACK TRANSACTION
		END
END

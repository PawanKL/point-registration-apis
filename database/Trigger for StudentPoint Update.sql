Create trigger tr_StudentPoint_ForUpdate
on StudentPoint
for Update
as
Begin
 DECLARE @Old int, @New int, @RegDate date
 SELECT @Old     = StudentPointId from deleted
 SELECT @RegDate = RegistrationDate from deleted;
 SELECT @New     = StudentPointId from inserted
 IF
 @Old = @New
 Begin
	update StudentPoint
	SET RegistrationDate = @RegDate
	WHERE StudentPointId = @New
 End
End
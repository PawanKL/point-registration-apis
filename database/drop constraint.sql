Alter Table StudentPoint
Drop Constraint FK_Point_StudentPoint_PointID,
FK_Semester_StudentPoint_SemesterID, FK_Student_StudentPoint_StudentID;
GO
Alter Table Point
Drop Constraint FK_Driver_Point_CNIC;
GO
Alter Table Route
Drop Constraint FK_Point_Route_PointID;
GO
Alter Table PointPayment
Drop Constraint FK_PointFee_PointPayment_FeeID;
GO
Alter Table PointPayment
Drop Constraint FK_Student_PointPayment_StudentID;
GO
Alter Table PointFee
Drop Constraint FK_Semester_PointFee_SemesterID;


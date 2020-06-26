--Adding FK/Constraint for CNIC 
ALTER TABLE Point
ADD CONSTRAINT FK_Driver_Point_CNIC FOREIGN KEY (CNIC)
    REFERENCES Driver(CNIC)
	ON DELETE SET NULL
	ON UPDATE SET NULL;
GO
--Adding FK/Constraint for PointID 
ALTER TABLE ROUTE
ADD CONSTRAINT FK_Point_Route_PointID FOREIGN KEY (PointID)
    REFERENCES Point(PointID)
	ON DELETE SET NULL
	ON UPDATE SET NULL;
GO
--Adding FK/Constraint for PointID 
ALTER TABLE StudentPoint
ADD CONSTRAINT FK_Point_StudentPoint_PointID FOREIGN KEY (PointID)
    REFERENCES Point(PointID)
	ON DELETE SET NULL
	ON UPDATE SET NULL;
GO
--Adding FK/Constraint for SemesterID
ALTER TABLE StudentPoint
ADD CONSTRAINT FK_Semester_StudentPoint_SemesterID FOREIGN KEY (SemesterID)
    REFERENCES Semester(SemesterID)
	ON DELETE SET NULL
	ON UPDATE SET NULL;
GO
--Adding FK/Constraint for StudentID
ALTER TABLE StudentPoint
ADD CONSTRAINT FK_Student_StudentPoint_StudentID FOREIGN KEY (StudentID)
    REFERENCES Student(StudentID)
	ON DELETE SET NULL
	ON UPDATE SET NULL;
GO
--Adding FK/Constraint for SemesterID
ALTER TABLE PointFee
ADD CONSTRAINT FK_Semester_PointFee_SemesterID FOREIGN KEY (SemesterID)
    REFERENCES Semester(SemesterID)
	ON DELETE SET NULL
	ON UPDATE SET NULL;
GO
--Adding FK/Constraint for StudentID
ALTER TABLE PointPayment
ADD CONSTRAINT FK_Student_PointPayment_StudentID FOREIGN KEY (StudentID)
    REFERENCES Student(StudentID)
	ON DELETE SET NULL
	ON UPDATE SET NULL;
GO
--Adding FK/Constraint for FeeID
ALTER TABLE PointPayment
ADD CONSTRAINT FK_PointFee_PointPayment_FeeID FOREIGN KEY (FeeID)
    REFERENCES PointFee(FeeID)
	ON DELETE SET NULL
	ON UPDATE SET NULL;
GO
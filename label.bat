@echo off
color 0a
type NUL> label.lbl
echo.-------------------------------
echo   Enter the information
echo.-------------------------------
echo.
echo.
set /p PartNumber=Enter part number: 
set /p operatorNumber=Enter operator number: 
set /p Y=Enter Year:
set /p M=Enter Month:
set /p D=Enter Day:
(echo=N) >> label.lbl
(echo=q450) >> label.lbl
(echo=Q1250,24) >> label.lbl
(echo=S2) >> label.lbl
(echo=D10) >> label.lbl
(echo=) >> label.lbl
(echo=A445,470,1,1,2,2,N,"%PartNumber% ") >> label.lbl
(echo=A405,470,1,1,2,2,N,"Operator: %operatorNumber% ") >> label.lbl
(echo=A365,470,1,2,1,1,N,"Date: %Y%-%M%-%D% ") >> label.lbl
(echo=B345,470,1,1,1,3,80,B,"%PartNumber%%Y%%M%%D% ") >> label.lbl
(echo=B225,470,1,1,2,3,90,B,"%PartNumber% ") >> label.lbl
(echo=) >> label.lbl
(echo=LO1,425,600,10) >> label.lbl
(echo=A445,410,2,2,1,1,N,"THIS LINE MUST BE UNBROKEN ") >> label.lbl
(echo=) >> label.lbl
(echo=A445,340,2,1,1,2,N,"%PartNumber% ") >> label.lbl
(echo=A445,310,2,1,2,2,N,"Operator: %operatorNumber%") >> label.lbl
(echo=A445,240,2,2,1,1,N,"Date:%Y%-%M%-%D%") >> label.lbl
(echo=B445,220,2,1,1,3,80,N,"%PartNumber%%Y%%M%%D% ") >> label.lbl
(echo=B445,120,2,1,1,3,90,B,"%PartNumber%") >> label.lbl
(echo=) >> label.lbl
(echo=P1) >> label.lbl
(echo=FE) >> label.lbl

      *****************************************************************
      * Program name:    HelloWorld                               
      * Original author: Souad                               
      *
      * Maintenence Log                                              
      * Date      Author        Maintenance Requirement               
      * --------- ------------  --------------------------------------- 
      * 01/01/08 MYNAME  Created for COBOL class         
      *                                                               
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID.  HelloWorld.
       AUTHOR. Souad. 
       INSTALLATION. COBOL DEVELOPMENT CENTER. 
       DATE-WRITTEN. 01/01/08. 
       DATE-COMPILED. 01/01/08. 
       SECURITY. NON-CONFIDENTIAL.
      *****************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 WS-HELLOW      PIC X(15).


       PROCEDURE DIVISION.

           PERFORM ASSIGNMENT.
           PERFORM PROCESSP.
           PERFORM CLOSEP.

       ASSIGNMENT.
           MOVE 'HELLO WORLD !' TO WS-HELLOW
           .

       PROCESSP.
           DISPLAY WS-HELLOW
           .

       CLOSEP.
           STOP RUN
           .
          



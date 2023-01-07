      *****************************************************************
      * Program name:    Notes                               
      * Original author: Souad                               
      *
      * Maintenence Log                                              
      * Date      Author        Maintenance Requirement               
      * --------- ------------  --------------------------------------- 
      * 01/01/08 Souad  Created for COBOL class         
      *                                                               
      *****************************************************************
                
       IDENTIFICATION DIVISION.
       PROGRAM-ID. exo2Notes.
       
       
       DATA DIVISION.
       
       WORKING-STORAGE SECTION.
       01  WS-NOTE pic 9(2).
           88 MEDIOCRE  value 0 THRU 7.
           88 MOYEN     value 8 THRU 12.
           88 ASSEZBIEN value 13 THRU 14.
           88 BIEN      value 15 THRU 16.
           88 TB        value 17 THRU 18.
           88 EXCELLENT value 19 THRU 20.
       
       01 WS-NOTE-BRUT pic 99. 
       
       PROCEDURE DIVISION.
           Perform Assignment.
           PErform Processing1.
           PErform EndProgram.
       
       Assignment.
           initialize WS-NOTE-BRUT
           Move 12 to WS-NOTE-BRUT 
           Move WS-NOTE-BRUT TO WS-NOTE
           .
       
       Processing1.
          Perform errors-management.
           EVALUATE TRUE
               WHEN MEDIOCRE
               DISPLAY "note médiocre"
               WHEN MOYEN
               DISPLAY "note moyenne"
               WHEN ASSEZBIEN
               DISPLAY 'assez bien'
               WHEN BIEN
               DISPLAY 'bien'
               WHEN TB
               DISPLAY 'TB'
               WHEN EXCELLENT
               DISPLAY 'excellent'
               WHEN OTHER
               DISPLAY 'problème note  ' WS-NOTE
           END-EVALUATE
           .
           
       errors-management.
           if WS-NOTE-BRUT IS NOT NUMERIC 
               display 'erreur ----> note non numérique'
               STOP RUN
           end-if
           .
       
       EndProgram.
           STOP RUN
           .


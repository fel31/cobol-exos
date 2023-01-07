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
       
       
       PROCEDURE DIVISION.
           Perform Assignment.
           PErform Processing1.
           PErform EndProgram.
       
       Assignment.
           Display 'entrez la note : '
           Accept WS-NOTE
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
               DISPLAY 'Problème note'
           END-EVALUATE
           .
           
       errors-management.
           if WS-NOTE IS NOT NUMERIC 
               display 'erreur ----> note non numérique'
               STOP RUN
           end-if
           .
       
       EndProgram.
           STOP RUN
           .




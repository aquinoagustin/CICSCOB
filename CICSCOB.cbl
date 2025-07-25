      *-----------------------
       IDENTIFICATION DIVISION.
      *-----------------------
       PROGRAM-ID.    CICSCOB.
      *--------------------
       ENVIRONMENT DIVISION.
      *-------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
         01 MSGTXT  PIC X(12) VALUE "HELLO WORLD!".
         01 MSGLEN  PIC S9(4) USAGE IS BINARY.
      *------------------
       PROCEDURE DIVISION.
      *------------------
            MOVE LENGTH OF MSGTXT TO MSGLEN.
            EXEC CICS SEND FROM(MSGTXT)
                           LENGTH(MSGLEN)
                           ERASE
            END-EXEC.
            EXEC CICS RETURN
            END-EXEC.
      *
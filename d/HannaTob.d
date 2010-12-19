EXTEND_TOP FATESP 6

   IF ~!Dead("Hanna")
       !InMyArea("Hanna")
       Global("HannaSummoned","GLOBAL",0)~ THEN

      REPLY @0 DO ~SetGlobal("HannaSummoned","GLOBAL",1)~ GOTO 8
END



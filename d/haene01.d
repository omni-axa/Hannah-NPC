BEGIN ~haene01~

IF ~True()~ THEN BEGIN 1a
      SAY @0
      IF ~~ GOTO 1b
END

IF ~~ THEN BEGIN 1b
SAY @1
IF ~~ THEN EXIT
END

I_C_T HAENE01 1a HannaZarnon1
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @2
END
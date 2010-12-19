BEGIN ~HANNOBL1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 1
   SAY @0
       IF ~~ THEN REPLY @1 GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @2
       IF ~~ THEN REPLY @3 GOTO 3
       IF ~~ THEN REPLY @4 GOTO 3
       IF ~~ THEN REPLY @5 GOTO 4
END 

IF ~~ THEN BEGIN 3
   SAY @6
       IF ~~ THEN REPLY @7 GOTO 5
       IF ~~ THEN REPLY @8 GOTO 6 
       IF ~~ THEN REPLY @9 GOTO 4
END

IF ~~ THEN BEGIN 4
SAY @10
=
  @11
       IF ~~ THEN DO ~EscapeArea() ReputationInc(-2)~ EXIT
END

IF ~~ THEN BEGIN 6
SAY @12 
=
  @13 
   IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
SAY @14
=
@15
       IF ~~ THEN DO ~SetGlobal("HannaQuest1","GLOBAL",1) RevealAreaOnMap("AR1300")~ JOURNAL @16 EXIT 
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 7
   SAY @17
       IF ~~ THEN REPLY @18 GOTO 8
       IF ~PartyHasItem("HANMIS01")~ THEN REPLY @19 GOTO 9
END

IF ~~ THEN BEGIN 8
   SAY @20
    IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
   SAY @21
    IF ~~ THEN DO ~SetGlobal("HannaQuest1","GLOBAL",2) AddexperienceParty(5000) ReputationInc(1) GiveItemCreate("HANDAG0",Player1,0,0,0) TakePartyItem("HANMIS01") EscapeArea() ~ JOURNAL @22 EXIT
END

I_C_T HANNOBL1 1 HannaNoble1
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @23
END

I_C_T HANNOBL1 2 HannaNoble2
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @24
END

I_C_T HANNOBL1 4 HannaNoble3
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @25
END

I_C_T HANNOBL1 5 HannaNoble4
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @26
END

I_C_T HANNOBL1 6 HannaNoble5
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @27
END
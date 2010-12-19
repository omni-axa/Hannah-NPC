BEGIN ~Hanna~

IF WEIGHT #3 ~NumTimesTalkedTo(0) !InParty("Edwin") !InParty("Aerie")~ THEN BEGIN 1
   SAY @0
       IF ~~ THEN REPLY @1 GOTO 2
       IF ~~ THEN REPLY @2 GOTO 2
       IF ~~ THEN REPLY @3 GOTO 11
END


IF WEIGHT #2 ~NumTimesTalkedTo(0) InParty("Edwin")~ THEN BEGIN 1a
   SAY @4
       IF ~~ THEN REPLY @1 GOTO 2
       IF ~~ THEN REPLY @2 GOTO 2
       IF ~~ THEN REPLY @3 GOTO 11
END

IF WEIGHT #1 ~NumTimesTalkedTo(0) InParty("Aerie")~ THEN BEGIN 1b
   SAY @5
       IF ~~ THEN REPLY @1 GOTO 2
       IF ~~ THEN REPLY @2 GOTO 2
       IF ~~ THEN REPLY @3 GOTO 11
END

IF ~~ THEN BEGIN 2
   SAY @6
=
@7
       IF ~~ THEN REPLY @8 GOTO 4
       IF ~~ THEN REPLY @9 GOTO 6
       IF ~~ THEN REPLY @10 GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @11
       IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN 4
   SAY @13
	IF ~~ THEN EXTERN HANNA Inter01
END


IF ~~ THEN BEGIN 6
   SAY @14
       =
       @15
       IF ~~ THEN REPLY @16 GOTO 7
       IF ~~ THEN REPLY @8 GOTO 4
END


IF ~~ THEN BEGIN 7
   SAY @17
       IF ~~ THEN REPLY @8 GOTO 4
       IF ~~ THEN REPLY @10 GOTO 3
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 10
   SAY @18
       IF ~~ THEN REPLY @19 GOTO 4
       IF ~~ THEN REPLY @20 GOTO 3
END

IF ~~ THEN BEGIN 11
   SAY @21
       IF ~~ THEN REPLY @22 GOTO 2
       IF ~~ THEN REPLY @23 GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY @24
       IF ~~ THEN REPLY @25 DO ~ActionOverride("HANNA",Enemy())~ EXIT
END


IF ~~ THEN BEGIN 13
   SAY @26
       IF ~~ THEN DO ~SetGlobal("DialogosconHanna","LOCALS",1) SetGlobalTimer("HannaDialogo","GLOBAL",TWO_DAYS) JoinParty()~ EXIT
END


BEGIN ~Hannap~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 8
     SAY @27
         IF ~~ THEN REPLY @28 DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
         IF ~~ THEN REPLY @29 GOTO 9
END


IF ~~ THEN BEGIN 9
   SAY @30
         IF ~~ THEN REPLY @31 DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
         IF ~!AreaCheck("AR0601")
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN REPLY @32 DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("AR0406",685,1123,10)~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 5
   SAY @33
       IF ~~ THEN REPLY @34 DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
       IF ~~ THEN REPLY @35 EXIT
END

CHAIN HANNA Inter01
@36
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN @37
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN @38
== HANNA IF ~IsValidForPartyDialog("Minsc")~ THEN @39
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN @40
== EDWINJ IF ~IsValidForPartyDialog("Edwin")~ THEN @41
== HANNA IF ~IsValidForPartyDialog("Edwin")~ THEN @42
== EDWINJ IF ~IsValidForPartyDialog("Edwin")~ THEN @43
== HANNA IF ~IsValidForPartyDialog("Edwin")~ THEN @44
== CERNDJ IF ~IsValidForPartyDialog("Cernd")~ THEN @45
== ANOMENJ IF ~IsValidForPartyDialog("Anomen")~ THEN @46
== HANNA IF ~IsValidForPartyDialog("Anomen")~ THEN @47
END Hanna 13


BEGIN ~BHANNA~

IF ~Global("DialogosconHanna","LOCALS",2)~ THEN BEGIN HannaBanner01
SAY @48
IF ~~ THEN REPLY @49 GOTO HannaBanner02
IF ~~ THEN REPLY @50 GOTO HannaBanner02
IF ~~ THEN REPLY @51 DO ~SetGlobalTimer("HannaDialogo","GLOBAL",FOUR_DAYS) IncrementGlobal("DialogosconHanna","LOCALS",1) ~ EXIT
END

IF ~~ THEN BEGIN HannaBanner02
SAY @52
=
@53
=
@54
=
@55
IF ~~ THEN REPLY @56 GOTO HannaBanner03
IF ~~ THEN REPLY @57 DO ~SetGlobalTimer("HannaDialogo","GLOBAL",FOUR_DAYS) IncrementGlobal("DialogosconHanna","LOCALS",1) ~ EXIT
END

IF ~~ THEN BEGIN HannaBanner03
SAY @58
=
@59
=
@60
=
@61
IF ~~ THEN DO ~SetGlobalTimer("HannaDialogo","GLOBAL",FOUR_DAYS) IncrementGlobal("DialogosconHanna","LOCALS",1) ~ EXIT
END

IF ~Global("DialogosconHanna","LOCALS",4)~ THEN BEGIN HannaBanner04
SAY @62 
IF ~~ THEN REPLY @63 GOTO HannaBanner05
IF ~~ THEN REPLY @64 GOTO HannaBanner05
IF ~~ THEN REPLY @65 GOTO HannaBanner05 
IF ~~ THEN REPLY @66 EXIT
END

IF ~~ THEN BEGIN HannaBanner05
SAY @67
IF ~~ THEN REPLY @68 GOTO HannaBanner06
IF ~~ THEN REPLY @69 EXIT
END

IF ~~ THEN BEGIN HannaBanner06
SAY @70
IF ~~ THEN REPLY @71 GOTO HannaBanner07
IF ~~ THEN REPLY @72 GOTO HannaBanner08
END

IF ~~ THEN BEGIN HannaBanner07
SAY @73 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HannaBanner08
SAY @74 
IF ~~ THEN EXIT
END


IF ~HPPercentLT(Myself,15) Global("HannaAerieHerida","GLOBAL",0)~ THEN AeriHan01
  SAY @75 
  IF ~~ THEN EXTERN BAERIE AeriHan02
END 

IF ~~ THEN BEGIN AeriHan03
  SAY @76 
  IF ~~ THEN EXIT
END

IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",FEMALE)
Global("HannaPokesEdwin","LOCALS",0)
~ THEN HannaEdwin01
  SAY @77 
  IF ~~ THEN EXTERN BEDWIN HannaEdwin02
END 

IF ~~ THEN BEGIN HannaEdwin03
  SAY @78 
  IF ~~ THEN DO ~ SetGlobal("HannaPokesEdwin","LOCALS",1) SetGlobalTimer("HannaPokesEdwina","GLOBAL",TWO_DAYS)
~ EXIT
END

IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",FEMALE)
Global("HannaPokesEdwin","LOCALS",1) 
GlobalTimerExpired("HannaPokesEdwina","GLOBAL")~ THEN BEGIN HannaEdwin10
  SAY @79 
  IF ~~ THEN EXTERN BEDWIN HannaEdwin11
END

IF ~~ THEN BEGIN HannaEdwin12
  SAY @80 
  IF ~~ THEN DO ~SetGlobal("HannaPokesEdwin","LOCALS",2)~ EXIT
END

APPEND BAERIE
IF ~HPPercentLT(Myself,15) Global("HannaAerieHerida","GLOBAL",0)~ THEN AeriHan02
  SAY @81 
  IF ~~ THEN DO ~ SetGlobal("HannaAerieHerida","GLOBAL",1) ForceSpell("Hanna",CLERIC_CURE_LIGHT_WOUNDS) ~ EXTERN BHanna AeriHan03
END
END

APPEND BEDWIN
IF ~Gender("Edwin",FEMALE) Global("HannaPokesEdwin","LOCALS",0)~ THEN HannaEdwin02
  SAY @82 
  IF ~~ THEN EXTERN BHANNA HannaEdwin03
END

IF ~~ THEN BEGIN HannaEdwin11
  SAY @83 
  IF ~~ THEN EXTERN BHANNA HannaEdwin12
END
END



CHAIN
IF ~InParty("Hanna")
See("Hanna")
!StateCheck("Hanna",STATE_SLEEPING)
Global("HannaAerie1","LOCALS",0)~ THEN BAERIE HCHAIN101
@84
DO ~SetGlobal("HannaAerie1","LOCALS",1)~
==BHANNA @85
==BAERIE @86
==BHANNA @87
==BAERIE @88
==BHANNA @89
EXIT

CHAIN IF
~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",STATE_SLEEPING)
Global("HannaKorgan1","GLOBAL",0)~
THEN BHANNA HCHAIN102
@90 DO ~SetGlobal("HannaKorgan1","GLOBAL",1)~
== BKORGAN @91
== BHANNA @92
== BKORGAN @93
== BHANNA @94
== BKORGAN @95
== BHANNA @96
EXIT



CHAIN
IF ~InParty("Hanna")
See("Hanna")
!StateCheck("Hanna",STATE_SLEEPING)
Global("HannaAerie2","LOCALS",0)~ THEN BAERIE HCHAIN103
@97
DO ~SetGlobal("HannaAerie2","LOCALS",1)~
==BHANNA @98
==BAERIE @99
==BHANNA @100
==BAERIE @101
==BHANNA @102
==BAERIE @103
EXIT

CHAIN IF
~InParty("Hanna")
See("Hanna")
!StateCheck("Hanna",STATE_SLEEPING)
Global("HannaViconia1","GLOBAL",0)~
THEN BVICONI HCHAIN104
@104 DO ~SetGlobal("HannaViconia1","GLOBAL",1)~
== BHANNA @105
== BVICONI @106
== BHANNA @107
== BVICONI @108
== BHANNA @109
== BVICONI @110
== BHANNA @111
== BVICONI @112
== BHANNA @113
== BVICONI @114
== BHANNA @115
== BVICONI @116
== BHANNA @117
= @118
EXIT

CHAIN IF
~InParty("Hanna")
See("Hanna")
!StateCheck("Hanna",STATE_SLEEPING)
Global("HannaMinsc1","GLOBAL",0)~
THEN BMINSC HCHAIN105
@119 DO ~SetGlobal("HannaMinsc1","GLOBAL",1)~
== BHANNA @120
== BMINSC @121
== BHANNA @122
== BMINSC @123
== BHANNA @124
== BMINSC @125
== BHANNA @126
== BMINSC @127
== BHANNA @128
== BMINSC @129
== BHANNA @130
== BMINSC @131
== BHANNA @132
== BMINSC @133
= @134
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("HannaYoshi1","LOCALS",0)~ THEN BHANNA HCHAIN106
@135 DO ~SetGlobal("HannaYoshi1","LOCALS",1)~
== BYOSHIM @136
== BHANNA @137
== BYOSHIM @138
= 
@139
= 
@140
= 
@141
= 
@142
== BHANNA @143
== BYOSHIM @144
== BHANNA @145
== BYOSHIM @146
== BHANNA @147
== BJAN IF ~IsValidForPartyDialog("Jan")~ THEN @148
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("HannaNalia1","LOCALS",0)~ THEN BHANNA HCHAIN107
@149 DO ~SetGlobal("HannaNalia1","LOCALS",1)~
== BNALIA @150
= @151
== BHANNA @152
== BNALIA @153
== BHANNA @154
EXIT


CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("HannaJaheira1","LOCALS",0)~ THEN BHANNA HCHAIN108
@155 
DO ~SetGlobal("HannaJaheira1","LOCALS",1)~
== BJAHEIR @156
== BHANNA @157
== BJAHEIR @158
== BHANNA @159
= @160
== BJAHEIR @161
== BHANNA @162
EXIT

CHAIN IF ~InParty("Hanna")
See("Hanna")
!StateCheck("Hanna",STATE_SLEEPING)
Global("HannaAnomen1","LOCALS",0)~ THEN BANOMEN HCHAIN109
@163 DO ~SetGlobal("HannaAnomen1","LOCALS",1)~
== BHANNA @164
== BANOMEN @165
== BHANNA @166
== BEDWIN IF ~IsValidForPartyDialog("Edwin")~ THEN @167
EXIT

CHAIN IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("HannaHaerDalis1","LOCALS",0)~ THEN BHANNA HCHAIN110
@168 
DO ~SetGlobal("HannaHaerDalis1","LOCALS",1)~
== BHAERDA @169
= @170
== BEDWIN IF ~IsValidForPartyDialog("Edwin")~ THEN @171
== BMINSC IF ~IsValidForPartyDialog("Minsc")~ THEN @172
== BHANNA @173
== BHAERDA @174
== BKORGAN IF ~IsValidForPartyDialog("Korgan")~ THEN @175
== BMINSC IF ~IsValidForPartyDialog("Minsc")~ THEN @176
== BHANNA @177
== BHAERDA @178
= @179
== BMINSC IF ~IsValidForPartyDialog("Minsc")~ THEN @180
== BJAN IF ~IsValidForPartyDialog("Jan")~ THEN @181
== BHAERDA @182
== BIMOEN2 IF ~IsValidForPartyDialog("Imoen2")~ THEN @183
== BHANNA @184
== BHAERDA @185
EXIT

CHAIN
IF ~InParty("Hanna")
See("Hanna")
!StateCheck("Hanna",STATE_SLEEPING)
Global("HannaKeldorn1","LOCALS",0)~ THEN BKELDOR HCHAIN111
@186
DO ~SetGlobal("HannaKeldorn1","LOCALS",1)~
== BHANNA @187
== BKELDOR @188
== BHANNA @189
== BKELDOR @190
== BHANNA @191
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("HannaMazzy1","LOCALS",0)~ THEN BHANNA HCHAIN112
@192 DO ~SetGlobal("HannaMazzy1","LOCALS",1)~
== BMAZZY @193
== BHANNA @194
== BMAZZY @195
== BHANNA @196
== BMAZZY @197
== BHANNA @198
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("HannaCernd1","LOCALS",0)~ THEN BHANNA HCHAIN113
@199 DO ~SetGlobal("HannaCernd1","LOCALS",1)~
== BCERND @200
= @201
== BHANNA @202
== BCERND @203
== BHANNA @204
EXIT

CHAIN
IF ~InParty("Hanna")
See("Hanna")
!StateCheck("Hanna",STATE_SLEEPING)
Global("HannaEdwin1","LOCALS",0)~ THEN BEDWIN HCHAIN114
@205 DO ~SetGlobal("HannaEdwin1","LOCALS",1)~
== BHANNA @206
== BEDWIN @207
== BHANNA @208
== BEDWIN @209
== BHANNA @210
== BEDWIN @211
== BHANNA @212
== BEDWIN @213
== BMINSC IF ~IsValidForPartyDialog("Minsc")~ THEN @214
== BKORGAN IF ~IsValidForPartyDialog("Korgan")~ THEN @215
== BCERND IF ~IsValidForPartyDialog("Cernd")~ THEN @216
== BMAZZY IF ~IsValidForPartyDialog("Mazzy")~ THEN @217
== BKELDOR IF ~IsValidForPartyDialog("Keldor")~ THEN @218
== BHAERDA IF ~IsValidForPartyDialog("HaerDalis")~ THEN @219
== BANOMEN IF ~IsValidForPartyDialog("Anomen")~ THEN @220
== BAERIE IF ~IsValidForPartyDialog("Aerie")~ THEN @221
== BIMOEN2 IF ~IsValidForPartyDialog("Imoen2")~ THEN @222
== BVICONI IF ~IsValidForPartyDialog("Viconia")~ THEN @223
== BJAHEIR IF ~IsValidForPartyDialog("Jaheira")~ THEN @224
== BNALIA IF ~IsValidForPartyDialog("Nalia")~ THEN @225
== BJAN IF ~IsValidForPartyDialog("Jan")~ THEN @226
== BYOSHIM IF ~IsValidForPartyDialog("Yhosimo")~ THEN @227
== BHANNA @228
== BEDWIN @229 
EXIT

CHAIN
IF ~InParty("Hanna")
See("Hanna")
!StateCheck("Hanna",STATE_SLEEPING)
Global("HannaJan1","LOCALS",0)~ THEN BJAN HCHAIN115
@230 DO ~SetGlobal("HannaJan1","LOCALS",1)~
== BHANNA @231
== BJAN @232
== BHANNA @233
== BJAN @234
= @235
== BHANNA @236
EXIT

CHAIN
IF ~InParty("Hanna")
See("Hanna")
!StateCheck("Hanna",STATE_SLEEPING)
Global("HannaJan2","LOCALS",0)~ THEN BJAN HCHAIN116
@237 DO ~SetGlobal("HannaJan2","LOCALS",1)~
== BHANNA @238
== BJAN @239
= @240
== BHANNA @241
== BJAN @242
= @243
== BHANNA @244
== BJAN @245
== BHANNA @246
== BJAN @247
= @248
= @249
= @250
= @251
= @252
= @253
= @254
= @255 
= @256 
= @257
= @258 
= @259
= @260 
= @261
= @262 
= @263
= @264
== BHANNA @265
== BJAN @266
== BHANNA @267
== BJAN @268
== BMINSC IF ~IsValidForPartyDialog("Minsc")~ THEN @269
== BKORGAN IF ~IsValidForPartyDialog("Korgan")~ THEN @270
== BEDWIN IF ~IsValidForPartyDialog("Edwin")~ THEN @271
== BHAERDA IF ~IsValidForPartyDialog("HaerDalis")~ THEN @272
== BJAHEIR IF ~IsValidForPartyDialog("Jaheira")~ THEN @273
EXIT


CHAIN IF ~Dead("Mazzy")
Global("MazzyDie","LOCALS",0)~ THEN BHANNA HCHAIN201
@274 DO ~SetGlobal("MazzyDie","LOCALS",1)~ 
EXIT

CHAIN IF ~Dead("Minsc")
Global("MinscDie","LOCALS",0)~ THEN BHANNA HCHAIN202
@275 DO ~SetGlobal("MinscDie","LOCALS",1)~ 
EXIT

CHAIN IF ~Dead("Aerie")
Global("AerieDie","LOCALS",0)~ THEN BHANNA HCHAIN203
@276 DO ~SetGlobal("AerieDie","LOCALS",1)~ 
EXIT


BEGIN ~Hannaj~

IF ~AreaCheck("AR2000") Global("Hannacaravasar","GLOBAL",0)~ THEN BEGIN 20 
  SAY @277 
 IF ~~ THEN DO ~SetGlobal("Hannacaravasar","GLOBAL",1)~ GOTO 23
END


IF ~AreaCheck("AR1904") Global("Hannatroll","GLOBAL",0)~ THEN BEGIN 21 
  SAY @278 
 IF ~~ THEN DO ~SetGlobal("Hannatroll","GLOBAL",1)~ EXIT
END

IF ~AreaCheck("AR0406") Global("HannaCorona","GLOBAL",0)~ THEN BEGIN 22 
  SAY @279 
 IF ~~ THEN DO ~SetGlobal("HannaCorona","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 23
   SAY @280
       IF ~~ THEN REPLY @281 GOTO 24
END

IF ~~ THEN BEGIN 24
   SAY @282
       IF ~~ THEN EXIT
END


IF ~AreaCheck("AR1300") Global("HannaCastillo","GLOBAL",0)~ THEN BEGIN HACAS 
  SAY @283 
 IF ~~ THEN DO ~SetGlobal("HannaCastillo","GLOBAL",1)~ GOTO HACAS2
END

IF ~~ THEN BEGIN HACAS2
   SAY @284
       IF ~~ THEN EXTERN HANNAj Inter02
END

IF ~~ THEN BEGIN HACAS3
SAY @285
IF ~~ THEN EXIT
END

I_C_T RENAL 30 HannaRenal
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @286
END

I_C_T FIRKRA02 21 HannaFirkraag
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @287
END

I_C_T FIRKRA02 25 HannaFirkraag2
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @288
END

I_C_T TORGAL 1 HannaTorgal1
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @289
END

I_C_T TORGAL 2 HannaTorgal2
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @290
END

I_C_T TORGAL 3 HannaTorgal3
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @291
END

I_C_T TORGAL 4 HannaTorgal4
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @292
END

I_C_T TORGAL 5 HannaTorgal5
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @293
END

I_C_T SHADRA01 0 HannaDragonson
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @294
== SHADRA01 IF ~IsValidForPartyDialog("Hanna")~ THEN @295
END

I_C_T MAZZY 6 HannaMazzy
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @296
END

I_C_T EDWIN 3 HannaEdwin
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @297
END

I_C_T EDWIN 2 HannaEdwin2
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @298
END

I_C_T UDSILVER 16 HAnnaDragonpla
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @299
END

I_C_T HELLJON 7 HannaIrenicusinfierno
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @300 
END

I_C_T HELLJON 8 HannaIrenicusinfierno
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @300 
END

I_C_T HELLJON 9 HannaIrenicusinfierno
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @300 
END

I_C_T HELLJON 10 HannaIrenicusinfierno
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @300 
END

I_C_T BODHI 8 HAnnaBodhi
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @301
END

I_C_T BODHI 11 HAnnaBodhi
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @302
END

I_C_T BODHI 21 HAnnaBodhi
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @303
END

I_C_T YOSHJ 113 HAnnaYoshimo
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @304
END

I_C_T YOSHJ 103 HAnnaYoshimo2
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @305
END

I_C_T IMOEN2 22 HannaImoenabandonada
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @306
END

I_C_T UDSIMYAZ 16 HannaSimyaz
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @307
END

I_C_T TOLGER 18 HannaTolger
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @308
END

I_C_T UHMAY01 18 HannaImnes
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @309
END

I_C_T PPAPHRIL 4 HannaAphril
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @310
END


I_C_T PPIRENI1 11 HannaPPIreni
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @311
END

I_C_T UDPHAE01 61 HannaPhae
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @312
END

I_C_T PLAYER1 16 HannaIrenicusDead
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @313
END

I_C_T PLAYER1 25 HannaInfierno
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @314
END

I_C_T ARAN 18 HannaAran
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @315
== ARAN IF ~IsValidForPartyDialog("Hanna")~ THEN @316
END

I_C_T BOANASTE 4 HannaValen
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @317
END

I_C_T GARREN 15 HannaGarren
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @318
END

I_C_T PPSAEM 59 HannaSaemon
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @319
END

I_C_T UDOGRE 8 HannaUDOgre
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @320
== UDOGRE IF ~IsValidForPartyDialog("Hanna")~ THEN @321
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @322
END

I_C_T UDSIMYAZ 3 HannaUDSIMYAZ
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @323
END

I_C_T DRAGBLAC 0 HannaDragonIrenicus
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @324
== DRAGBLAC IF ~IsValidForPartyDialog("Hanna")~ THEN @325
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @326
END

I_C_T TAZOK 3 HannaTazok
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @327
END

I_C_T ANOMENJ 1 HannaAnomen1
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @328
END

I_C_T CERND 70 HannaCernd1
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @329
END

I_C_T TOLGER 13 HannaTolger1
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @330
END

I_C_T KORGANJ 1 HannaKorgan
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @331
END

I_C_T KORGANJ 5 HannaKorgan2
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @331
END

I_C_T JAN 5 HannaJan
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @332
END

I_C_T UDSVIR01 0 HannaOdendalGrietagnomo
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @333
END

I_C_T UDSVIR03 7 HannaOroanderRoquemada
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @334
END

I_C_T UDSVIR03 27 HannaOroanderRoquemada2
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @335
END

I_C_T UDDUER03 11 HannaDuegar
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @336
END

I_C_T UDDUER03 11 HannaDuegar
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @336
END

I_C_T EDWINJ 44 HannaEdwin3
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @337
END

I_C_T EDWINJ 46 HannaEdwin4
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @338
END

I_C_T EDWINJ 132 HannaEdwin5
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @339
END

I_C_T NALIAJ 7 HannaNalia1
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @340
END

I_C_T NALIAJ 65 HannaNalia2
== HANNAJ IF ~IsValidForPartyDialog("Hanna")~ THEN @341
END

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialog("Hanna")
Global("Hannaleartad","GLOBAL",0)~ THEN DO ~SetGlobal("Hannaleartad","GLOBAL",1)~ GOTO P133Hann
END

APPEND PLAYER1
IF ~~ P133Hann
SAY @342
++ @343 EXTERN HANNAJ doordie
++ @344 EXTERN HANNAJ bowout
++ @345 EXTERN HANNAJ thankyou
END
END

APPEND HANNAJ
IF ~~ doordie
SAY @346 
IF ~~ GOTO tolend
END

IF ~~ tolend
SAY @347
COPY_TRANS PLAYER1 33
END

IF ~~ bowout
SAY @348
IF ~~ GOTO tolend
END

IF ~~ thankyou
SAY @349
IF ~~ GOTO tolend
END
END

CHAIN HANNAJ Inter02
@350
== NALIAJ IF ~IsValidForPartyDialog("Nalia")~ THEN @351
== HANNA IF ~IsValidForPartyDialog("Nalia")~ THEN @352
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN @353
== KORGANJ IF ~IsValidForPartyDialog("Korgan")~ THEN @354
END Hannaj HACAS3


BEGIN ~Hanna25~

IF ~Global("HannaSummoned","GLOBAL",1)~ THEN BEGIN 0 
  SAY @355
  IF ~~ THEN REPLY @356 DO ~SetGlobal("HannaSummoned","GLOBAL",2)~ GOTO 1
  IF ~~ THEN REPLY @357 DO ~SetGlobal("HannaSummoned","GLOBAL",2)~ GOTO 1
END

IF ~~ THEN BEGIN 1 
  SAY @358
  IF ~~ THEN REPLY @359 GOTO 4
  IF ~~ THEN REPLY @360 GOTO 5
END


IF ~~ THEN BEGIN 4 
  SAY @361 
  IF ~~ THEN REPLY @362 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @363 GOTO 6
END

IF ~~ THEN BEGIN 5 
  SAY @364 
  IF ~~ THEN REPLY @362 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @365 GOTO 6
END

IF ~~ THEN BEGIN 6 
  SAY @366 
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1) MoveToPointNoInterrupt([1868.1194])
Face(0)~ EXIT
END

IF ~Global("HannaSummoned","GLOBAL",2)~ THEN BEGIN 7 
  SAY @367 
  IF ~~ THEN REPLY @368 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @369 GOTO 8
END

IF ~~ THEN BEGIN 8 
  SAY @370 
  IF ~~ THEN EXIT
END



BEGIN ~BHANNA25~

CHAIN
IF ~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",STATE_SLEEPING)
Global("HannaSarevok1","LOCALS",0)~ THEN BHANNA25 HCHAIN117
@371 DO ~SetGlobal("HannaSarevok1","LOCALS",1)~
== BSAREV25 @372
= @373
== BHANNA25 @374
== BSAREV25 @375
== BHANNA25 @376
== BSAREV25 @377
= @378
== BHANNA25 @379
== BSAREV25 @380
EXIT

CHAIN
IF ~InParty("Hanna")
See("Hanna")
!StateCheck("Hanna",STATE_SLEEPING)
Global("HannaJan3","LOCALS",0)~ THEN BJAN25 HCHAIN118
@381 DO ~SetGlobal("HannaJan3","LOCALS",1)~
== BHANNA25 @382
== BJAN25 @383
== BHANNA25 @384
== BJAN25 @385
= @386
= @387
= @388
= @389
= @390
= @391
= @392
= @393
= @394
= @395
== BHANNA25 @396
== BJAN25 @397
== BMINSC25 IF ~IsValidForPartyDialog("Minsc")~ THEN @398
== BKORGA25 IF ~IsValidForPartyDialog("Korgan")~ THEN @399
== BEDWIN25 IF ~IsValidForPartyDialog("Edwin")~ THEN @400
== BNALIA25 IF ~IsValidForPartyDialog("Nalia")~ THEN @401
== BSAREV25 IF ~IsValidForPartyDialog("Sarevok")~ THEN @402
== BHAERD25 IF ~IsValidForPartyDialog("HaerDalis")~ THEN @403
== BHANNA25 @404
== BJAN25 @405
EXIT

CHAIN IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("HannaHaerDalis2","LOCALS",0)~ THEN BHANNA25 HCHAIN119
@406 DO ~SetGlobal("HannaHaerDalis2","LOCALS",1)~
== BHAERD25 @407
= @408 
= @409 
== BMINSC25 IF ~IsValidForPartyDialog("Minsc")~ THEN @410
== BSAREV25 IF ~IsValidForPartyDialog("Sarevok")~ THEN @411
== BHAERD25 @412
= @413
= @414
== BHANNA25 @415
== BMINSC25 IF ~IsValidForPartyDialog("Minsc")~ THEN @416
== BEDWIN25 IF ~IsValidForPartyDialog("Edwin")~ THEN @417
== BHAERD25 @418
= @419
== BMINSC25 IF ~IsValidForPartyDialog("Minsc")~ THEN @420
== BAERIE25 IF ~IsValidForPartyDialog("Aerie")~ THEN @421
== BHAERD25 @422
== BMINSC25 IF ~IsValidForPartyDialog("Minsc")~ THEN @423
== BEDWIN25 IF ~IsValidForPartyDialog("Edwin")~ THEN @424
== BSAREV25 IF ~IsValidForPartyDialog("Sarevok")~ THEN @425
== BHANNA25 @426
== BHAERD25 @427
== BHANNA25 @428
EXIT

CHAIN
IF ~InParty("Hanna")
See("Hanna")
!StateCheck("Hanna",STATE_SLEEPING)
Global("HannaAerie2","LOCALS",0)~ THEN BAERIE25 HCHAIN120
@429
DO ~SetGlobal("HannaAerie2","LOCALS",1)~
==BHANNA25 @430
= @431
==BAERIE25 @432
==BHANNA25 @433
==BAERIE25 @434
EXIT

CHAIN IF
~InParty("Hanna")
See("Hanna")
!StateCheck("Hanna",STATE_SLEEPING)
Global("HannaKorgan2","GLOBAL",0)~
THEN BKORGA25 HCHAIN121
@435 DO ~SetGlobal("HannaKorgan2","GLOBAL",1)~
== BHANNA @436
== BKORGA25 @437
== BHANNA @438
== BKORGA25 @439
EXIT

CHAIN
IF ~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",STATE_SLEEPING)
Global("HannaSarevok2","LOCALS",1)~ THEN BHANNA25 HCHAIN122
@440 DO ~SetGlobal("HannaSarevok1","LOCALS",3)~
== BSAREV25 @441
== BHANNA25 @442
== BSAREV25 @443
= @444
== BHANNA25 @445
== BSAREV25 @446
EXIT


CHAIN IF
~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("HannaImoen1","GLOBAL",0)~
THEN BHANNA25 HCHAIN123
@447 DO ~SetGlobal("HannaImoen1","GLOBAL",1)~
== BIMOEN25 @448
== BHANNA25 @449
= @450
== BIMOEN25 @451
== BHANNA25 @452
= @453
== BIMOEN25 @454
== BMINSC25 IF ~IsValidForPartyDialog("Minsc")~ THEN @455
== BHANNA25 @456
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
Global("HannaKeldorn2","LOCALS",0)~ THEN BHANNA25 HCHAIN124
@457
DO ~SetGlobal("HannaKeldorn2","LOCALS",1)~
== BKELDO25 @458
== BHANNA25 @459
== BKELDO25 @460
== BHANNA25 @461
== BKELDO25 @462
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("HannaViconia2","LOCALS",0)~ THEN BHANNA25 HCHAIN125
@463
== BVICON25 @464
== BHANNA25 @465
== BVICON25 @466
== BHANNA25 @467
== BVICON25 @468
EXIT

CHAIN IF
~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("HannaMinsc2","GLOBAL",0)~
THEN BHANNA25 HCHAIN126
@469 DO ~SetGlobal("HannaMinsc2","GLOBAL",1)~
== BMINSC25 @470
== BHANNA25 @471
== BMINSC25 @472
== BHANNA25 @473
== BMINSC25 @474
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("HannaNalia2","LOCALS",0)~ THEN BHANNA25 HCHAIN127
@475 DO ~SetGlobal("HannaNalia1","LOCALS",1)~
== BNALIA25 @476
== BHANNA25 @477
== BNALIA25 @478
== BHANNA25 @479
== BMINSC25 IF ~IsValidForPartyDialog("Minsc")~ THEN @480
== BNALIA25 @481
EXIT

BEGIN ~Hanna25p~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 0t
  SAY @482 
  IF ~~ THEN REPLY @483 DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~AreaCheck("AR4500")~ THEN REPLY @484 DO ~SetGlobal("KickedOut","LOCALS",1)
MoveToPointNoInterrupt([1868.1194])
Face(0)~ GOTO 1t
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @485 DO ~SetGlobal("KickedOut","LOCALS",1)
CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1868.1194],0)~ EXIT
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @484 DO ~SetGlobal("KickedOut","LOCALS",1)~ GOTO 1t
END

IF ~~ THEN BEGIN 1t 
  SAY @486 
  IF ~~ THEN EXIT
END


IF ~Global("KickedOut","LOCALS",1)~ THEN BEGIN 4t 
  SAY @487
  IF ~~ THEN REPLY @488 DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
  IF ~~ THEN REPLY @489 GOTO 6t
END


IF ~~ THEN BEGIN 6t 
  SAY @490 
  IF ~~ THEN EXIT
END

BEGIN ~Hanna25j~

EXTEND_TOP SARVOLO 9 #7
IF ~InParty("Hanna")~ THEN REPLY @491 GOTO volohan
END

CHAIN SARVOLO volohan
@492
== HANNA25J IF ~IsValidForPartyDialog("Hanna")~ THEN @493
EXTERN SARVOLO 9


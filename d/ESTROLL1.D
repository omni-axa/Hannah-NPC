BEGIN ~estroll1~

IF ~True()~  THEN BEGIN 1
  SAY @0
IF ~~ THEN DO ~PlaySound("EFF_M23C")
CreateVisualEffect("SPROTECT",[1102.897])
CreateVisualEffect("SPDISPMA",[1102.897])
CreateCreature("JELLMU",[1102.897],0)
PlaySound("EFF_M23C")
CreateVisualEffect("SPROTECT",[1123.1007])
CreateVisualEffect("SPDISPMA",[1123.1007])
CreateCreature("JELLMU",[1123.1007],0)
PlaySound("EFF_M23C")
CreateVisualEffect("SPROTECT",[1267.1025])
CreateVisualEffect("SPDISPMA",[1267.1025])
CreateCreature("JELLMU",[1267.1025],0)Enemy()
~ EXIT
END
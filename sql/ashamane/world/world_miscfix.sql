UPDATE `creature_template` SET `gossip_menu_id` = 1750, `npcflag` = 3 WHERE `entry` = 1750;

REPLACE INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId` ,`OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES('1750','0','0','I am ready to GO!','0','1','1','29416');

SET @ENTRY := 1750;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,1750,0,0,0,33,55567,0,0,0,0,0,7,0,0,0,0,0,0,0,"Orgus - On Gossip - Kill Credit");


DELETE FROM `creature` WHERE `id`=66292;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseUseFlags`,`PhaseId`,`PhaseGroup`,`terrainSwapMap`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`unit_flags2`,`unit_flags3`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(10645862, 66292, 870, 5785, 6516, 1, 0, 0, 0, -1, 0, 0, -463.317, -1904.94, 53.5756, 1.26051, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(10646285, 66292, 870, 5785, 5853, 1, 0, 0, 0, -1, 0, 0, -664.501, -1485.42, 0.272252, 4.44604, 300, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0),
(210116735, 66292, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -8454.1, 1375.32, 139.892, 0.197222, 300, 0, 0, 18387, 0, 0, 0, 0, 0, 0, 0, '', 0);

UPDATE `creature_template` SET `gossip_menu_id` = 66292, `npcflag` = 3 WHERE `entry` = 66292;

REPLACE INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId` ,`OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES('66292','0','0','I am ready to GO!','0','1','1','29416');

SET @ENTRY := 66292;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,66292,0,0,0,33,66292,0,0,0,0,0,7,0,0,0,0,0,0,0,"Orgus - On Gossip - Kill Credit"),
(@ENTRY,0,1,0,20,0,100,0,29548,0,0,0,62,870,0,0,0,0,0,7,0,0,0,-464.317,-1904.94,54.5756,1.26051,'Teleport on Quest End');
DELETE FROM `quest_objectives` WHERE `ID` = '269363'; 


DELETE FROM `quest_objectives` WHERE `ID` = '269137'; 
DELETE FROM `quest_objectives` WHERE `ID` = '269138'; 
UPDATE `quest_objectives` SET `Amount` = '10' WHERE `ID` = '269135'; 
UPDATE `creature_template` SET `KillCredit1` = 66398 WHERE `entry` = 66282;
UPDATE `creature_template` SET `KillCredit1` = 66398 WHERE `entry` = 66290;


DELETE FROM `creature` WHERE `id`=15187;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseUseFlags`,`PhaseId`,`PhaseGroup`,`terrainSwapMap`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`unit_flags2`,`unit_flags3`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(20548900, 15187, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -8335.77, 290.446, 156.832, 4.77213, 300, 0, 0, 5534, 3994, 0, 0, 0, 0, 0, 0, '', 0),
(210116738, 15187, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, -8317.97, 292.232, 156.834, 3.86346, 300, 0, 0, 15117, 3994, 0, 0, 0, 0, 0, 0, '', 0);

REPLACE INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId` ,`OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES('15187','0','0','Could you, please, send me to Moonglade, Emissary?','0','1','1','29416');
UPDATE `creature_template` SET `gossip_menu_id` = 15187 WHERE `entry` = 15187;
SET @ENTRY := 15187;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,15187,0,0,0,62,1,0,0,0,0,0,7,0,0,0,7802.04,-2430.96,488.675,0.296706,"Teleport"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,15,27726,0,0,0,0,0,7,0,0,0,0,0,0,0,"Quest Credit on Teleport");


UPDATE `creature_template` SET `gossip_menu_id` = 15187, `npcflag` = 3 WHERE `entry` = 39865;
REPLACE INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId` ,`OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES('39865','0','0','Could you, please, send me to Hyjal?','0','1','1','29416');
UPDATE `creature_template` SET `gossip_menu_id` = 39865 WHERE `entry` = 39865;
SET @ENTRY := 39865;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,39865,0,0,0,62,1,0,0,0,0,0,7,0,0,0,5491.67,-3563.56,1570.33,2.11185,"Teleport");



-- Baron Geddon SAI
SET @ENTRY := 40147;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,8,15800,18300,11,74813,0,0,0,0,0,1,0,0,0,0,0,0,0,"Cast Inferno on Close"),
(@ENTRY,0,1,1,8,0,100,0,75192,0,0,0,33,40147,0,0,0,0,0,7,0,0,0,0,0,0,0,"on Spell Hit - Give Credit");
DELETE FROM `creature` WHERE `id`=50070;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseUseFlags`,`PhaseId`,`PhaseGroup`,`terrainSwapMap`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`unit_flags2`,`unit_flags3`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(293666, 50070, 1, 616, 4990, 1, 0, 0, 0, -1, 33386, 0, 4881.49, -2804.94, 1437.75, 5.51524, 300, 0, 0, 37187, 8162, 0, 0, 0, 0, 0, 0, '', 0);


DELETE FROM `quest_objectives` WHERE `ID` = '266276';
UPDATE `creature_template` SET `InhabitType` = 1 WHERE `entry` = 38917;
DELETE FROM `quest_objectives` WHERE `ID` = '265937'; 
UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=38917; 
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=38917; 
UPDATE `creature` SET `phaseId`=0 WHERE `id`=38917; 
UPDATE `creature_addon` SET `auras`='' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=38917);



UPDATE `creature_template` SET `flags_extra`=0 WHERE `entry`=41006; 
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=41006; 
UPDATE `creature` SET `phaseId`=0 WHERE `id`=41006; 
UPDATE `creature_addon` SET `auras`='' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=41006);


DELETE FROM `creature_template_addon` WHERE (`entry`=41006);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (41006, 0, 0, 0, 257, 426, '');



-- Crucible of Earth SAI
SET @ENTRY := 39737;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,512,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"On gossip hello close gossip - Quest 25303"),
(@ENTRY,0,1,2,64,0,100,512,0,0,0,0,11,74288,2,18,35,0,0,1,0,0,0,0,0,0,0,"On gossip hello give credit - Quest 25303"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,33,39741,0,0,0,0,0,7,0,0,0,0,0,0,0,"Orgus - On Gossip - Kill Credit");

-- Crucible of Water SAI
SET @ENTRY := 39738;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,512,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"On gossip hello close gossip - Quest 25303"),
(@ENTRY,0,1,2,64,0,100,512,0,0,0,0,11,74292,2,18,35,0,0,1,0,0,0,0,0,0,0,"On gossip hello give credit - Quest 25303"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,33,39740,0,0,0,0,0,7,0,0,0,0,0,0,0,"Orgus - On Gossip - Kill Credit");

-- Crucible of Fire SAI
SET @ENTRY := 39730;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,512,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"On gossip hello close gossip - Quest 25303"),
(@ENTRY,0,1,2,64,0,100,512,0,0,0,0,11,74287,2,18,35,0,0,1,0,0,0,0,0,0,0,"On gossip hello give credit - Quest 25303"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,33,39727,0,0,0,0,0,7,0,0,0,0,0,0,0,"Orgus - On Gossip - Kill Credit");

-- Crucible of Air SAI
SET @ENTRY := 39736;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,512,0,0,0,0,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,"On gossip hello close gossip - Quest 25303"),
(@ENTRY,0,1,2,64,0,100,512,0,0,0,0,11,74290,2,18,35,0,0,1,0,0,0,0,0,0,0,"On gossip hello give credit - Quest 25303"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,33,39739,0,0,0,0,0,7,0,0,0,0,0,0,0,"Orgus - On Gossip - Kill Credit"),
(@ENTRY,0,3,0,64,0,100,0,0,0,0,0,12,39756,6,180000,0,0,0,8,0,0,0,5007.78,-2030.27,1270.89,0.4474,"On gossip hello summon creature - Quest 25303"),
(@ENTRY,0,4,0,64,0,100,0,0,0,0,0,1,0,3000,0,0,0,0,9,39756,1,30,0,0,0,0,"");


UPDATE `creature_template` SET `npcflag` = 3, `rank` = 0, `type` = 1 WHERE `entry` = 39622;
DELETE FROM `creature` WHERE `id`=39622;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseUseFlags`,`PhaseId`,`PhaseGroup`,`terrainSwapMap`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`unit_flags2`,`unit_flags3`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(210116742, 39622, 1, 0, 0, 1, 0, 0, 0, -1, 0, 0, 5130.97, -2306.4, 1280.83, 0.181265, 300, 0, 0, 2626, 0, 0, 16777218, 0, 0, 0, 0, '', 0);
DELETE FROM `creature` WHERE `id`=39627;
INSERT INTO `creature` (`guid`,`id`,`map`,`zoneId`,`areaId`,`spawnMask`,`phaseUseFlags`,`PhaseId`,`PhaseGroup`,`terrainSwapMap`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`unit_flags2`,`unit_flags3`,`dynamicflags`,`ScriptName`,`VerifiedBuild`) VALUES
(210116745, 39627, 1, 0, 0, 1, 0, 0, 0, -1, 0, 0, 5165.56, -2270.54, 1278.79, 6.08669, 300, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, '', 0);


UPDATE `creature_template` SET `faction` = 35 WHERE `entry` = 39622;
UPDATE `creature_template` SET `VehicleId` = 0 WHERE `entry` = 39622;
replace INTO `creature_queststarter` (`id`,`quest`) VALUES ('39432','25279'),('39432','25617'); 
replace INTO `creature_questender` (`id`,`quest`) VALUES ('39432','25272'),('39432','25355'); 



SET @ENTRY := 39622;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,25617,0,0,0,62,1,0,0,0,0,0,7,0,0,0,5009.08,-2044.73,1149.06,5,'Teleport on Quest Add');


SET @ENTRY := 39627;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,25618,0,0,0,62,1,0,0,0,0,0,7,0,0,0,5009.08,-2044.73,1149.06,5,'Teleport on Quest Add');

SET @ENTRY := 39433;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,25623,0,0,0,62,1,0,0,0,0,0,7,0,0,0,5009.08,-2044.73,1149.06,5,'Teleport on Quest Add');


SET @ENTRY := 39432;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,25624,0,0,0,62,1,0,0,0,0,0,7,0,0,0,5009.08,-2044.73,1149.06,5,'Teleport on Quest Add');




































DayZ Origins community build
============================

All credit goes to Cortez for all the hard work to make this mod available.


<u><b>Installing Database:</b></u>

- If you are running your database server on linux be sure that your are configured for lower case via my.cnf (http://dev.mysql.com/doc/refman/5.0/en/identifier-case-sensitivity.html)
- Import \sqlfile\1_dayz_origins.sql into your database
- Run a SQL Query of the contents of \sqlfile\2_dayz_origins_vehicle_fix.sql


<u><b>Installing Files:</b></u>

- Create a folder containing the files from Operation Arrowhead.
- Copy the Addons folder from the Arma 2 folder into the same folder.
- Copy the map (@DayzOrigins) into the same folder. (Downloaded from Dayz Commander or other tool)
- Install the latest OA Beta Patch (http://www.arma2.com/beta-patch.php)
- Edit the following files:<br>
--- \dayz_1.origins.tavi\config.cfg<br>
--- \dayz_1.origins.tavi\HiveExt.ini<br>
--- \dayz_1.origins.tavi\BattlEye\BEServer.cfg<br>
--- \MPMissions\dayz_1.origins.tavi\Debug\player_spawn_2.sqf (More Details Below)<br>
--- \MPMissions\dayz_1.origins.tavi\Camera\loginCamera.sqf (More Details Below)<br><br>


<u><b>Editing player_spawn_2.sqf:</b></u>

Look for:
<pre>
//Debug Info
            _headShots =    player getVariable["headShots",0];
            _kills =                player getVariable["zombieKills",0];
            _killsH =               player getVariable["humanKills",0];
            _killsB =               player getVariable["banditKills",0];
            _humanity =             player getVariable["humanity",0];
            _zombies =              count entities "zZombie_Base";
            _zombiesA =     {alive _x} count entities "zZombie_Base";

                    hintSilent parseText format ["
            <t size='1.15' font='Bitstream' color='#5882FA'>Visit: www.epm-gaming.co.uk</t><br/><br/>
</pre>
    
Edit last line.

<u><b>Editing loginCamera.sqf:</b></u>

Look for:
<pre>
_welcomeMessage = format["Welcome to EPM Gamings's GB 500 #2 Server %1, Enjoy your stay!",format["%1", name player]];
</pre>

Edit this line.

<b><u>Finaly</u></b>
- Run build.bat (It will create the .pbo's)
- Copy all the files from DEPLOY into your folder. (Make sure to maintain the same file structure)

 INSERT INTO dayz_origins.object_data (`ObjectUID`, `Instance`, `Classname`, `Damage`, `CharacterID`, `Worldspace`, `Inventory`, `Hitpoints`, `Fuel`)
    SELECT
 
      OS.ObjectUID
      ,1 as `Instance`
      ,OC.Classname
      ,OC.Damage
      ,NULL AS `CharacterID`
      ,OS.Worldspace
      ,'[]' AS `Inventory`
      ,OC.Hitpoints
      ,5 AS `Fuel`
 
      FROM
        dayz_origins.object_spawns OS
      INNER JOIN dayz_origins.object_classes OC
        ON OS.Classname = OC.Classname
      WHERE
        1 = 1
        AND OS.ObjectUID NOT IN
        (
          SELECT
              ObjectUID
            FROM
              dayz_origins.object_data
            WHERE
              1 = 1
        )
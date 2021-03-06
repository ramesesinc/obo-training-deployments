DROP VIEW IF EXISTS vw_occupancy_permit_info;
CREATE VIEW vw_occupancy_permit_info AS 
SELECT ai.*,
   ov.datatype,
   ov.doctypeid,
   ov.unit,
   ov.caption, 
   ov.category, 
   ov.sortorder 
FROM occupancy_permit_info ai 
INNER JOIN obo_variable ov ON ov.objid = ai.name 

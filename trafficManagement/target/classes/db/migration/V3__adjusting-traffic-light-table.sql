ALTER TABLE TBL_TRAFFIC_LIGHTS RENAME COLUMN CURRENT_STATUS TO CURRENT_COLOR;
ALTER TABLE TBL_TRAFFIC_LIGHTS MODIFY (CURRENT_COLOR VARCHAR2(100) DEFAULT 'RED');
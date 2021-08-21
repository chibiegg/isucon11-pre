CREATE INDEX isu_condition_timestamp ON isu_condition (timestamp);
CREATE INDEX isu_condition_jia_isu_uuid_timestamp ON isu_condition (jia_isu_uuid, timestamp);

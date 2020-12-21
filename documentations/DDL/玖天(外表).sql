-- env_lsosurface
CREATE EXTERNAL  TABLE env_lsosurface(  
date string DEFAULT NULL COMMENT '��ֵ���ʱ��',  
feature string DEFAULT NULL COMMENT '7��������������',
lsosurface string DEFAULT NULL COMMENT '��ֵ������' 
)
PARTITIONED BY (
partid string)
ROW FORMAT SERDE
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES (
'field.delim'='\t', 
'serialization.format'='\t') 
STORED AS INPUTFORMAT 
'org.apache.hadoop.mapred.TextInputFormat'  
OUTPUTFORMAT 
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'  
LOCATION  
'hdfs://nameservice1/xnyy/ext_data/jiutian/ENV_LSOSURFACE' 
TBLPROPERTIES ( 
'transient_lastDdlTime'='1577278901')

-- env_obs_hor_grid
CREATE EXTERNAL  TABLE env_obs_hor_grid(
point string DEFAULT NULL COMMENT '��ʶΨһ�ľ�γ�ȵ�', 
lat decimal(38,10) DEFAULT NULL COMMENT 'γ��',  
lon decimal(38,10) DEFAULT NULL COMMENT '����',  
pm10 decimal(38,10) DEFAULT NULL COMMENT 'pm10',  
pm25 decimal(38,10) DEFAULT NULL COMMENT 'pm2.5', 
co decimal(38,10) DEFAULT NULL COMMENT 'һ����̼', 
no2 decimal(38,10) DEFAULT NULL COMMENT '��������',
o3 decimal(38,10) DEFAULT NULL COMMENT '����',
so2 decimal(38,10) DEFAULT NULL COMMENT '��������',
aqi decimal(38,10) DEFAULT NULL COMMENT 'AQI', 
areacode string DEFAULT NULL COMMENT '��������',
date string DEFAULT NULL COMMENT '���ڣ������գ�', 
time string DEFAULT NULL COMMENT 'Сʱ' 
)
PARTITIONED BY (
partid string)
ROW FORMAT SERDE
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES (
'field.delim'=',',  
'serialization.format'=',')  
STORED AS INPUTFORMAT 
'org.apache.hadoop.mapred.TextInputFormat'  
OUTPUTFORMAT 
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'  
LOCATION  
'hdfs://nameservice1/xnyy/ext_data/jiutian/ENV_OBS_HOR_GRID'  
TBLPROPERTIES ( 
'transient_lastDdlTime'='1577280645')

-- high_surf_fcst_hor_pg
CREATE EXTERNAL  TABLE high_surf_fcst_hor_pg(  
index string DEFAULT NULL COMMENT '���',  
lat decimal(38,10) DEFAULT NULL COMMENT '��վγ��', 
lon decimal(38,10) DEFAULT NULL COMMENT '��վ����', 
50m_prs decimal(38,10) DEFAULT NULL COMMENT '50m��ѹ(����)', 
70m_prs decimal(38,10) DEFAULT NULL COMMENT '70m��ѹ(����)', 
100m_prs decimal(38,10) DEFAULT NULL COMMENT '100m��ѹ(����)',  
win_d_avg_50m decimal(38,10) DEFAULT NULL COMMENT '50m����(��360�ȷ�λ)',  
win_d_avg_70m decimal(38,10) DEFAULT NULL COMMENT '70m����(��360�ȷ�λ)',  
win_d_avg_100m decimal(38,10) DEFAULT NULL COMMENT '100m����(��360�ȷ�λ)',
win_s_avg_50m decimal(38,10) DEFAULT NULL COMMENT '50m����(��/�룩',
win_s_avg_70m decimal(38,10) DEFAULT NULL COMMENT '70m����(��/�룩',
win_s_avg_100m decimal(38,10) DEFAULT NULL COMMENT '100m����(��/�룩', 
begin_fcst_date string DEFAULT NULL COMMENT '������(������)', 
fcst_date string DEFAULT NULL COMMENT 'Ԥ������(������ʱ)' 
) 
PARTITIONED BY ( 
partid string) 
ROW FORMAT SERDE 
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'  
WITH SERDEPROPERTIES ( 
'field.delim'=',',
'serialization.format'=',')
STORED AS INPUTFORMAT  
'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT  
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'hdfs://nameservice1/xnyy/ext_data/jiutian/HIGH_SURF_FCST_HOR_PG' 
TBLPROPERTIES (  
'transient_lastDdlTime'='1577282772')

-- high_surf_hor_pg
CREATE EXTERNAL  TABLE high_surf_hor_pg(
index string DEFAULT NULL,
lat decimal(38,10) DEFAULT NULL,
lon decimal(38,10) DEFAULT NULL,
50m_prs decimal(38,10) DEFAULT NULL,  
70m_prs decimal(38,10) DEFAULT NULL,  
100m_prs decimal(38,10) DEFAULT NULL, 
win_d_avg_50m decimal(38,10) DEFAULT NULL,  
win_d_avg_70m decimal(38,10) DEFAULT NULL,  
win_d_avg_100m decimal(38,10) DEFAULT NULL, 
win_s_avg_50m decimal(38,10) DEFAULT NULL,  
win_s_avg_70m decimal(38,10) DEFAULT NULL,  
win_s_avg_100m decimal(38,10) DEFAULT NULL, 
date string DEFAULT NULL, 
time string DEFAULT NULL  
)
PARTITIONED BY (
partid string)
ROW FORMAT SERDE
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES (
'field.delim'=',',  
'serialization.format'=',')  
STORED AS INPUTFORMAT 
'org.apache.hadoop.mapred.TextInputFormat'  
OUTPUTFORMAT 
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'  
LOCATION  
'hdfs://nameservice1/xnyy/ext_data/jiutian/HIGH_SURF_HOR_PG'  
TBLPROPERTIES ( 
'transient_lastDdlTime'='1577283218')

-- high_wind_lsosurface
CREATE EXTERNAL  TABLE high_wind_lsosurface(  
date string DEFAULT NULL COMMENT '��ֵ���ʱ��(����/��)',  
feature string DEFAULT NULL COMMENT '����Դ������50m70m@m�繦���ܶȣ�50m70m@mƽ������',
lsosurface string DEFAULT NULL COMMENT '��ֵ������' 
)
ROW FORMAT SERDE
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES (
'field.delim'='\t', 
'serialization.format'='\t') 
STORED AS INPUTFORMAT 
'org.apache.hadoop.mapred.TextInputFormat'  
OUTPUTFORMAT 
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'  
LOCATION  
'hdfs://nameservice1/xnyy/ext_data/jiutian/HIGH_WIND_LSOSURFACE' 
TBLPROPERTIES ( 
'transient_lastDdlTime'='1579003495')

--high_wind_resources_month
CREATE EXTERNAL  TABLE high_wind_resources_month( 
lat decimal(38,10) DEFAULT NULL COMMENT 'γ��',
lon decimal(38,10) DEFAULT NULL COMMENT '����',
wind_power_density_50m decimal(38,10) DEFAULT NULL COMMENT '50m�繦���ܶ�',  
wind_power_density_70m decimal(38,10) DEFAULT NULL COMMENT '70m�繦���ܶ�',  
wind_power_density_100m decimal(38,10) DEFAULT NULL COMMENT '100m�繦���ܶ�',
average_wind_speed_50m decimal(38,10) DEFAULT NULL COMMENT '50mƽ������',
average_wind_speed_70m decimal(38,10) DEFAULT NULL COMMENT '70mƽ������',
average_wind_speed_100m decimal(38,10) DEFAULT NULL COMMENT '100mƽ������', 
turbulence_intensity_50m decimal(38,10) DEFAULT NULL COMMENT '50m����ǿ��', 
turbulence_intensity_70m decimal(38,10) DEFAULT NULL COMMENT '70m����ǿ��', 
turbulence_intensity_100m decimal(38,10) DEFAULT NULL COMMENT '100m����ǿ��',  
wind_speed_frequency_50m string DEFAULT NULL COMMENT '50m����Ƶ�ʣ�json)',
wind_speed_frequency_70m string DEFAULT NULL COMMENT '70m����Ƶ��(json)',
wind_speed_frequency_100m string DEFAULT NULL COMMENT '100m����Ƶ��(json)', 
wind_direction_frequency_50m string DEFAULT NULL COMMENT '50m����Ƶ��(json)',  
wind_direction_frequency_70m string DEFAULT NULL COMMENT '70m����Ƶ��(json)',  
wind_direction_frequency_100m string DEFAULT NULL COMMENT '100m����Ƶ��(json)',
extreme_wind_speed_50m decimal(38,10) DEFAULT NULL COMMENT '50m���ټ�ֵ',
extreme_wind_speed_70m decimal(38,10) DEFAULT NULL COMMENT '70m���ټ�ֵ',
extreme_wind_speed_100m decimal(38,10) DEFAULT NULL COMMENT '100m���ټ�ֵ', 
areacode string DEFAULT NULL COMMENT '��������', 
date string DEFAULT NULL COMMENT '���ڣ����£�',
point string DEFAULT NULL COMMENT '��γ�ȵ�Ψһ��ʶ' 
) 
ROW FORMAT SERDE 
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'  
WITH SERDEPROPERTIES ( 
'field.delim'='\t',  
'serialization.format'='\t')  
STORED AS INPUTFORMAT  
'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT  
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'hdfs://nameservice1/xnyy/ext_data/jiutian/HIGH_WIND_RESOURCES_MONTH'
TBLPROPERTIES (  
'transient_lastDdlTime'='1579002171') 

-- high_wind_resources_year
CREATE EXTERNAL  TABLE high_wind_resources_year(  
lat decimal(38,10) DEFAULT NULL COMMENT 'γ��',
lon decimal(38,10) DEFAULT NULL COMMENT '����',
wind_power_density_50m decimal(38,10) DEFAULT NULL COMMENT '50m�繦���ܶ�',  
wind_power_density_70m decimal(38,10) DEFAULT NULL COMMENT '70m�繦���ܶ�',  
wind_power_density_100m decimal(38,10) DEFAULT NULL COMMENT '100m�繦���ܶ�',
average_wind_speed_50m decimal(38,10) DEFAULT NULL COMMENT '50mƽ������',
average_wind_speed_70m decimal(38,10) DEFAULT NULL COMMENT '70mƽ������',
average_wind_speed_100m decimal(38,10) DEFAULT NULL COMMENT '100mƽ������', 
turbulence_intensity_50m decimal(38,10) DEFAULT NULL COMMENT '50m����ǿ��', 
turbulence_intensity_70m decimal(38,10) DEFAULT NULL COMMENT '70m����ǿ��', 
turbulence_intensity_100m decimal(38,10) DEFAULT NULL COMMENT '100m����ǿ��',  
wind_speed_frequency_50m string DEFAULT NULL COMMENT '50m����Ƶ�ʣ�json)',
wind_speed_frequency_70m string DEFAULT NULL COMMENT '70m����Ƶ��(json)',
wind_speed_frequency_100m string DEFAULT NULL COMMENT '100m����Ƶ��(json)', 
wind_direction_frequency_50m string DEFAULT NULL COMMENT '50m����Ƶ��(json)',  
wind_direction_frequency_70m string DEFAULT NULL COMMENT '70m����Ƶ��(json)',  
wind_direction_frequency_100m string DEFAULT NULL COMMENT '100m����Ƶ��(json)',
extreme_wind_speed_50m decimal(38,10) DEFAULT NULL COMMENT '50m���ټ�ֵ',
extreme_wind_speed_70m decimal(38,10) DEFAULT NULL COMMENT '70m���ټ�ֵ',
extreme_wind_speed_100m decimal(38,10) DEFAULT NULL COMMENT '100m���ټ�ֵ', 
areacode string DEFAULT NULL COMMENT '��������', 
date string DEFAULT NULL COMMENT '���ڣ��꣩', 
point string DEFAULT NULL COMMENT '��γ�ȵ�Ψһ��ʶ' 
) 
ROW FORMAT SERDE 
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'  
WITH SERDEPROPERTIES ( 
'field.delim'='\t',  
'serialization.format'='\t')  
STORED AS INPUTFORMAT  
'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT  
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'hdfs://nameservice1/xnyy/ext_data/jiutian/HIGH_WIND_RESOURCES_YEAR' 
TBLPROPERTIES (  
'transient_lastDdlTime'='1579050704')

-- rad_huabei_30years_avg
CREATE EXTERNAL  TABLE rad_huabei_30years_avg( 
total_rad decimal(38,10) DEFAULT NULL COMMENT 'ˮƽ�ܷ���',
lat decimal(38,10) DEFAULT NULL COMMENT 'γ��',
lon decimal(38,10) DEFAULT NULL COMMENT '����',
areacode string DEFAULT NULL COMMENT 'ʡ����������'
) 
ROW FORMAT SERDE 
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'  
WITH SERDEPROPERTIES ( 
'field.delim'=',',
'serialization.format'=',')
STORED AS INPUTFORMAT  
'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT  
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'hdfs://nameservice1/xnyy/ext_data/jiutian/RAD_HUABEI_30YEARS_AVG '  
TBLPROPERTIES (  
'transient_lastDdlTime'='1577511845')

-- rad_wind_huabei_30years_avg_lsosurface
CREATE EXTERNAL  TABLE rad_wind_huabei_30years_avg_lsosurface(
feature string DEFAULT NULL COMMENT '��ͷ���Դ����',  
lsosurface string DEFAULT NULL COMMENT '��ֵ������'  
) 
ROW FORMAT SERDE 
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'  
WITH SERDEPROPERTIES ( 
'field.delim'='\t',  
'serialization.format'='\t')  
STORED AS INPUTFORMAT  
'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT  
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'hdfs://nameservice1/xnyy/ext_data/jiutian/RAD_WIND_HUABEI_30YEARS_AVG_LSOSURFACE'  
TBLPROPERTIES (  
'transient_lastDdlTime'='1577355786')

-- radi_hor_pg
CREATE EXTERNAL  TABLE radi_hor_pg(  
index string DEFAULT NULL,
lat decimal(38,10) DEFAULT NULL,
lon decimal(38,10) DEFAULT NULL,
global_rad decimal(38,10) DEFAULT NULL,  
date string DEFAULT NULL, 
time string DEFAULT NULL  
)
PARTITIONED BY (
partid string)
ROW FORMAT SERDE
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES (
'field.delim'=',',  
'serialization.format'=',')  
STORED AS INPUTFORMAT 
'org.apache.hadoop.mapred.TextInputFormat'  
OUTPUTFORMAT 
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'  
LOCATION  
'hdfs://nameservice1/xnyy/ext_data/jiutian/RADI_HOR_PG' 
TBLPROPERTIES ( 
'transient_lastDdlTime'='1577279434')

-- raid_resources_month
CREATE EXTERNAL  TABLE raid_resources_month(
lat decimal(38,10) DEFAULT NULL COMMENT 'γ��',
lon decimal(38,10) DEFAULT NULL COMMENT '����',
total_rad decimal(38,10) DEFAULT NULL COMMENT '�ܷ�����', 
normal_direct_rad decimal(38,10) DEFAULT NULL COMMENT '����ֱ����������',
direct_rad decimal(38,10) DEFAULT NULL COMMENT 'ֱ�ӷ���',
scattered_rad decimal(38,10) DEFAULT NULL COMMENT 'ɢ�����',
areacode string DEFAULT NULL COMMENT '��������', 
date string DEFAULT NULL COMMENT '����(���£�',
point string DEFAULT NULL COMMENT '��γ��Ψһ��ʶ'  
) 
ROW FORMAT SERDE 
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'  
WITH SERDEPROPERTIES ( 
'field.delim'='\t',  
'serialization.format'='\t')  
STORED AS INPUTFORMAT  
'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT  
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'hdfs://nameservice1/xnyy/ext_data/jiutian/RAID_RESOURCES_MONTH'  
TBLPROPERTIES (  
'transient_lastDdlTime'='1579050998')

-- raid_resources_year
CREATE EXTERNAL  TABLE raid_resources_year( 
lat decimal(38,10) DEFAULT NULL COMMENT 'γ��',
lon decimal(38,10) DEFAULT NULL COMMENT '����',
total_rad decimal(38,10) DEFAULT NULL COMMENT '�ܷ�����', 
normal_direct_rad decimal(38,10) DEFAULT NULL COMMENT '����ֱ����������',
direct_rad decimal(38,10) DEFAULT NULL COMMENT 'ֱ�ӷ���',
scattered_rad decimal(38,10) DEFAULT NULL COMMENT 'ɢ�����',
solar_stability decimal(38,10) DEFAULT NULL COMMENT '̫�����ȶ���',  
areacode string DEFAULT NULL COMMENT '��������', 
date string DEFAULT NULL COMMENT '����(�꣩', 
point string DEFAULT NULL COMMENT '��γ��Ψһ��ʶ'  
) 
ROW FORMAT SERDE 
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'  
WITH SERDEPROPERTIES ( 
'field.delim'='\t',  
'serialization.format'='\t')  
STORED AS INPUTFORMAT  
'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT  
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'hdfs://nameservice1/xnyy/ext_data/jiutian/RAID_RESOURCES_YEAR'
TBLPROPERTIES (  
'transient_lastDdlTime'='1579051194') 

-- surf_fcst_hor_pg
CREATE EXTERNAL  TABLE surf_fcst_hor_pg(  
index string DEFAULT NULL COMMENT '���', 
lat decimal(38,10) DEFAULT NULL COMMENT '��վγ��',  
lon decimal(38,10) DEFAULT NULL COMMENT '��վ����',  
tem decimal(38,10) DEFAULT NULL COMMENT '����(���϶�)',  
prs decimal(38,10) DEFAULT NULL COMMENT '��ѹ(����)',
rhu decimal(38,10) DEFAULT NULL COMMENT '���ʪ��(�ٷ���)',
win_d_avg_2mi decimal(38,10) DEFAULT NULL COMMENT '����(��360�ȷ�λ)',
win_s_avg_2mi decimal(38,10) DEFAULT NULL COMMENT '����(��/�룩', 
pre_1h decimal(38,10) DEFAULT NULL COMMENT '��ȥ1Сʱ�ۼƽ����������ף�', 
vis_min decimal(38,10) DEFAULT NULL COMMENT '��Сˮƽ�ܼ��ȣ��ף�', 
clo_cov decimal(38,10) DEFAULT NULL COMMENT '���������ٷ��ʣ�',
wep_now string DEFAULT NULL COMMENT '��������',
global_rad decimal(38,10) DEFAULT NULL COMMENT '�ܷ�����նȣ�W.m-2��', 
begin_fcst_date string DEFAULT NULL COMMENT '������(������)',  
fcst_date string DEFAULT NULL COMMENT 'Ԥ������(������ʱ)'  
)  
PARTITIONED BY (  
partid string)  
ROW FORMAT SERDE  
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'
WITH SERDEPROPERTIES (  
'field.delim'=',', 
'serialization.format'=',') 
STORED AS INPUTFORMAT
'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat' 
LOCATION 
'hdfs://nameservice1/xnyy/ext_data/jiutian/SURF_FCST_HOR_PG' 
TBLPROPERTIES (
'transient_lastDdlTime'='1577283082')

-- surf_hor_pg
CREATE EXTERNAL  TABLE surf_hor_pg(  
index string DEFAULT NULL,
lat decimal(38,10) DEFAULT NULL,
lon decimal(38,10) DEFAULT NULL,
tem decimal(38,10) DEFAULT NULL,
prs decimal(38,10) DEFAULT NULL,
rhu decimal(38,10) DEFAULT NULL,
pre_1h decimal(38,10) DEFAULT NULL,
win_d_avg_2mi decimal(38,10) DEFAULT NULL,  
win_s_avg_2mi decimal(38,10) DEFAULT NULL,  
clo_cov decimal(38,10) DEFAULT NULL,  
vis_min decimal(38,10) DEFAULT NULL,  
wep_now string DEFAULT NULL, 
date string DEFAULT NULL, 
time string DEFAULT NULL  
)
PARTITIONED BY (
partid string)
ROW FORMAT SERDE
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES (
'field.delim'=',',  
'serialization.format'=',')  
STORED AS INPUTFORMAT 
'org.apache.hadoop.mapred.TextInputFormat'  
OUTPUTFORMAT 
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'  
LOCATION  
'hdfs://nameservice1/xnyy/ext_data/jiutian/SURF_HOR_PG' 
TBLPROPERTIES ( 
'transient_lastDdlTime'='1577279862')

-- surf_mon_pg
CREATE EXTERNAL  TABLE surf_mon_pg(  
areacode decimal(38,10) DEFAULT NULL, 
thund decimal(38,10) DEFAULT NULL, 
ice decimal(38,10) DEFAULT NULL,
win_s_2mi_avg decimal(38,10) DEFAULT NULL,  
date string DEFAULT NULL  
)
ROW FORMAT SERDE
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES (
'field.delim'=',',  
'serialization.format'=',')  
STORED AS INPUTFORMAT 
'org.apache.hadoop.mapred.TextInputFormat'  
OUTPUTFORMAT 
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'  
LOCATION  
'hdfs://nameservice1/xnyy/ext_data/jiutian/SURF_MON_PG' 
TBLPROPERTIES ( 
'transient_lastDdlTime'='1577280170')

-- wind_huabei_30years_avg
CREATE EXTERNAL  TABLE wind_huabei_30years_avg(
lat decimal(38,10) DEFAULT NULL COMMENT 'γ��',
lon decimal(38,10) DEFAULT NULL COMMENT '����',
average_wind_speed_70m decimal(38,10) DEFAULT NULL COMMENT '70mƽ������',
wind_power_density_70m decimal(38,10) DEFAULT NULL COMMENT '80mƽ������',
areacode string DEFAULT NULL COMMENT 'ʡ����������'
) 
ROW FORMAT SERDE 
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe'  
WITH SERDEPROPERTIES ( 
'field.delim'=',',
'serialization.format'=',')
STORED AS INPUTFORMAT  
'org.apache.hadoop.mapred.TextInputFormat'
OUTPUTFORMAT  
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
'hdfs://nameservice1/xnyy/ext_data/jiutian/WIND_HUABEI_30YEARS_AVG'  
TBLPROPERTIES (  
'transient_lastDdlTime'='1577511879') 

-- wind_rad_lsosurface
CREATE EXTERNAL  TABLE wind_rad_lsosurface(
date string DEFAULT NULL COMMENT '��ֵ���ʱ��(����/��)',  
feature string DEFAULT NULL COMMENT '�����Դ����',  
lsosurface string DEFAULT NULL COMMENT '��ֵ������' 
)
ROW FORMAT SERDE
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES (
'field.delim'='\t', 
'serialization.format'='\t') 
STORED AS INPUTFORMAT 
'org.apache.hadoop.mapred.TextInputFormat'  
OUTPUTFORMAT 
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'  
LOCATION  
'hdfs://nameservice1/xnyy/ext_data/jiutian/WIND_RAD_LSOSURFACE'  
TBLPROPERTIES ( 
'transient_lastDdlTime'='1579051366')

-- wind_resources_month
CREATE EXTERNAL  TABLE wind_resources_month(  
lat decimal(38,10) DEFAULT NULL COMMENT 'γ��',  
lon decimal(38,10) DEFAULT NULL COMMENT '����',  
wind_power_density decimal(38,10) DEFAULT NULL COMMENT '�繦���ܶ�',  
average_wind_speed decimal(38,10) DEFAULT NULL COMMENT 'ƽ������(��/��)', 
turbulence_intensity decimal(38,10) DEFAULT NULL COMMENT '����ǿ��', 
wind_shear_index decimal(38,10) DEFAULT NULL COMMENT '���б�ָ��', 
wind_speed_frequency string DEFAULT NULL COMMENT '����Ƶ�ʣ�json��ʽ��', 
wind_direction_frequency string DEFAULT NULL COMMENT '����Ƶ�ʣ�json��ʽ��',
extreme_wind_speed decimal(38,10) DEFAULT NULL COMMENT '���ټ�ֵ����/�룩', 
areacode string DEFAULT NULL COMMENT '��������',
date string DEFAULT NULL COMMENT '���ڣ����£�',  
point string DEFAULT NULL COMMENT '��γ�ȵ�Ψһ��ʶ'
)
ROW FORMAT SERDE
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES (
'field.delim'='\t', 
'serialization.format'='\t') 
STORED AS INPUTFORMAT 
'org.apache.hadoop.mapred.TextInputFormat'  
OUTPUTFORMAT 
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'  
LOCATION  
'hdfs://nameservice1/xnyy/ext_data/jiutian/WIND_RESOURCES_MONTH' 
TBLPROPERTIES ( 
'transient_lastDdlTime'='1578998407')

-- wind_resources_year
CREATE EXTERNAL  TABLE wind_resources_year(
lat decimal(38,10) DEFAULT NULL COMMENT 'γ��',  
lon decimal(38,10) DEFAULT NULL COMMENT '����',  
wind_power_density decimal(38,10) DEFAULT NULL COMMENT '�繦���ܶ�',  
average_wind_speed decimal(38,10) DEFAULT NULL COMMENT 'ƽ������(��/��)', 
turbulence_intensity decimal(38,10) DEFAULT NULL COMMENT '����ǿ��', 
wind_shear_index decimal(38,10) DEFAULT NULL COMMENT '���б�ָ��', 
wind_speed_frequency string DEFAULT NULL COMMENT '����Ƶ�ʣ�json��ʽ��', 
wind_direction_frequency string DEFAULT NULL COMMENT '����Ƶ�ʣ�json��ʽ��',
extreme_wind_speed decimal(38,10) DEFAULT NULL COMMENT '���ټ�ֵ����/�룩', 
areacode string DEFAULT NULL COMMENT '��������',
date string DEFAULT NULL COMMENT '���ڣ��꣩',
point string DEFAULT NULL COMMENT '��γ�ȵ�Ψһ��ʶ'
)
ROW FORMAT SERDE
'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
WITH SERDEPROPERTIES (
'field.delim'='\t', 
'serialization.format'='\t') 
STORED AS INPUTFORMAT 
'org.apache.hadoop.mapred.TextInputFormat'  
OUTPUTFORMAT 
'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'  
LOCATION  
'hdfs://nameservice1/xnyy/ext_data/jiutian/WIND_RESOURCES_YEAR'  
TBLPROPERTIES ( 
'transient_lastDdlTime'='1579051689')

-- создать датасет
select adm.create_dataset_schema('ds_14');

-- создать запись о датасете
INSERT INTO adm.datasets
(id, schema_name, owner_user_id, title, description, is_visible)
VALUES(14, 'ds_14', (select id from adm.users u where username = 'adm'), 'SKIM ID', 'SKIM ID', 1);

-- создать источники
INSERT INTO ds_14."_data_sources"
(id, ident, title, url, login, pass, passbin, config, updated, created)
VALUES(-6, 'click_id', 'click_id', 'jdbc:clickhouse://10.82.0.26:8123/click_id?max_insert_block_size=100000&max_threads=8&socket_timeout=1800000', 'korus', NULL, decode('C30D04090302A32908A8F7E895A77AD2400100723FE73040DCA203B6166ED931314D7C97061959C1082F6B02155AEBF31822DF869BEA0588CD82715A154FF1FB6EC5506E1CABB2F438293A8AE95C18BB93','hex'), '{"_connection": {"host": "10.82.0.26", "port": "8123", "flavor": "clickhouse", "options": {"max_threads": "8", "socket_timeout": "1800000", "max_insert_block_size": "100000"}, "database": "click_id"}}'::jsonb, '2024-07-18 13:21:57.257', '2024-07-18 13:21:57.257');
INSERT INTO ds_14."_data_sources"
(id, ident, title, url, login, pass, passbin, config, updated, created)
VALUES(-7, 'luxms_loc', 'luxms_loc', 'jdbc:postgresql://127.0.0.1:5432/mi', 'bi', NULL, decode('C30D04090302BF840D00ECA24CEF71D2380123E8D33BF946C2185E69DF3AE3A8CCD2CF897A3C48E50BFF1864B4CEED28345E7031CD01ACD1C043B30D9949EBAA9CD13F42DBCD3A941E','hex'), '{"_connection": {"host": "127.0.0.1", "port": "5432", "flavor": "postgresql", "options": {}, "database": "mi"}}'::jsonb, '2024-07-18 13:24:08.618', '2024-07-18 13:24:08.618');

-- создать кубы
INSERT INTO ds_14."_cubes"
(id, atlas_source_ident, tenant_source_ident, "name", title, sql_query, config)
VALUES('click_id.assignments_id', 'click_id', NULL, 'assignments_id', 'assignments_id', 'select click_id."assignments_id"."category_task_id" as "category_task_id",
       click_id."assignments_id"."category_task_name" as "category_task_name",
       click_id."assignments_id"."condition_id" as "condition_id",
       click_id."assignments_id"."condition_name" as "condition_name",
       click_id."assignments_id"."execution_status_id" as "execution_status_id",
       click_id."assignments_id"."execution_status_name" as "execution_status_name",
       click_id."assignments_id"."ispo_attribute" as "ispo_attribute",
       click_id."assignments_id"."ispo_fio" as "ispo_fio",
       click_id."assignments_id"."ispo_podr" as "ispo_podr",
       click_id."assignments_id"."ispo_rank" as "ispo_rank",
       click_id."assignments_id"."korr_fio" as "korr_fio",
       click_id."assignments_id"."korr_org" as "korr_org",
       click_id."assignments_id"."korr_post" as "korr_post",
       click_id."assignments_id"."podp_fio" as "podp_fio",
       click_id."assignments_id"."podp_id" as "podp_id",
       click_id."assignments_id"."prez_attr" as "prez_attr",
       click_id."assignments_id"."rdate" as "rdate",
       click_id."assignments_id"."species_task_id" as "species_task_id",
       click_id."assignments_id"."species_task_name" as "species_task_name",
       click_id."assignments_id"."type_task_id" as "type_task_id",
       click_id."assignments_id"."type_task_name" as "type_task_name",
       click_id."assignments_id"."unit_id" as "unit_id",
       click_id."assignments_id"."unit_name" as "unit_name",
       click_id."assignments_id"."value" as "value",
       click_id."assignments_id"."variable_name" as "variable_name",
       click_id."assignments_id"."variable_unit" as "variable_unit",
       click_id."assignments_id"."variable_var" as "variable_var",
       click_id."assignments_id"."variable_vcode" as "variable_vcode",
       click_id."assignments_id"."variable_vcode_type" as "variable_vcode_type",
       click_id."assignments_id"."vcode" as "vcode"
from click_id."assignments_id"', '{}'::jsonb);
INSERT INTO ds_14."_cubes"
(id, atlas_source_ident, tenant_source_ident, "name", title, sql_query, config)
VALUES('click_id.docs_id', 'click_id', NULL, 'docs_id', 'docs_id', 'select click_id."docs_id"."c_parent_docs" as "c_parent_docs",
       click_id."docs_id"."c_post_docs" as "c_post_docs",
       click_id."docs_id"."category_task_id_docs" as "category_task_id_docs",
       click_id."docs_id"."condition_docs" as "condition_docs",
       click_id."docs_id"."content_docs" as "content_docs",
       click_id."docs_id"."ctr_date_docs" as "ctr_date_docs",
       click_id."docs_id"."doc_number_docs" as "doc_number_docs",
       click_id."docs_id"."doc_part_docs" as "doc_part_docs",
       click_id."docs_id"."doc_type_docs" as "doc_type_docs",
       click_id."docs_id"."doc_version_docs" as "doc_version_docs",
       click_id."docs_id"."execution_status_docs" as "execution_status_docs",
       click_id."docs_id"."fact_date_docs" as "fact_date_docs",
       click_id."docs_id"."ispo_attribute_docs" as "ispo_attribute_docs",
       click_id."docs_id"."ispo_fio_docs" as "ispo_fio_docs",
       click_id."docs_id"."ispo_podr_docs" as "ispo_podr_docs",
       click_id."docs_id"."ispo_pol_docs" as "ispo_pol_docs",
       click_id."docs_id"."ispo_rank_docs" as "ispo_rank_docs",
       click_id."docs_id"."ispo_row_id_docs" as "ispo_row_id_docs",
       click_id."docs_id"."ispo_text_docs" as "ispo_text_docs",
       click_id."docs_id"."korr_date_docs" as "korr_date_docs",
       click_id."docs_id"."korr_fio_docs" as "korr_fio_docs",
       click_id."docs_id"."korr_number_docs" as "korr_number_docs",
       click_id."docs_id"."korr_org_docs" as "korr_org_docs",
       click_id."docs_id"."korr_post_docs" as "korr_post_docs",
       click_id."docs_id"."mng_por_cont_docs" as "mng_por_cont_docs",
       click_id."docs_id"."mng_por_docs" as "mng_por_docs",
       click_id."docs_id"."mng_por_sign_date_docs" as "mng_por_sign_date_docs",
       click_id."docs_id"."podp_fio_docs" as "podp_fio_docs",
       click_id."docs_id"."podp_id_docs" as "podp_id_docs",
       click_id."docs_id"."prez_attr_docs" as "prez_attr_docs",
       click_id."docs_id"."rdate_docs" as "rdate_docs",
       click_id."docs_id"."reserv_docs" as "reserv_docs",
       click_id."docs_id"."rzd_isp_docs" as "rzd_isp_docs",
       click_id."docs_id"."species_task_docs" as "species_task_docs",
       click_id."docs_id"."src_document_type_docs" as "src_document_type_docs",
       click_id."docs_id"."src_poruch_docs" as "src_poruch_docs",
       click_id."docs_id"."src_poruch_srok_docs" as "src_poruch_srok_docs",
       click_id."docs_id"."type_task_id_docs" as "type_task_id_docs",
       click_id."docs_id"."viddoc_code_docs" as "viddoc_code_docs",
       click_id."docs_id"."viddoc_text_docs" as "viddoc_text_docs"
from click_id."docs_id"', '{}'::jsonb);
INSERT INTO ds_14."_cubes"
(id, atlas_source_ident, tenant_source_ident, "name", title, sql_query, config)
VALUES('luxms_loc.docs_favorites', 'luxms_loc', NULL, 'docs_favorites', 'docs_favorites', 'select custom."docs_favorites"."doc_number" as "doc_number",
       custom."docs_favorites"."id" as "id",
       custom."docs_favorites"."user_id" as "user_id"
from custom."docs_favorites"', '{}'::jsonb);

-- создать дименшины
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.category_task_id_docs', 'click_id.docs_id', NULL, 'category_task_id_docs', 'STRING', 'category_task_id_docs', 'category_task_id_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.condition_docs', 'click_id.docs_id', NULL, 'condition_docs', 'STRING', 'condition_docs', 'condition_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.content_docs', 'click_id.docs_id', NULL, 'content_docs', 'STRING', 'content_docs', 'content_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.ctr_date_docs', 'click_id.docs_id', NULL, 'ctr_date_docs', 'STRING', 'ctr_date_docs', 'ctr_date_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.execution_status_docs', 'click_id.docs_id', NULL, 'execution_status_docs', 'STRING', 'execution_status_docs', 'execution_status_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.fact_date_docs', 'click_id.docs_id', NULL, 'fact_date_docs', 'STRING', 'fact_date_docs', 'fact_date_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.ispo_fio_docs', 'click_id.docs_id', NULL, 'ispo_fio_docs', 'STRING', 'ispo_fio_docs', 'ispo_fio_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.podp_id_docs', 'click_id.docs_id', NULL, 'podp_id_docs', 'STRING', 'podp_id_docs', 'podp_id_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.reserv_docs', 'click_id.docs_id', NULL, 'reserv_docs', 'STRING', 'reserv_docs', 'reserv_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('luxms_loc.docs_favorites.doc_number', 'luxms_loc.docs_favorites', NULL, 'doc_number', 'STRING', 'doc_number', 'doc_number', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('luxms_loc.docs_favorites.user_id', 'luxms_loc.docs_favorites', NULL, 'user_id', 'STRING', 'user_id', 'user_id', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.category_task_id', 'click_id.assignments_id', NULL, 'category_task_id', 'STRING', 'category_task_id', 'category_task_id', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.category_task_name', 'click_id.assignments_id', NULL, 'category_task_name', 'STRING', 'category_task_name', 'category_task_name', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.condition_id', 'click_id.assignments_id', NULL, 'condition_id', 'STRING', 'condition_id', 'condition_id', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.condition_name', 'click_id.assignments_id', NULL, 'condition_name', 'STRING', 'condition_name', 'condition_name', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.execution_status_id', 'click_id.assignments_id', NULL, 'execution_status_id', 'STRING', 'execution_status_id', 'execution_status_id', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.execution_status_name', 'click_id.assignments_id', NULL, 'execution_status_name', 'STRING', 'execution_status_name', 'execution_status_name', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.ispo_attribute', 'click_id.assignments_id', NULL, 'ispo_attribute', 'STRING', 'ispo_attribute', 'ispo_attribute', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.ispo_fio', 'click_id.assignments_id', NULL, 'ispo_fio', 'STRING', 'ispo_fio', 'ispo_fio', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.ispo_podr', 'click_id.assignments_id', NULL, 'ispo_podr', 'STRING', 'ispo_podr', 'ispo_podr', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.ispo_rank', 'click_id.assignments_id', NULL, 'ispo_rank', 'STRING', 'ispo_rank', 'ispo_rank', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.korr_fio', 'click_id.assignments_id', NULL, 'korr_fio', 'STRING', 'korr_fio', 'korr_fio', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.korr_org', 'click_id.assignments_id', NULL, 'korr_org', 'STRING', 'korr_org', 'korr_org', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.korr_post', 'click_id.assignments_id', NULL, 'korr_post', 'STRING', 'korr_post', 'korr_post', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.podp_fio', 'click_id.assignments_id', NULL, 'podp_fio', 'STRING', 'podp_fio', 'podp_fio', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.podp_id', 'click_id.assignments_id', NULL, 'podp_id', 'STRING', 'podp_id', 'podp_id', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.ispo_row_id_docs', 'click_id.docs_id', NULL, 'ispo_row_id_docs', 'STRING', 'ispo_row_id_docs', 'ispo_row_id_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.ispo_text_docs', 'click_id.docs_id', NULL, 'ispo_text_docs', 'STRING', 'ispo_text_docs', 'ispo_text_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.korr_date_docs', 'click_id.docs_id', NULL, 'korr_date_docs', 'STRING', 'korr_date_docs', 'korr_date_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.korr_fio_docs', 'click_id.docs_id', NULL, 'korr_fio_docs', 'STRING', 'korr_fio_docs', 'korr_fio_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.unit_id', 'click_id.assignments_id', NULL, 'unit_id', 'STRING', 'unit_id', 'unit_id', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.value', 'click_id.assignments_id', NULL, 'value', 'NUMBER', 'value', 'value', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.korr_number_docs', 'click_id.docs_id', NULL, 'korr_number_docs', 'STRING', 'korr_number_docs', 'korr_number_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.korr_org_docs', 'click_id.docs_id', NULL, 'korr_org_docs', 'STRING', 'korr_org_docs', 'korr_org_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.korr_post_docs', 'click_id.docs_id', NULL, 'korr_post_docs', 'STRING', 'korr_post_docs', 'korr_post_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.mng_por_cont_docs', 'click_id.docs_id', NULL, 'mng_por_cont_docs', 'STRING', 'mng_por_cont_docs', 'mng_por_cont_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.mng_por_docs', 'click_id.docs_id', NULL, 'mng_por_docs', 'STRING', 'mng_por_docs', 'mng_por_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.mng_por_sign_date_docs', 'click_id.docs_id', NULL, 'mng_por_sign_date_docs', 'STRING', 'mng_por_sign_date_docs', 'mng_por_sign_date_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.podp_fio_docs', 'click_id.docs_id', NULL, 'podp_fio_docs', 'STRING', 'podp_fio_docs', 'podp_fio_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.prez_attr_docs', 'click_id.docs_id', NULL, 'prez_attr_docs', 'STRING', 'prez_attr_docs', 'prez_attr_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.rdate_docs', 'click_id.docs_id', NULL, 'rdate_docs', 'STRING', 'rdate_docs', 'rdate_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.rzd_isp_docs', 'click_id.docs_id', NULL, 'rzd_isp_docs', 'STRING', 'rzd_isp_docs', 'rzd_isp_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.species_task_docs', 'click_id.docs_id', NULL, 'species_task_docs', 'STRING', 'species_task_docs', 'species_task_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.src_document_type_docs', 'click_id.docs_id', NULL, 'src_document_type_docs', 'STRING', 'src_document_type_docs', 'src_document_type_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.src_poruch_docs', 'click_id.docs_id', NULL, 'src_poruch_docs', 'STRING', 'src_poruch_docs', 'src_poruch_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.src_poruch_srok_docs', 'click_id.docs_id', NULL, 'src_poruch_srok_docs', 'STRING', 'src_poruch_srok_docs', 'src_poruch_srok_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.type_task_id_docs', 'click_id.docs_id', NULL, 'type_task_id_docs', 'STRING', 'type_task_id_docs', 'type_task_id_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.viddoc_code_docs', 'click_id.docs_id', NULL, 'viddoc_code_docs', 'STRING', 'viddoc_code_docs', 'viddoc_code_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.viddoc_text_docs', 'click_id.docs_id', NULL, 'viddoc_text_docs', 'STRING', 'viddoc_text_docs', 'viddoc_text_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('luxms_loc.docs_favorites.id', 'luxms_loc.docs_favorites', NULL, 'id', 'STRING', 'id', 'id', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.prez_attr', 'click_id.assignments_id', NULL, 'prez_attr', 'STRING', 'prez_attr', 'prez_attr', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.rdate', 'click_id.assignments_id', NULL, 'rdate', 'STRING', 'rdate', 'rdate', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.species_task_id', 'click_id.assignments_id', NULL, 'species_task_id', 'STRING', 'species_task_id', 'species_task_id', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.species_task_name', 'click_id.assignments_id', NULL, 'species_task_name', 'STRING', 'species_task_name', 'species_task_name', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.type_task_id', 'click_id.assignments_id', NULL, 'type_task_id', 'STRING', 'type_task_id', 'type_task_id', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.type_task_name', 'click_id.assignments_id', NULL, 'type_task_name', 'STRING', 'type_task_name', 'type_task_name', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.unit_name', 'click_id.assignments_id', NULL, 'unit_name', 'STRING', 'unit_name', 'unit_name', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.variable_name', 'click_id.assignments_id', NULL, 'variable_name', 'STRING', 'variable_name', 'variable_name', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.variable_unit', 'click_id.assignments_id', NULL, 'variable_unit', 'STRING', 'variable_unit', 'variable_unit', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.variable_var', 'click_id.assignments_id', NULL, 'variable_var', 'STRING', 'variable_var', 'variable_var', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.variable_vcode', 'click_id.assignments_id', NULL, 'variable_vcode', 'STRING', 'variable_vcode', 'variable_vcode', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.variable_vcode_type', 'click_id.assignments_id', NULL, 'variable_vcode_type', 'STRING', 'variable_vcode_type', 'variable_vcode_type', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.assignments_id.vcode', 'click_id.assignments_id', NULL, 'vcode', 'STRING', 'vcode', 'vcode', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.c_parent_docs', 'click_id.docs_id', NULL, 'c_parent_docs', 'STRING', 'c_parent_docs', 'c_parent_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.c_post_docs', 'click_id.docs_id', NULL, 'c_post_docs', 'STRING', 'c_post_docs', 'c_post_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.doc_number_docs', 'click_id.docs_id', NULL, 'doc_number_docs', 'STRING', 'doc_number_docs', 'doc_number_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.doc_part_docs', 'click_id.docs_id', NULL, 'doc_part_docs', 'STRING', 'doc_part_docs', 'doc_part_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.doc_type_docs', 'click_id.docs_id', NULL, 'doc_type_docs', 'STRING', 'doc_type_docs', 'doc_type_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.doc_version_docs', 'click_id.docs_id', NULL, 'doc_version_docs', 'STRING', 'doc_version_docs', 'doc_version_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.ispo_attribute_docs', 'click_id.docs_id', NULL, 'ispo_attribute_docs', 'STRING', 'ispo_attribute_docs', 'ispo_attribute_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.ispo_podr_docs', 'click_id.docs_id', NULL, 'ispo_podr_docs', 'STRING', 'ispo_podr_docs', 'ispo_podr_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.ispo_pol_docs', 'click_id.docs_id', NULL, 'ispo_pol_docs', 'STRING', 'ispo_pol_docs', 'ispo_pol_docs', '{"possible_aggregations": []}'::jsonb);
INSERT INTO ds_14."_dimensions"
(id, atlas_cube_id, tenant_cube_id, "name", "type", title, sql_query, config)
VALUES('click_id.docs_id.ispo_rank_docs', 'click_id.docs_id', NULL, 'ispo_rank_docs', 'STRING', 'ispo_rank_docs', 'ispo_rank_docs', '{"possible_aggregations": []}'::jsonb);

-- создать кастомную схему
CREATE schema if not exists custom AUTHORIZATION bi;

-- создать таблицы внутренних справочников
CREATE TABLE custom.docs_favorites (
	id serial4 NOT NULL,
	user_id varchar NULL,
	doc_number varchar NULL
);

-- создать группы пользователей
INSERT INTO rbac.ext_groups
(group_name, config)
VALUES('SAD-SKIM-ID-OS', '{}'::jsonb);

--создать тестовых пользователей
INSERT INTO adm.users
(username, "password", hash_algo, salt, "name", "position", email, phone, lang, access_level, license_role_ident, site_role_ident, is_blocked, ext_id, tags, password_policy, "_password_valid_till", config, sys_config)
VALUES('test@rzd.ru', 'test2024', 'sha512', 'z0G9FF9DBUZ', 'test@rzd.ru', '', 'test@rzd.ru', NULL, 'ru', 'usual'::adm."user_access_level_tp", 'Viewer', 'Viewer', 0, NULL, '{}'::json, NULL, NULL, '{}'::json, '{"ext_domain": "GVC.OAO.RZD", "ext_groups": ["SAD-SKIM-ID-OS"], "ext_role_titles": ["Руководство компании"]}'::jsonb);

INSERT INTO "ekp-sad-users"."Users"
( "Login", "Email",   "IsBlocked", "ExternalId", "PasswordHash", "PasswordSalt", "FirstName", "LastName", "MiddleName", "IsTemporaryPassword", "Location", "AccessBlockedUntil", "CreatedBy", "UpdatedBy")
VALUES( 'test@rzd.ru', 'test@rzd.ru', false, (select id from adm.users where username = 'test@rzd.ru'), 'pM8aW2VJ48XxSL/wcEmiT8OqhcEL1Dvn9s85f9A15mmV9T71GNIiudrfxo5wz+LZTlhII0JRpCd7qXGKGZm2ZQ==', '\x7695f36e9af2be498a7725fe45fb61ce', '', '', '', false, 'Moscow', NULL, '', '');

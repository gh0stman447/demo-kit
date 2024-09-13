-- удалить схему и запись о ней
DROP SCHEMA ds_14 CASCADE;
delete from adm.datasets
where id = 14;

-- удалить таблицы внутренних справочников
DROP TABLE custom.docs_favorites;

-- очистить таблицу с группами пользователей
DELETE FROM rbac.ext_groups
WHERE group_name='SAD-SKIM-ID-TOP';

-- удалить тестовых пользователей
DELETE FROM adm.users
WHERE username='test@rzd.ru';

DELETE FROM "ekp-sad-users"."Users"
WHERE login='test@rzd.ru';

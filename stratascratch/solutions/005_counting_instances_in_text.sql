select 'bull' as word, count(*) from google_file_store where contents SIMILAR TO '%bull%'
UNION
select 'bear' as word, count(*) from google_file_store where contents SIMILAR TO '%bear%'
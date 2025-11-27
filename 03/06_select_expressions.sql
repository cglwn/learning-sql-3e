SELECT language_id,
  'COMMON' language_usage,
  language_id * 3.1415927 lang_pi_value,
  upper(name) language_name
FROM language;

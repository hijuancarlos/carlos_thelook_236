new_lookml_runtime: yes

constant: get_user_name {
  value: "(SELECT status FROM demo_db.orders WHERE id = ${TABLE}.id)"
}

constant: get_first_name{
  value: "(SELECT first_name FROM demo_db.users WHERE first_name LIKE 'a%')"
  }

localization_settings: {
  default_locale: en
  localization_level: permissive
}

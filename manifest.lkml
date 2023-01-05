#<<<<<<< HEAD
#project_name: "thelook_carlos"

new_lookml_runtime: yes

constant: get_user_name {
  value: "(SELECT status FROM demo_db.orders WHERE id = ${TABLE}.id)"
}

constant: get_first_name{
  value: "(SELECT first_name FROM demo_db.users WHERE first_name LIKE 'a%')"
  }
#=======
#new_lookml_runtime: yes

remote_dependency: snowflake_usage {
  url: "https://github.com/llooker/snowflake-usage-block.git"
  ref: "master"
}

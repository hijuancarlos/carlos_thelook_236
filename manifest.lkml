#<<<<<<< HEAD
#project_name: "thelook_carlos"

#ew_lookml_runtime: no

constant: get_user_name {
  value: "(SELECT status FROM demo_db.orders WHERE id = ${TABLE}.id)"
}

constant: get_first_name{
  value: "(SELECT first_name FROM demo_db.users WHERE first_name LIKE 'a%')"
  }
#=======
#new_lookml_runtime: yes


remote_dependency: exchange_rate {
  url: "https://github.com/hijuancarlos/Cities_Data_Lat_Lon.git"
  ref: "master"
}

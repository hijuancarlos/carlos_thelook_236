view: dt_user_suggestion {
  sql_table_name: demo_db.users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
    hidden: yes
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
    hidden: yes
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
    hidden: yes
    }

}

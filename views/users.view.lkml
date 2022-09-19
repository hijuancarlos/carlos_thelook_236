view: users {
  sql_table_name: demo_db.users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: gender_1 {
    type: yesno
    sql: 1 ;;
    drill_fields: [detail*,email,age]
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: first_name_constant{
    type: string
    sql: @{get_first_name} ;;

  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*,email,age]
  }


  dimension: test_city {
    type: string
    sql: ${TABLE}.city ;;
    suggest_explore: users_test
    suggest_dimension: dt_suggestions.users_state
    }

  dimension: date_formatted {
    sql: ${created_date} ;;
    html: {{ rendered_value | date: "%A, %B %e, %Y" }} ;;
  }

  dimension: date_formatted_1 {
    sql: ${created_date} ;;
    html: {{ rendered_value | date: "%A, %B %e, %Y" }} ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      events.count,
      orders.count,
      saralooker.count,
      sindhu.count,
      user_data.count
    ]
  }

#<<<<<<< HEAD
  measure: avg_age {
    type: average
    sql: ${age} ;;
    drill_fields: [detail*]
#=======
}
  set: test {
    fields: [
      sindhu.count,
      user_data.count
      ]
#>>>>>>> branch 'master' of git@github.com:hijuancarlos/gcpm2210_thelook-.git
  }
}

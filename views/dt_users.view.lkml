view: dt_users {
  derived_table: {
    sql: SELECT
          users.id  AS `users.id`,
          users.first_name  AS `users.first_name`,
          users.last_name  AS `users.last_name`,
          users.email  AS `users.email`,
          users.gender  AS `users.gender`,
          users.age  AS `users.age`,
          users.city  AS `users.city`,
          users.country  AS `users.country`,
          users.state AS `users.state`,
          users.zip  AS `users.zip`
      FROM demo_db.users
      ORDER BY
          users.id
      LIMIT 500
       ;;
    #sql_trigger_value: SELECT CURDATE() ;;
    interval_trigger: "5 minutes"
    indexes: ["id"]}

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: users_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.`users.id` ;;
  }

  dimension: users_first_name {
    type: string
    sql: ${TABLE}.`users.first_name` ;;
  }

  dimension: users_last_name {
    type: string
    sql: ${TABLE}.`users.last_name` ;;
  }

  dimension: users_email {
    type: string
    sql: ${TABLE}.`users.email` ;;
  }

  dimension: users_gender {
    type: string
    sql: ${TABLE}.`users.gender` ;;
  }

  dimension: users_age {
    type: number
    sql: ${TABLE}.`users.age` ;;
  }

  dimension: users_city {
    type: string
    sql: ${TABLE}.`users.city` ;;
  }

  dimension: users_country {
    type: string
    sql: ${TABLE}.`users.country` ;;
  }

  dimension: users_state {
    type: string
    sql: ${TABLE}.`users.state` ;;
  }

  dimension: users_zip {
    type: number
    sql: ${TABLE}.`users.zip` ;;
  }

  set: detail {
    fields: [
      users_id,
      users_first_name,
      users_last_name,
      users_email,
      users_gender,
      users_age,
      users_city,
      users_country,
      users_state,
      users_zip
    ]
  }
}

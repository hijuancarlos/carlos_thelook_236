view: dt_suggestions {
  derived_table: {
    sql: SELECT
          DISTINCT(users.state)  AS state,
          users.country  AS country
      FROM demo_db.users  AS users
      WHERE {% condition dt_suggestions.country_filter %} users.country {% endcondition %}
      group by users.city
      ORDER BY
          users.state
       ;;
  }

filter: country_filter {type:string}

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: users_state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: users_country {
    type: string
    sql: ${TABLE}.country ;;
  }

  set: detail {
    fields: [users_state, users_country]
  }
}

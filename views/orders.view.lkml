view: orders {
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  parameter: date_start {
    type: date
    description: "Use this field to select a date to filter results by."
  }

  parameter: date_end {
    type: date
    description: "Use this field to select a date to filter results by."
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  ##Test----

  dimension: max_create_date {
    type: string
    sql: (SELECT MAX(created_at) FROM  demo_db.orders) ;;
  }

  dimension: is_max_close_date {
    type: yesno
    sql: ${created_raw} = ${max_create_date};;
  }


  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    html: {{ rendered_value }} | {{Orders_sum._rendered_value }} of total  ;;
    #drill_fields: [orders*]
  }

  measure: Orders_sum {
    type: sum
    sql: ${user_id} ;;
  }

  measure: Last_Create_Date {
    type: date
    #sql: MAX(${TABLE}.created_at) ;;
    sql: MAX(${TABLE}.created_at);;
    convert_tz: no
  }

  ##-----------------------------------------
  filter: day {
    type: date
  }

##Ticket 529170 bug: 244354400
  dimension: start_date {
    hidden: yes
    type: date
    sql: {% date_start day %} ;;
  }

  dimension: end_date {
    type: date
    sql: {% date_end day %} ;;
  }

##---------------------------------------
  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.id,
      users.first_name,
      users.last_name,
      billion_orders.count,
      fakeorders.count,
      hundred_million_orders.count,
      hundred_million_orders_wide.count,
      order_items.count,
      ten_million_orders.count
    ]
}

dimension: TEST {
  type: string
  sql: CASE WHEN ${is_max_close_date} THEN @{get_user_name} ELSE ${max_create_date} END;;
  # sql: @{get_user_name} ;;

}

  dimension: new_dimension{
    type: string
    sql: (select * from  [SCHEMA].NOT_NULL_GA_SESSION_CDS_SURROGATE_KEY);;

  }

  dimension: id_null {
    type: number
    sql:
      CASE
        WHEN ${TABLE}.id IS NULL THEN 100000000
        ELSE ${TABLE}.id
      END
    ;;
  }

  measure: count_of_cancellations {
    type: number
    sql:COUNT(distinct ${id}) ;;
    drill_fields: [id,user_id,status]
    #sql_distinct_key: ${user_id} ;;
  }

}

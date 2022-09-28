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

  measure: count_test {
    type: count_distinct
    sql: ${gender} ;;
    filters: [gender: "f"]
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
    sql:
    case
        when ${TABLE}.state = 'Alabama' then 'Alabama 2'
    else
        ${TABLE}.state
    end
     ;;
    html:

    {% if state._value == "Alabama 2" %}

    <b>{{rendered_value}}<b>

    {% elsif state._value == "Alaska" %}

    <b>{{rendered_value}}<b>

    {% elsif state._value == "Idaho" %}

    <b>{{rendered_value}}<b>

    {% elsif state._value == "Operating Expenses" %}

    <b>{{rendered_value}}<b>

    {% elsif state._value == "Adjusted EBITDA" %}

    <b>{{rendered_value}}<b>

    {% elsif state._value == "Y/Y Revenue Growth" %}

    <i><font color="grey">{{rendered_value}}</font></i>

    {% elsif state._value == 'Gross Margin %' %}

    <i><font color="grey">{{rendered_value}}</font></i>

    {% elsif state._value == 'Contribution Margin %' %}

    <i><font color="grey">{{rendered_value}}</font></i>

    {% elsif state._value == 'Adjusted EBITDA Margin %' %}

    <i><font color="grey">{{rendered_value}}</font></i>



    {% else %}

    <i><font color="red">{{rendered_value}}</font></i>

    {% endif %} ;;
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


  dimension_group: usage {
    type: time
    datatype: date
    timeframes: [date, week, month, quarter]
    sql: date_format(${TABLE}.created_at,'%Y-%m-%d');;
  }

  dimension: date_formatted {
    type: string
    sql: ${usage_date} ;;
    html: {{ rendered_value | date: "%m/%d/%Y" }} ;;
  }

  dimension: date_formatted_2 {
    type: string
    sql: date_format((${TABLE}.created_at),'%Y%m%d');;

  }
  dimension: max_date_1 {
    type: string
    sql: date_format((SELECT max(${TABLE}.created_at) FROM users),'%Y%m%d');;
  }

  measure: max_date {
    type: string
    sql: date_format(max(${TABLE}.created_at),'%Y%m%d');;
  }
  measure: min_date {
    type: string
    sql: date_format(min(${TABLE}.created_at),'%Y%m%d');;
  }

  measure: max_date_number {
    type: number
    sql: date_format(max(${TABLE}.created_at),'%Y%m%d');;
  }
  measure: min_date_number {
    type: number
    sql: date_format(min(${TABLE}.created_at),'%Y%m%d');;
  }
  dimension: date_formatted_number {
    type: number
    sql: date_format((${TABLE}.created_at),'%Y%m%d');;
  }

  dimension: max_date_ {
    type: date
    sql: (SELECT max(${TABLE}.created_at) FROM users)  ;;
  }

  measure: avg_age_1 {
    type: average
    sql: ${age} ;;
    drill_fields: [detail*]
  }



  measure: metric_value {
    type: average
    label: "Actuals"
    sql: ${TABLE}.age;;
    html:

      {% if state._value == "Alabama 2" %}

      <b>{{rendered_value}}<b>

      {% elsif state._value == "Alaska" %}

      <b>{{rendered_value}}<b>

      {% elsif state._value == "Idaho" %}

      <b>{{rendered_value}}<b>

      {% elsif state._value == "Operating Expenses" %}

      <b>{{rendered_value}}<b>

      {% elsif state._value == "Adjusted EBITDA" %}

      <b>{{rendered_value}}<b>

      {% elsif state._value == "Y/Y Revenue Growth" %}

      <i><font color="grey">{{rendered_value}}</font></i>

      {% elsif state._value == 'Gross Margin %' %}

      <i><font color="grey">{{rendered_value}}</font></i>

      {% elsif state._value == 'Contribution Margin %' %}

      <i><font color="grey">{{rendered_value}}</font></i>

      {% elsif state._value == 'Adjusted EBITDA Margin %' %}

      <i><font color="grey">{{rendered_value}}</font></i>



      {% else %}

       <i><font color="grey">{{rendered_value}}</font></i>

      {% endif %} ;;
  }
}

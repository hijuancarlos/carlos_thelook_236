view: products_test_drill_down {

  sql_table_name: demo_db.products ;;
  drill_fields: [brand, id, category, department, item_name, retail_price]
  set: drills {
    fields: [brand, id, category, department, item_name, retail_price]
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    drill_fields: [drills*]
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
    drill_fields: [drills*]
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
    drill_fields: [drills*]
  }

  dimension: real_state_type{
    type: string
    sql: COALESCE(NULLIF(TRIM(${TABLE}.category), ''), 'Unknown') ;;
  }

  dimension: loan_amount {
    type: number
    value_format_name: usd_0
    sql: ROUND(${TABLE}.retail_price * 10000) ;;
  }

  measure: total_loan_amount{
    type: sum
    value_format: "$0.000,,\"M\""
    sql: ${loan_amount} ;;
  }

  measure: total_capital {
    type: number
    value_format_name: usd_0
    sql: MAX(${TABLE}.retail_price * 234566);;
  }

  measure: total_percent_of_capital{
    type: number
    value_format_name: percent_2
    sql: ${total_loan_amount} / ${total_capital} ;;
  }

  measure: cre_loan_amount {
    type: sum
    value_format_name: usd_0
    sql:COALESCE(${loan_amount}, 0);;
  }

  set: asset_real_estate_details {
    fields:  [real_state_type,total_loan_amount,total_percent_of_capital]
  }
  set: asset_real_estate_status {
    fields:  [orders.status,total_loan_amount,total_percent_of_capital]
  }


  dimension: department {
    type: string
    sql: ${TABLE}.department;;
  }


  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
    drill_fields: [drills*,loan_amount,sku]
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price  ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
    drill_fields: [drills*,loan_amount,rank]
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }

  set: test  {
    fields: [products.brand,products.category,products.count]
  }
}

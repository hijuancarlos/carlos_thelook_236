view: products_test_drill_down {

  sql_table_name: demo_db.products ;;
  drill_fields: [id,brand,category,department,item_name,rank,retail_price,total_capital,total_loan_amount,total_percent_of_capital,cre_loan_amount,asset_real_estate_details*,asset_real_estate_status*,inventory_items.id, inventory_items.cost, inventory_items.create_date,inventory_items.create_time, inventory_items.create_week, inventory_items.create_month, inventory_items.create_quarter,inventory_items.create_year, inventory_items.product_id, inventory_items.sold_date,inventory_items.sold_week, inventory_items.sold_month, inventory_items.sold_quarter, inventory_items.sold_year, inventory_items.sold_total_cost, inventory_items.sold_cost_by_100_liquid, inventory_items.cost_by_100_format]
  set: drills {
    fields: [id,brand,category,department,item_name,rank,retail_price,total_capital,total_loan_amount,total_percent_of_capital,cre_loan_amount,asset_real_estate_details*,asset_real_estate_status*,inventory_items.id, inventory_items.cost, inventory_items.create_date,inventory_items.create_time, inventory_items.create_week, inventory_items.create_month, inventory_items.create_quarter,inventory_items.create_year, inventory_items.product_id, inventory_items.sold_date,inventory_items.sold_week, inventory_items.sold_month, inventory_items.sold_quarter, inventory_items.sold_year, inventory_items.sold_total_cost, inventory_items.sold_cost_by_100_liquid, inventory_items.cost_by_100_format]
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    drill_fields: [drills*]
    group_label: "Entity Information"
    description: "The unique ID of the APM Entity."
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
    drill_fields: [drills*,asset_real_estate_details*,asset_real_estate_status*]
    label: "Entity Additional Information"
    group_label: "Entity Information Brand"
    description: "Information provided to users seeking more information about a specific APM Entity; e.g. URL of organization’s website, name and phone number of a representative."
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
    drill_fields: [drills*,asset_real_estate_details*,asset_real_estate_status*,inventory_items.id, inventory_items.sold, inventory_items.created_date, inventory_items.count]
    group_label: "Entity Information"
    description: "The first line of the organization’s address. Category"
  }

  dimension: real_state_type{
    type: string
    sql: COALESCE(NULLIF(TRIM(${TABLE}.category), ''), 'Unknown') ;;
    drill_fields: [drills*,asset_real_estate_details*,asset_real_estate_status*]
    group_label: "Entity Information"
    description: "The second line of the organization’s address. Real Statre type"
  }

  dimension: loan_amount {
    type: number
    value_format_name: usd_0
    sql: ROUND(${TABLE}.retail_price * 10000) ;;
    drill_fields: [drills*,asset_real_estate_details*,asset_real_estate_status*]
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
    drill_fields: [drills*,asset_real_estate_details*,asset_real_estate_status*,test*]
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
    drill_fields: [id,brand,category,department,item_name,rank,retail_price,total_capital,total_loan_amount,total_percent_of_capital,cre_loan_amount,asset_real_estate_details*,asset_real_estate_status*,inventory_items.id, inventory_items.cost, inventory_items.create_date,inventory_items.create_time, inventory_items.create_week, inventory_items.create_month, inventory_items.create_quarter,inventory_items.create_year, inventory_items.product_id, inventory_items.sold_date,inventory_items.sold_week, inventory_items.sold_month, inventory_items.sold_quarter, inventory_items.sold_year, inventory_items.sold_total_cost, inventory_items.sold_cost_by_100_liquid, inventory_items.cost_by_100_format]
  }

  set: test  {
    fields: [products.brand,products.category,products.count]
  }
}

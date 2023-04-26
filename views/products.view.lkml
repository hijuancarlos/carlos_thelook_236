view: products {
  sql_table_name: demo_db.products ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: total_retail_price {
  type: sum
  sql: ${retail_price} ;;
  }
####TEST

  parameter: attribution_model {
    label: "Attribution Model"
    type: unquoted
    default_value: "full_path_percentage"
    allowed_value: {
      value: "full_path_percentage"
      label: "Full Path Attribution"
    }
    allowed_value: {
      value: "first_click_percentage"
      label: "First Touch Attribution"
    }
    allowed_value: {
      value: "custom_model_percentage"
      label: "Custom Model Attribution"
    }
    allowed_value: {
      value: "last_anon_click_percentage"
      label: "Lead Creation Attribution"
    }
    allowed_value: {
      value: "u_shape_percentage"
      label: "U Shaped Attribution"
    }
    allowed_value: {
      value: "w_shape_percentage"
      label: "W Shaped Attribution"
    }
    allowed_value: {
      value: "retail_price"
      label: "Total"
    }
    allowed_value: {
      value: "rank"
      label: "Test Total"
    }
  }

  measure: attributed_revenue_amount {
    label: "Attributed Revenue Amount (no drill)"
    label_from_parameter: attribution_model
    type: sum
    value_format: "#,##0"
    sql: (${retail_price})/100 ;;
    html: {% if retail_price._value > 1 %}
      <a style="color:inherit" href="#drillmenu" target="_self"> {{ rendered_value }} </a><img src="https://cdn.bizible.com/images/currency-warning.png" style="height: 20px"/>
      {% else %}
      <a style="color:inherit" href="#drillmenu" target="_self"> {{ rendered_value }} </a> <span style="font-size: 70%">{{opportunities.display_currency_opps._value}}</span>
      {% endif %} ;;
  }

  measure: total_retail_price_locale {
    label: "test_locale"
    type: sum
    sql:  ${TABLE}.{% parameter attribution_model %} ;;
    label_from_parameter: attribution_model
  }


#####
  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }

  measure: total_test {
    type: count_distinct
    sql:  ${id} ;;
    filters: {
      field: order_items.order_id
      value: "50"
    }
  }

  ###
  measure: lowest_price {
   type: min
   sql: ${TABLE}.retail_price ;;
   value_format_name: usd_0
  }

  dimension: brand_logo_2 {
    type: string
    sql:
    case when (${TABLE}.department is not null) then ${TABLE}.department else "" end;;
    html:
      {% if rendered_value == "Men" %}
      <img src="http://drive.google.com/uc?export=view&id=1iqWaQiLgvF1lUaE9ErhT6PhLa6uiUIdl" height="180" width="256" />
      {% elsif rendered_value == "Woman" %}
      <img src="http://drive.google.com/uc?export=view&id=1mwl8_595G8nXwymgQX3mxEv8VkcY2c3f" height="180" width="256" />
      {% elsif rendered_value == "" %}
      <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png" height="180" width="256"/>
      {% else %}
      <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png" height="180" width="256"/>
      {% endif %} ;;
  }
}

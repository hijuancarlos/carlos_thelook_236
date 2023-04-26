include: "explore_base.lkml"


explore: order_items_New_York {
  extends: [order_items_on_base]
  label: "Orders From New York"
  sql_always_where: ${users.state} = 'New York';;
  fields: [users*,orders*]
}


explore: products_filter_by_user_attribute {
  #access_filter: {
  #  field: category
  #  user_attribute: category
  #}
}

explore: products_test {
  from: products_test_drill_down
  join: inventory_items {
    view_label: "inventory"
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products_test.id} ;;
    relationship: many_to_one
  }
}

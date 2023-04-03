include: "explore_base.lkml"


explore: order_items_New_York {
  extends: [order_items_on_base]
  label: "Orders From New York"
  sql_always_where: ${users.state} = 'New York';;
  fields: [users*,orders*]
}

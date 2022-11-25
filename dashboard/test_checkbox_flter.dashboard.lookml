- dashboard: test_checkbox_flter
  title: Test_check_box_filters
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 2WpNABFQmrvjOLQOMFYB55
  # EMBEDDED DASHBOARD PARAMETERS
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#008000"
    show_filters_bar: true
    tile_background_color: "lightyellow"
    tile_text_color: "crimson"
  elements:
  - title: Test_check_box_filters
    name: Test_check_box_filters
    model: thelook_carlos
    explore: order_items
    type: table
    fields: [users.state, users.avg_age, users.count, orders.count, orders.Orders_sum,
      inventory_items.total_cost, order_items.total_sale_price]
    filters: {}
    sorts: [users.state]
    limit: 500
    listen:
      State: users.state
    row: 0
    col: 0
    width: 13
    height: 10
  filters:
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: thelook_carlos
    explore: order_items
    listens_to_filters: []
    field: users.state

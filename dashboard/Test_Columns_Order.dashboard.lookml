- dashboard: test_t_518380
  title: Test_T_518380
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: uOmwg5WWFIJHn9iFrXmGk1
  elements:
  - name: New Tile (2)
    title: New Tile
    merged_queries:
    - model: thelook_carlos
      explore: user_data
      type: table
      fields: [users.state, users.count, user_data.count]
      sorts: [users.state]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields: []
    - model: thelook_carlos
      explore: order_items
      type: table
      fields: [users.state, inventory_items.count, orders.status]
      filters:
        users.state: "-NULL"
      sorts: [users.state]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: users.state
        source_field_name: users.state
    type: table
    pivots: [orders.status]
    column_limit: 50
    row: 0
    col: 0
    width: 19
    height: 6
  - name: Merge table
    title: Merge table
    merged_queries:
    - model: thelook_carlos
      explore: user_data
      type: table
      fields: [users.state, users.count, user_data.count]
      sorts: [users.state]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields: []
    - model: thelook_carlos
      explore: order_items
      type: table
      fields: [users.state, inventory_items.count, users.country]
      filters:
        users.state: "-NULL"
      sorts: [users.state]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: users.state
        source_field_name: users.state
    type: table
    pivots: [users.country]
    column_limit: 50
    row: 0
    col: 0
    width: 12
    height: 8
  - name: New_Tile
    title: New_Tile
    merged_queries:
    - model: thelook_carlos
      explore: user_data
      type: table
      fields: [users.state, users.count, user_data.count]
      sorts: [users.state]
      limit: 500
      query_timezone: America/Los_Angeles
    - model: thelook_carlos
      explore: order_items
      type: table
      fields: [users.state, inventory_items.count]
      filters:
        users.state: "-NULL"
      sorts: [users.state]
      limit: 500
      query_timezone: America/Los_Angeles
      join_fields:
      - field_name: users.state
        source_field_name: users.state
    type: table
    row: 0
    col: 0
    width: 7
    height: 12
  - title: Test_T_518380
    name: Test_T_518380
    model: thelook_carlos
    explore: order_items
    type: looker_grid
    fields: [users.state, users.city, users.email, users.first_name, users.last_name,
      users.gender, orders.count, users.zip, users.age, users.id]
    sorts: [orders.count desc 0]
    column_order:
    - users.id
    - users.age
    - users.state
    - users.city
    - users.email
    - users.first_name
    - users.last_name
    - users.gender
    - orders.count
    - users.zip
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      orders.count:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 12

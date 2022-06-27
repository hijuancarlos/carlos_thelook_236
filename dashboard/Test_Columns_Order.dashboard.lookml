- dashboard: test_t_518380
  title: Test_T_518380
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: uOmwg5WWFIJHn9iFrXmGk1
  elements:
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

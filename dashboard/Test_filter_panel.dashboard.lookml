- dashboard: test_filter_panel
  title: Test Filter Panel
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100
  description: ''
  filters_location_top: false
  filters:

  elements:
  - title: Tile Stacked 1
    name: Tile Stacked 1
    model: thelook_carlos
    explore: order_items
    type: looker_column
    fields: [users.count, products.brand, users.state]
    pivots: [products.brand]
    filters:
      orders.created_year: NOT NULL
      users.gender: "-NULL"
    sorts: [users.count desc 0, products.brand]
    limit: 500
    column_limit: 10
    total: true
    row_total: right
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    trellis_rows: 10
    series_types: {}
    trend_lines: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 10
  - title: Tile Pivot 1
    name: Tile Pivot 1
    model: thelook_carlos
    explore: order_items
    type: looker_column
    fields: [users.count, products.brand, users.state]
    pivots: [products.brand]
    filters:
      orders.created_year: NOT NULL
      users.gender: "-NULL"
    sorts: [users.count desc 0, products.brand]
    limit: 500
    column_limit: 10
    total: true
    row_total: right
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    trellis: pivot
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: []
    trellis_rows: 3
    series_types: {}
    trend_lines: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    listen: {}
    row: 10
    col: 0
    width: 24
    height: 10

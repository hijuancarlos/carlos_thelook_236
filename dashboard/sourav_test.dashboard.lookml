- dashboard: sourav_test
  title: Sourav Test
  preferred_viewer: dashboards-next
  preferred_slug: Bcd3Ad9Qa4E2RVxR9vUrvL
  elements:
  - title: Test
    name: Test
    model: thelook_carlos
    explore: order_items
    type: looker_column
    fields: [users.state, orders.negative_count, orders.negative_1, orders.count,
      orders.count_of_cancellations, new_test]
    filters: {}
    sorts: [orders.count desc 0]
    limit: 5
    column_limit: 10
    dynamic_fields: [{category: measure, expression: !!null '', label: new_test, value_format: !!null '',
        value_format_name: !!null '', based_on: order_items.count, _kind_hint: measure,
        measure: new_test, type: count, _type_hint: number, filters: {}}]
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
    listen:
      Created Year: orders.created_year
      Gender: users.gender
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Created Year
    title: Created Year
    type: field_filter
    default_value: NOT NULL
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: thelook_carlos
    explore: order_items
    listens_to_filters: []
    field: orders.created_year
  - name: Gender
    title: Gender
    type: field_filter
    default_value: "-NULL"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: thelook_carlos
    explore: order_items
    listens_to_filters: []
    field: users.gender

- dashboard: test_filters
  title: Test Filters
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_location_top: false
  preferred_slug: d5vFWOT8y0lE86zDhQlkRV
  elements:
  - title: Test Filters
    name: Test Filters
    model: thelook_carlos
    explore: order_items
    type: table
    fields: [users.state, users.count, users.gender]
    pivots: [users.gender]
    filters: {}
    sorts: [users.gender, users.count desc 0]
    limit: 500
    hidden_fields: []
    y_axes: []
    listen:
      Gender: users.gender
      State: users.state
      City: users.city
      Order ID: order_items.order_id
      Zip: users.zip
      Category: products.category
      Department: products.department
      Brand: products.brand
      Status: orders.status
      Rank: products.rank
      Created Date: users.created_date
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Test Filters (Copy)
    name: Test Filters (Copy)
    model: thelook_carlos
    explore: order_items
    type: table
    fields: [users.state, users.count, products.department]
    pivots: [products.department]
    filters: {}
    sorts: [products.department, users.count desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Gender: users.gender
      State: users.state
      City: users.city
      Order ID: order_items.order_id
      Zip: users.zip
      Category: products.category
      Department: products.department
      Brand: products.brand
      Status: orders.status
      Rank: products.rank
      Created Date: users.created_date
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Test Filters (Copy 2)
    name: Test Filters (Copy 2)
    model: thelook_carlos
    explore: order_items
    type: table
    fields: [users.state, products.department, orders.count]
    pivots: [products.department]
    filters: {}
    sorts: [products.department, orders.count desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Gender: users.gender
      State: users.state
      City: users.city
      Order ID: order_items.order_id
      Zip: users.zip
      Category: products.category
      Department: products.department
      Brand: products.brand
      Status: orders.status
      Rank: products.rank
      Created Date: users.created_date
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Test Filters (Copy 3)
    name: Test Filters (Copy 3)
    model: thelook_carlos
    explore: order_items
    type: table
    fields: [users.state, users.gender, orders.count]
    pivots: [users.gender]
    filters: {}
    sorts: [users.gender, orders.count desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Gender: users.gender
      State: users.state
      City: users.city
      Order ID: order_items.order_id
      Zip: users.zip
      Category: products.category
      Department: products.department
      Brand: products.brand
      Status: orders.status
      Rank: products.rank
      Created Date: users.created_date
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Test Filters (Copy 4)
    name: Test Filters (Copy 4)
    model: thelook_carlos
    explore: order_items
    type: table
    fields: [users.state, users.gender, orders.count, users.city]
    pivots: [users.gender]
    filters: {}
    sorts: [users.gender, orders.count desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Gender: users.gender
      State: users.state
      City: users.city
      Order ID: order_items.order_id
      Zip: users.zip
      Category: products.category
      Department: products.department
      Brand: products.brand
      Status: orders.status
      Rank: products.rank
      Created Date: users.created_date
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Test Filters (Copy 5)
    name: Test Filters (Copy 5)
    model: thelook_carlos
    explore: order_items
    type: looker_column
    fields: [users.state, users.gender, orders.count]
    pivots: [users.gender]
    filters: {}
    sorts: [users.gender, orders.count desc 0]
    limit: 500
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Gender: users.gender
      State: users.state
      City: users.city
      Order ID: order_items.order_id
      Zip: users.zip
      Category: products.category
      Department: products.department
      Brand: products.brand
      Status: orders.status
      Rank: products.rank
      Created Date: users.created_date
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Test Filters (Copy 7)
    name: Test Filters (Copy 7)
    model: thelook_carlos
    explore: order_items
    type: looker_bar
    fields: [users.state, products.department, orders.count]
    pivots: [products.department]
    filters: {}
    sorts: [products.department, orders.count desc 0]
    limit: 500
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Gender: users.gender
      State: users.state
      City: users.city
      Order ID: order_items.order_id
      Zip: users.zip
      Category: products.category
      Department: products.department
      Brand: products.brand
      Status: orders.status
      Rank: products.rank
      Created Date: users.created_date
    row: 12
    col: 8
    width: 8
    height: 6
  - title: Test Filters (Copy 6)
    name: Test Filters (Copy 6)
    model: thelook_carlos
    explore: order_items
    type: looker_column
    fields: [users.state, users.count, products.department]
    pivots: [products.department]
    filters: {}
    sorts: [products.department, users.count desc 0]
    limit: 500
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Gender: users.gender
      State: users.state
      City: users.city
      Order ID: order_items.order_id
      Zip: users.zip
      Category: products.category
      Department: products.department
      Brand: products.brand
      Status: orders.status
      Rank: products.rank
      Created Date: users.created_date
    row: 12
    col: 0
    width: 8
    height: 6
  filters:
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
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: thelook_carlos
    explore: order_items
    listens_to_filters: []
    field: users.state
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: thelook_carlos
    explore: order_items
    listens_to_filters: [State]
    field: users.city
  - name: Order ID
    title: Order ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: inline
      options:
      - '100'
    model: thelook_carlos
    explore: order_items
    listens_to_filters: []
    field: order_items.order_id
  - name: Zip
    title: Zip
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: thelook_carlos
    explore: order_items
    listens_to_filters: []
    field: users.zip
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: thelook_carlos
    explore: order_items
    listens_to_filters: []
    field: products.category
  - name: Department
    title: Department
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: thelook_carlos
    explore: order_items
    listens_to_filters: []
    field: products.department
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: thelook_carlos
    explore: order_items
    listens_to_filters: []
    field: products.brand
  - name: Status
    title: Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: thelook_carlos
    explore: order_items
    listens_to_filters: []
    field: orders.status
  - name: Rank
    title: Rank
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: inline
      options:
      - '1'
      - '2'
      - '3'
    model: thelook_carlos
    explore: order_items
    listens_to_filters: []
    field: products.rank
  - name: Created Date
    title: Created Date
    type: field_filter
    default_value: 2022/10/12
    allow_multiple_values: true
    required: false
    ui_config:
      type: day_picker
      display: inline
      options: []
    model: thelook_carlos
    explore: order_items
    listens_to_filters: []
    field: users.created_date

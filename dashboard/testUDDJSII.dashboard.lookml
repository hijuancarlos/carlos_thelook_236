- dashboard: testUDDJSII
  title:  Test Ticket 538963 API Second
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: AiTvccLrc58HHTzECffw3a
  elements:
  - name: Scorecard Metrics
    title: Scorecard Metrics
    merged_queries:
    - model: thelook_carlos
      explore: order_items
      type: table
      fields: [order_items.count, orders.created_month, order_items.sumMoney]
      filters:
        orders.created_month: NOT NULL
        orders.created_date: '2016'
        users.state: ''
        order_items.count: ''
      sorts: [orders.created_month desc]
      limit: 500
      column_limit: 50
      total: true
      hidden_fields: []
      y_axes: []
    - model: thelook_carlos
      explore: fakeorders
      type: table
      fields: [orders.created_month, fakeorders.count]
      fill_fields: [orders.created_month]
      filters:
        orders.created_month: NOT NULL
        orders.created_date: '2016'
        users.state: ''
      sorts: [orders.created_month desc]
      limit: 500
      total: true
      hidden_fields: []
      y_axes: []
      join_fields:
      - field_name: orders.created_month
        source_field_name: orders.created_month
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      order_items.count:
        is_active: false
    table_theme: editable
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    type: looker_grid
    series_types: {}
    hidden_fields: [average_conversion_rate]
    y_axes: []
    total: true
    dynamic_fields: [{category: table_calculation, expression: "${fakeorders.count}/${order_items.count}",
        label: Conversion Rate, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: conversion_rate, _type_hint: number},
      {category: table_calculation, expression: 'sum(${fakeorders.count})/sum(${order_items.count})',
        label: Average Conversion Rate, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: average_conversion_rate, _type_hint: number}]
    listen:
    - Count: order_items.count
      State: users.state
    - State: users.state
    row: 3
    col: 0
    width: 24
    height: 7
  - name: Sum order items count
    title: Sum order items count
    merged_queries:
    - model: thelook_carlos
      explore: order_items
      type: table
      fields: [order_items.count, orders.created_month, order_items.sumMoney]
      filters:
        orders.created_month: NOT NULL
        orders.created_date: '2016'
        order_items.count: ''
        users.state: ''
      sorts: [orders.created_month desc]
      limit: 500
      column_limit: 50
      total: true
      hidden_fields: []
      y_axes: []
    - model: thelook_carlos
      explore: fakeorders
      type: table
      fields: [orders.created_month, fakeorders.count]
      fill_fields: [orders.created_month]
      filters:
        orders.created_month: NOT NULL
        orders.created_date: '2016'
        users.state: ''
      sorts: [orders.created_month desc]
      limit: 500
      total: true
      hidden_fields: []
      y_axes: []
      join_fields:
      - field_name: orders.created_month
        source_field_name: orders.created_month
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Sum order items count
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      order_items.count:
        is_active: false
    table_theme: editable
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    type: single_value
    series_types: {}
    hidden_fields: [average_conversion_rate, order_items.sumMoney, order_items.count,
      fakeorders.count, orders.created_month, conversion_rate]
    y_axes: []
    total: true
    dynamic_fields: [{category: table_calculation, expression: "${fakeorders.count}/${order_items.count}",
        label: Conversion Rate, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: conversion_rate, _type_hint: number},
      {category: table_calculation, expression: 'sum(${order_items.count})/sum(${fakeorders.count})',
        label: Average Conversion Rate, value_format: !!null '', value_format_name: percent_1,
        _kind_hint: measure, table_calculation: average_conversion_rate, _type_hint: number},
      {category: table_calculation, expression: 'sum(${order_items.count})', label: Sum
          order items count, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: sum_order_items_count, _type_hint: number}]
    listen:
    - Count: order_items.count
      State: users.state
    - State: users.state
    row: 0
    col: 0
    width: 6
    height: 3
  - name: Sum Money
    title: Sum Money
    merged_queries:
    - model: thelook_carlos
      explore: order_items
      type: table
      fields: [order_items.count, orders.created_month, order_items.sumMoney]
      filters:
        orders.created_month: NOT NULL
        orders.created_date: '2016'
        order_items.count: ''
        users.state: ''
      sorts: [orders.created_month desc]
      limit: 500
      column_limit: 50
      total: true
      hidden_fields: []
      y_axes: []
    - model: thelook_carlos
      explore: fakeorders
      type: table
      fields: [orders.created_month, fakeorders.count]
      fill_fields: [orders.created_month]
      filters:
        orders.created_month: NOT NULL
        orders.created_date: '2016'
        users.state: ''
      sorts: [orders.created_month desc]
      limit: 500
      total: true
      hidden_fields: []
      y_axes: []
      join_fields:
      - field_name: orders.created_month
        source_field_name: orders.created_month
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Sum money
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      order_items.count:
        is_active: false
    table_theme: editable
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    type: single_value
    series_types: {}
    hidden_fields: [average_conversion_rate, order_items.sumMoney, order_items.count,
      fakeorders.count, orders.created_month, conversion_rate, sum_order_items_count]
    y_axes: []
    total: true
    dynamic_fields: [{category: table_calculation, expression: "${fakeorders.count}/${order_items.count}",
        label: Conversion Rate, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: conversion_rate, _type_hint: number},
      {category: table_calculation, expression: 'sum(${order_items.count})/sum(${fakeorders.count})',
        label: Average Conversion Rate, value_format: !!null '', value_format_name: percent_1,
        _kind_hint: measure, table_calculation: average_conversion_rate, _type_hint: number},
      {category: table_calculation, expression: 'sum(${order_items.count})', label: Sum
          order items count, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: sum_order_items_count, _type_hint: number},
      {category: table_calculation, expression: 'sum(${order_items.sumMoney})', label: Sum
          money, value_format: !!null '', value_format_name: usd, _kind_hint: measure,
        table_calculation: sum_money, _type_hint: number}]
    listen:
    - Count: order_items.count
      State: users.state
    - State: users.state
    row: 0
    col: 6
    width: 6
    height: 3
  - name: Sum Fakeorders
    title: Sum Fakeorders
    merged_queries:
    - model: thelook_carlos
      explore: order_items
      type: table
      fields: [order_items.count, orders.created_month, order_items.sumMoney]
      filters:
        orders.created_month: NOT NULL
        orders.created_date: '2016'
        order_items.count: ''
        users.state: ''
      sorts: [orders.created_month desc]
      limit: 500
      column_limit: 50
      total: true
      hidden_fields: []
      y_axes: []
    - model: thelook_carlos
      explore: fakeorders
      type: table
      fields: [orders.created_month, fakeorders.count]
      fill_fields: [orders.created_month]
      filters:
        orders.created_month: NOT NULL
        orders.created_date: '2016'
        users.state: ''
      sorts: [orders.created_month desc]
      limit: 500
      total: true
      hidden_fields: []
      y_axes: []
      join_fields:
      - field_name: orders.created_month
        source_field_name: orders.created_month
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Sum fakeorders
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      order_items.count:
        is_active: false
    table_theme: editable
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    type: single_value
    series_types: {}
    hidden_fields: [average_conversion_rate, order_items.sumMoney, order_items.count,
      fakeorders.count, orders.created_month, conversion_rate, sum_order_items_count,
      sum_money]
    y_axes: []
    total: true
    dynamic_fields: [{category: table_calculation, expression: "${fakeorders.count}/${order_items.count}",
        label: Conversion Rate, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: conversion_rate, _type_hint: number},
      {category: table_calculation, expression: 'sum(${order_items.count})/sum(${fakeorders.count})',
        label: Average Conversion Rate, value_format: !!null '', value_format_name: percent_1,
        _kind_hint: measure, table_calculation: average_conversion_rate, _type_hint: number},
      {category: table_calculation, expression: 'sum(${order_items.count})', label: Sum
          order items count, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: sum_order_items_count, _type_hint: number},
      {category: table_calculation, expression: 'sum(${order_items.sumMoney})', label: Sum
          money, value_format: !!null '', value_format_name: usd, _kind_hint: measure,
        table_calculation: sum_money, _type_hint: number}, {category: table_calculation,
        expression: 'sum(${fakeorders.count})', label: Sum Fakeorders, value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, table_calculation: sum_fakeorders,
        _type_hint: number}]
    listen:
    - Count: order_items.count
      State: users.state
    - State: users.state
    row: 0
    col: 12
    width: 6
    height: 3
  - name: Average Conversion
    title: Average Conversion
    merged_queries:
    - model: thelook_carlos
      explore: order_items
      type: table
      fields: [order_items.count, orders.created_month, order_items.sumMoney]
      filters:
        orders.created_month: NOT NULL
        orders.created_date: '2016'
        order_items.count: ''
        users.state: ''
      sorts: [orders.created_month desc]
      limit: 500
      column_limit: 50
      total: true
      hidden_fields: []
      y_axes: []
    - model: thelook_carlos
      explore: fakeorders
      type: table
      fields: [orders.created_month, fakeorders.count]
      fill_fields: [orders.created_month]
      filters:
        orders.created_month: NOT NULL
        orders.created_date: '2016'
        users.state: ''
      sorts: [orders.created_month desc]
      limit: 500
      total: true
      hidden_fields: []
      y_axes: []
      join_fields:
      - field_name: orders.created_month
        source_field_name: orders.created_month
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Average Conversion
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      order_items.count:
        is_active: false
    table_theme: editable
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    type: single_value
    series_types: {}
    hidden_fields: [order_items.sumMoney, order_items.count, fakeorders.count, orders.created_month,
      conversion_rate, sum_order_items_count, sum_money, test]
    y_axes: []
    total: true
    dynamic_fields: [{category: table_calculation, expression: "${fakeorders.count}/${order_items.count}",
        label: Conversion Rate, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: conversion_rate, _type_hint: number},
      {category: table_calculation, expression: 'sum(${fakeorders.count})/sum(${order_items.count})',
        label: Average Conversion Rate, value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, table_calculation: average_conversion_rate, _type_hint: number},
      {category: table_calculation, expression: 'sum(${order_items.count})', label: Sum
          order items count, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: sum_order_items_count, _type_hint: number},
      {category: table_calculation, expression: 'sum(${order_items.sumMoney})', label: Sum
          money, value_format: !!null '', value_format_name: usd, _kind_hint: measure,
        table_calculation: sum_money, _type_hint: number}, {category: table_calculation,
        expression: 'sum(${fakeorders.count})', label: Sum Fakeorders, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: sum_fakeorders,
        _type_hint: number}, {category: table_calculation, expression: "${fakeorders.count}/${order_items.count}",
        label: test, value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: test, _type_hint: number}]
    listen:
    - Count: order_items.count
      State: users.state
    - State: users.state
    row: 0
    col: 18
    width: 6
    height: 3
  filters:
  - name: Count
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: thelook_carlos
    explore: order_items
    listens_to_filters: []
    field: order_items.count
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

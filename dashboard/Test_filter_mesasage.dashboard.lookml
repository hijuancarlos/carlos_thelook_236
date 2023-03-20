- dashboard: 1__international_overview_v2
  title: 1. International Overview v2
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 67q08W9Wrzf5dSkLfkylrV
  embed_style:
    background_color: "#F1F4F7"
    show_title: true
    title_color: "#3a4245"
    show_filters_bar: false
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: Sales amount evolution (%)
    name: Sales amount evolution (%)
    model: datashopper
    explore: monitoring
    type: looker_column
    fields: [referential.period_date, supplier.global_sales_evol]
    filters:
      parameters.is_benchmark: 'no'
    sorts: [referential.period_date]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total Sales Evolution, orientation: left, series: [{axisId: supplier.global_sales_evol,
            id: supplier.global_sales_evol, name: Evolution sales amount}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 18
    col: 9
    width: 15
    height: 4
  - title: Sales amount
    name: Sales amount
    model: datashopper
    explore: monitoring
    type: looker_bar
    fields: [supplier.global_sales, referential.period]
    pivots: [referential.period]
    filters:
      parameters.is_benchmark: 'no'
      referential.store_desc_key: ''
      referential.grp_class_key: ''
      referential.class_key: ''
      referential.sub_class_key: ''
      referential.item_key: ''
    sorts: [referential.period desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: supplier.global_sales_current,
            id: supplier.global_sales_current, name: This Year}, {axisId: supplier.global_sales_previous,
            id: supplier.global_sales_previous, name: Last Year}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_labels:
      supplier.global_sales_value_current: This Year
      supplier.global_sales_value_previous: Last Year
      supplier.global_sales_current: This Year
      supplier.global_sales_previous: Last Year
    x_axis_datetime_label: World sales
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 15
    col: 0
    width: 9
    height: 7
  - title: Sales Amount
    name: Sales Amount
    model: datashopper
    explore: monitoring
    type: single_value
    fields: [supplier.global_sales_current, supplier.global_sales_evol]
    filters:
      parameters.is_benchmark: 'no'
      referential.store_desc_key: ''
      referential.class_key: ''
      referential.grp_class_key: ''
      referential.sub_class_key: ''
    sorts: [evolution]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#004e9f"
    single_value_title: ''
    comparison_label: Evolution (%)
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#004e9f",
        font_color: !!null '', color_application: {collection_id: carrefour, palette_id: carrefour-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hide_legend: false
    series_types: {}
    x_axis_datetime_label: World sales
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 12
    col: 0
    width: 9
    height: 3
  - title: Sales Evolution (%)
    name: Sales Evolution (%)
    model: datashopper
    explore: monitoring
    type: looker_bar
    fields: [referential.country_name, supplier.global_sales_current, supplier.global_sales_evol,
      benchmark.global_sales_evol]
    filters:
      parameters.is_benchmark: 'no'
      referential.channel_type: ''
      referential.store_desc_key: ''
    sorts: [supplier.global_sales_current desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total Sales Evolution, orientation: bottom, series: [{axisId: supplier.global_sales_evol,
            id: supplier.global_sales_evol, name: 1.1 - Supplier Global Measures},
          {axisId: benchmark.global_sales_evol, id: benchmark.global_sales_evol, name: 1.2
              - Benchmark Global Measures}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      benchmark.global_sales_evol: "#a46bbd"
    series_labels:
      supplier.global_sales_evol: Supplier
      benchmark.global_sales_evol: Benchmark
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [supplier.global_sales_current]
    listen:
      Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 45
    col: 12
    width: 12
    height: 12
  - title: Sales amout
    name: Sales amout
    model: datashopper
    explore: monitoring
    type: looker_bar
    fields: [referential.country_name, supplier.global_sales, referential.period]
    pivots: [referential.period]
    filters:
      parameters.is_benchmark: 'no'
      referential.store_desc_key: ''
      referential.channel_type: ''
      referential.grp_class_key: ''
      referential.sub_class_key: ''
    sorts: [supplier.global_sales desc 0, referential.period desc]
    limit: 500
    dynamic_fields: [{table_calculation: growth, label: Growth, expression: "${supplier.total_sales}/offset(${supplier.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: supplier.global_sales,
            id: This Year - supplier.global_sales, name: This Year}, {axisId: supplier.global_sales,
            id: Last Year - supplier.global_sales, name: Last Year}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_labels:
      supplier.global_sales_value_current: Total Sales Current Period
      supplier.global_sales_value_previous: Total Sales Last Period
      supplier.global_sales_current: This Year
      supplier.global_sales_previous: Last Year
    x_axis_datetime_label: World sales
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 45
    col: 0
    width: 12
    height: 12
  - title: Market share (%)
    name: Market share (%)
    model: datashopper
    explore: monitoring
    type: single_value
    fields: [supplier.global_market_share_current, supplier.global_market_share_delta]
    filters:
      parameters.is_benchmark: 'no'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#004e9f"
    single_value_title: Market share (%)
    comparison_label: Delta (Points)
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hide_legend: false
    series_types: {}
    x_axis_datetime_label: World sales
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 23
    col: 0
    width: 9
    height: 3
  - title: Market share (%)
    name: Market share (%) (2)
    model: datashopper
    explore: monitoring
    type: looker_bar
    fields: [supplier.global_market_share, referential.period]
    pivots: [referential.period]
    filters:
      parameters.is_benchmark: 'no'
    sorts: [supplier.global_market_share desc 0, referential.period desc]
    limit: 500
    dynamic_fields: [{table_calculation: growth, label: Growth, expression: "${supplier.total_sales}/offset(${supplier.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: supplier.global_market_share,
            id: This Period - supplier.global_market_share, name: This Period}, {
            axisId: supplier.global_market_share, id: Last Period - supplier.global_market_share,
            name: Last Period}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_labels:
      supplier.global_sales_unit_current: Total Units Current Period
      supplier.global_sales_unit_previous: Total Units Last Period
      supplier.global_market_share_current: This Year
      supplier.global_market_share_previous: Last Year
    x_axis_datetime_label: World sales
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 26
    col: 0
    width: 9
    height: 7
  - title: Sales amount
    name: Sales amount (2)
    model: datashopper
    explore: monitoring
    type: looker_line
    fields: [referential.period_date, referential.period, supplier.global_sales]
    pivots: [referential.period]
    filters: {}
    sorts: [referential.period_date, referential.period desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: Total Sales Evolution, orientation: left, series: [{axisId: supplier.global_sales_current,
            id: supplier.global_sales_current, name: This Year}, {axisId: supplier.global_sales_previous,
            id: supplier.global_sales_previous, name: Last Year}], showLabels: false,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      Last Year - supplier.global_sales: "#6a6b6b"
      This Year - supplier.global_sales: "#004e9f"
    series_labels:
      supplier.global_sales_value_current: This Year
      supplier.global_sales_value_previous: Last Year
      supplier.global_sales_current: This Year
      supplier.global_sales_previous: Last Year
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    listen:
      Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 12
    col: 9
    width: 15
    height: 6
  - title: Titre 1 sales amount
    name: Titre 1 sales amount
    model: datashopper
    explore: monitoring
    type: single_value
    fields: [referential.sales_amount_label]
    filters:
      parameters.is_benchmark: 'no'
      referential.current_date_range: 2022/01/01 to 2022/03/31
      parameters.currency_parameter: EURO
      parameters.class_parameter: International
      parameters.timeframe_parameter: month
    limit: 1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: carrefour
      palette_id: carrefour-categorical-0
    custom_color: "#FFFFFF"
    single_value_title: ''
    comparison_label: Evolution
    conditional_formatting: []
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hide_legend: false
    series_types: {}
    x_axis_datetime_label: World sales
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Mesure Type: parameters.measure_type_parameter
    row: 11
    col: 0
    width: 24
    height: 1
  - title: Market share (%)
    name: Market share (%) (3)
    model: datashopper
    explore: monitoring
    type: looker_column
    fields: [referential.period_date, supplier.global_market_share, referential.period]
    pivots: [referential.period]
    filters:
      parameters.is_benchmark: 'no'
    sorts: [referential.period_date, referential.period desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: supplier.global_market_share,
            id: This Year - supplier.global_market_share, name: This Year}, {axisId: supplier.global_market_share,
            id: Last Year - supplier.global_market_share, name: Last Year}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: ''
    series_types: {}
    series_labels:
      supplier.global_sales_value_current: This Year
      supplier.global_sales_value_previous: Last Year
      supplier.global_market_share_current: This Year
      supplier.global_market_share_previous: Last Year
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 23
    col: 9
    width: 15
    height: 6
  - title: Delta market share (points)
    name: Delta market share (points)
    model: datashopper
    explore: monitoring
    type: looker_column
    fields: [referential.period_date, supplier.global_market_share_delta]
    filters:
      parameters.is_benchmark: 'no'
    sorts: [referential.period_date]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total Sales Evolution, orientation: left, series: [{axisId: supplier.global_market_share_delta,
            id: supplier.global_market_share_delta, name: Delta market share}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: false
    series_types: {}
    show_dropoff: false
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 29
    col: 9
    width: 15
    height: 4
  - title: Titre 2 market share
    name: Titre 2 market share
    model: datashopper
    explore: monitoring
    type: single_value
    fields: [referential.market_share_label]
    filters:
      parameters.is_benchmark: 'no'
      referential.current_date_range: 2022/01/01 to 2022/03/31
      parameters.currency_parameter: EURO
      parameters.class_parameter: International
      parameters.timeframe_parameter: month
    sorts: [referential.market_share_label]
    limit: 1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: carrefour
      palette_id: carrefour-categorical-0
    custom_color: "#FFFFFF"
    single_value_title: ''
    comparison_label: Evolution
    conditional_formatting: []
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hide_legend: false
    series_types: {}
    x_axis_datetime_label: World sales
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Mesure Type: parameters.measure_type_parameter
    row: 22
    col: 0
    width: 24
    height: 1
  - title: Delta market share (points)
    name: Delta market share (points) (2)
    model: datashopper
    explore: monitoring
    type: looker_column
    fields: [referential.country_name, supplier.global_market_share_current, supplier.global_market_share_delta]
    filters:
      parameters.is_benchmark: 'no'
    sorts: [supplier.global_market_share_current desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: supplier.global_market_share_delta,
            id: supplier.global_market_share_delta, name: Delta market share}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_labels:
      supplier.global_market_share_current: This Year
      supplier.global_market_share_previous: Last Year
    label_color: []
    up_color: "#004e9f"
    down_color: "#6a6b6b"
    total_color: "#39a3ff"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [supplier.global_market_share_current]
    hidden_points_if_no: []
    listen:
      Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 80
    col: 0
    width: 24
    height: 4
  - title: Market share (%)
    name: Market share (%) (4)
    model: datashopper
    explore: monitoring
    type: looker_column
    fields: [referential.country_name, supplier.global_market_share, referential.period]
    pivots: [referential.period]
    filters:
      parameters.is_benchmark: 'no'
    sorts: [supplier.global_market_share desc 0, referential.period desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: supplier.global_market_share,
            id: This Year - supplier.global_market_share, name: This Year}, {axisId: supplier.global_market_share,
            id: Last Year - supplier.global_market_share, name: Last Year}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_labels:
      supplier.global_market_share_current: This Year
      supplier.global_market_share_previous: Last Year
    label_color: ["#6a6b6b"]
    up_color: "#004e9f"
    down_color: "#6a6b6b"
    total_color: "#39a3ff"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 72
    col: 0
    width: 24
    height: 8
  - name: '<h1><b>International Overview</b></h1><hr style="height: 4px; background-color:
      #000000; width: 75%; border: none;">'
    type: text
    title_text: '<h1><b>International Overview</b></h1><hr style="height: 4px; background-color:
      #000000; width: 75%; border: none;">'
    subtitle_text: ''
    body_text: '<p align="center"> <a href="#1">   Supplier world insights</a>  /  <a
      href="#2">   Supplier countries insights </a> /  <a href="#3">   Datagrid :
      indicator details </a></p>'
    row: 0
    col: 0
    width: 24
    height: 4
  - name: <h1 align="left" id="1"><b><u>  Supplier world insights</u></b></h1>
    type: text
    title_text: <h1 align="left" id="1"><b><u>  Supplier world insights</u></b></h1>
    subtitle_text: ''
    body_text: ''
    row: 9
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: <h1 align="left" id="2">  <b><u>Supplier countries insights</u></b></h1>
    body_text: ''
    row: 33
    col: 0
    width: 24
    height: 2
  - title: Titre 3 sales amount
    name: Titre 3 sales amount
    model: datashopper
    explore: monitoring
    type: single_value
    fields: [referential.sales_amount_label]
    filters:
      parameters.is_benchmark: 'no'
      referential.current_date_range: 2022/01/01 to 2022/03/31
      parameters.currency_parameter: EURO
      parameters.class_parameter: International
      parameters.timeframe_parameter: month
    limit: 1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: carrefour
      palette_id: carrefour-categorical-0
    custom_color: "#FFFFFF"
    single_value_title: ''
    comparison_label: Evolution
    conditional_formatting: []
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hide_legend: false
    series_types: {}
    x_axis_datetime_label: World sales
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Mesure Type: parameters.measure_type_parameter
    row: 35
    col: 0
    width: 24
    height: 1
  - title: Titre 4 market share
    name: Titre 4 market share
    model: datashopper
    explore: monitoring
    type: single_value
    fields: [referential.market_share_label]
    filters:
      parameters.is_benchmark: 'no'
      referential.current_date_range: 2022/01/01 to 2022/03/31
      parameters.currency_parameter: EURO
      parameters.class_parameter: International
      parameters.timeframe_parameter: month
    sorts: [referential.market_share_label]
    limit: 1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: carrefour
      palette_id: carrefour-categorical-0
    custom_color: "#FFFFFF"
    single_value_title: ''
    comparison_label: Evolution
    conditional_formatting: []
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hide_legend: false
    series_types: {}
    x_axis_datetime_label: World sales
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Mesure Type: parameters.measure_type_parameter
    row: 71
    col: 0
    width: 24
    height: 1
  - name: Sales Evolution by period (%)
    title: Sales Evolution by period (%)
    merged_queries:
    - model: datashopper
      explore: monitoring
      type: table
      fields: [referential.country_name, supplier.global_sales_current]
      filters:
        referential.current_date_range: 2022/01/01 to 2022/03/31
        parameters.currency_parameter: EURO
        parameters.class_parameter: International
        parameters.timeframe_parameter: month
      sorts: [supplier.global_sales_current desc]
      limit: 500
      query_timezone: Europe/Paris
      join_fields: []
    - model: datashopper
      explore: monitoring
      type: looker_column
      fields: [referential.country_name, referential.period_date, supplier.global_sales_evol]
      filters:
        parameters.is_benchmark: 'no'
        referential.item_key: ''
        referential.channel_type: ''
        referential.country_group: ''
        referential.sub_channel_type: ''
        referential.store_desc_key: ''
        referential.current_date_range: 2022/01/01 to 2022/02/01
        parameters.currency_parameter: EURO
        parameters.class_parameter: International
        parameters.timeframe_parameter: week
        referential.compare_to: Year
        referential.country_name: ''
        referential.chain_type: ''
        referential.activity_type: ''
        referential.delivery_channel: ''
        referential.sector_desc: ''
        referential.department_desc: ''
        referential.grp_class_desc: ''
        referential.class_desc: ''
        referential.sub_class_desc: ''
        referential.brand_desc: ''
        referential.barcode: ''
        referential.item_desc: ''
        referential.store_key: ''
        referential.business_brand: ''
        referential.business_service: ''
        parameters.measure_type_parameter: VALUE
        parameters.TAX_parameter: WTTAX
      sorts: [supplier.global_sales_evol desc, referential.country_name, referential.period_date]
      limit: 500
      column_limit: 50
      x_axis_gridlines: false
      y_axis_gridlines: false
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
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
      show_value_labels: true
      label_density: 25
      x_axis_scale: time
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      color_application:
        collection_id: value
        palette_id: value-categorical-0
        options:
          steps: 5
          reverse: false
      y_axes: [{label: '', orientation: left, series: [{axisId: supplier.global_sales_evol,
              id: 2022-01-01 - supplier.global_sales_evol, name: '2022-01-01'}, {
              axisId: supplier.global_sales_evol, id: 2022-02-01 - supplier.global_sales_evol,
              name: '2022-02-01'}], showLabels: false, showValues: false, unpinAxis: false,
          tickDensity: default, tickDensityCustom: 5, type: linear}]
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hide_legend: true
      trellis_rows: 3
      series_types: {}
      series_colors: {}
      series_labels: {}
      x_axis_datetime_label: ''
      column_spacing_ratio: 0.2
      show_row_numbers: true
      transpose: false
      truncate_text: false
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      enable_conditional_formatting: true
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      conditional_formatting: [{type: greater than, value: 0.01, background_color: '',
          font_color: "#05b825", color_application: {collection_id: carrefour, palette_id: carrefour-diverging-0,
            options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
                max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
          bold: false, italic: false, strikethrough: false, fields: !!null ''}, {
          type: less than, value: -0.01, background_color: '', font_color: "#c20707",
          color_application: {collection_id: carrefour, palette_id: carrefour-diverging-0,
            options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
                max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
          bold: false, italic: false, strikethrough: false, fields: !!null ''}, {
          type: between, value: [-0.01, 0.01], background_color: '', font_color: "#f5a353",
          color_application: {collection_id: carrefour, palette_id: carrefour-sequential-0},
          bold: false, italic: false, strikethrough: false, fields: !!null ''}]
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: true
      comparison_type: change
      comparison_reverse_colors: false
      show_comparison_label: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_fields: []
      hidden_points_if_no: []
      join_fields:
      - field_name: referential.country_name
        source_field_name: referential.country_name
    color_application:
      collection_id: value
      palette_id: value-categorical-0
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: supplier.global_sales,
            id: 2022-01-03 - supplier.global_sales, name: 2022-01-03 - 1.1 - Supplier
              Global Measures Sales amount}, {axisId: supplier.global_sales_evol,
            id: 2022-01-03 - supplier.global_sales_evol, name: 2022-01-03 - 1.1 -
              Supplier Global Measures Evolution sales amount}, {axisId: supplier.global_sales,
            id: 2022-01-10 - supplier.global_sales, name: 2022-01-10 - 1.1 - Supplier
              Global Measures Sales amount}, {axisId: supplier.global_sales_evol,
            id: 2022-01-10 - supplier.global_sales_evol, name: 2022-01-10 - 1.1 -
              Supplier Global Measures Evolution sales amount}, {axisId: supplier.global_sales,
            id: 2022-01-17 - supplier.global_sales, name: 2022-01-17 - 1.1 - Supplier
              Global Measures Sales amount}, {axisId: supplier.global_sales_evol,
            id: 2022-01-17 - supplier.global_sales_evol, name: 2022-01-17 - 1.1 -
              Supplier Global Measures Evolution sales amount}, {axisId: supplier.global_sales,
            id: 2022-01-24 - supplier.global_sales, name: 2022-01-24 - 1.1 - Supplier
              Global Measures Sales amount}, {axisId: supplier.global_sales_evol,
            id: 2022-01-24 - supplier.global_sales_evol, name: 2022-01-24 - 1.1 -
              Supplier Global Measures Evolution sales amount}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: pivot
    stacking: ''
    limit_displayed_rows: false
    hide_legend: true
    legend_position: center
    point_style: none
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    hidden_fields: [supplier.global_sales_current]
    pivots: [referential.country_name]
    listen:
    - Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    - Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 57
    col: 0
    width: 24
    height: 14
  - name: Delta market share by period (points)
    title: Delta market share by period (points)
    merged_queries:
    - model: datashopper
      explore: monitoring
      type: table
      fields: [referential.country_name, supplier.global_market_share_current]
      filters:
        referential.current_date_range: 2022/01/01 to 2022/03/31
        parameters.currency_parameter: EURO
        parameters.class_parameter: International
        parameters.timeframe_parameter: month
        parameters.measure_type_parameter: VALUE
        parameters.TAX_parameter: WTTAX
        referential.compare_to: Year
      sorts: [supplier.global_market_share_current desc]
      limit: 500
      query_timezone: Europe/Paris
      join_fields: []
    - model: datashopper
      explore: monitoring
      type: looker_column
      fields: [referential.country_name, referential.period_date, supplier.global_market_share_delta]
      filters:
        parameters.is_benchmark: 'no'
        referential.item_key: ''
        referential.channel_type: ''
        referential.country_group: ''
        referential.sub_channel_type: ''
        referential.store_desc_key: ''
        referential.current_date_range: 2022/01/01 to 2022/02/01
        parameters.currency_parameter: EURO
        parameters.class_parameter: International
        parameters.timeframe_parameter: week
        referential.compare_to: Year
        referential.country_name: ''
        referential.chain_type: ''
        referential.activity_type: ''
        referential.delivery_channel: ''
        referential.sector_desc: ''
        referential.department_desc: ''
        referential.grp_class_desc: ''
        referential.class_desc: ''
        referential.sub_class_desc: ''
        referential.brand_desc: ''
        referential.barcode: ''
        referential.item_desc: ''
        referential.store_key: ''
        referential.business_brand: ''
        referential.business_service: ''
        parameters.measure_type_parameter: VALUE
        parameters.TAX_parameter: WTTAX
      sorts: [referential.country_name, referential.period_date]
      limit: 500
      column_limit: 50
      x_axis_gridlines: false
      y_axis_gridlines: false
      show_view_names: false
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
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
      show_value_labels: true
      label_density: 25
      x_axis_scale: time
      y_axis_combined: true
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      color_application:
        collection_id: value
        palette_id: value-categorical-0
        options:
          steps: 5
          reverse: false
      y_axes: [{label: '', orientation: left, series: [{axisId: supplier.global_sales_evol,
              id: 2022-01-01 - supplier.global_sales_evol, name: '2022-01-01'}, {
              axisId: supplier.global_sales_evol, id: 2022-02-01 - supplier.global_sales_evol,
              name: '2022-02-01'}], showLabels: false, showValues: false, unpinAxis: false,
          tickDensity: default, tickDensityCustom: 5, type: linear}]
      limit_displayed_rows_values:
        show_hide: hide
        first_last: first
        num_rows: 0
      hide_legend: true
      trellis_rows: 3
      series_types: {}
      series_colors: {}
      series_labels: {}
      x_axis_datetime_label: ''
      column_spacing_ratio: 0.2
      show_row_numbers: true
      transpose: false
      truncate_text: false
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      enable_conditional_formatting: true
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      conditional_formatting: [{type: greater than, value: 0.01, background_color: '',
          font_color: "#05b825", color_application: {collection_id: carrefour, palette_id: carrefour-diverging-0,
            options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
                max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
          bold: false, italic: false, strikethrough: false, fields: !!null ''}, {
          type: less than, value: -0.01, background_color: '', font_color: "#c20707",
          color_application: {collection_id: carrefour, palette_id: carrefour-diverging-0,
            options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
                max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
          bold: false, italic: false, strikethrough: false, fields: !!null ''}, {
          type: between, value: [-0.01, 0.01], background_color: '', font_color: "#f5a353",
          color_application: {collection_id: carrefour, palette_id: carrefour-sequential-0},
          bold: false, italic: false, strikethrough: false, fields: !!null ''}]
      custom_color_enabled: true
      show_single_value_title: true
      show_comparison: true
      comparison_type: change
      comparison_reverse_colors: false
      show_comparison_label: true
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      hidden_fields: []
      hidden_points_if_no: []
      join_fields:
      - field_name: referential.country_name
        source_field_name: referential.country_name
    color_application:
      collection_id: value
      palette_id: value-categorical-0
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: supplier.global_sales,
            id: 2022-01-03 - supplier.global_sales, name: 2022-01-03 - 1.1 - Supplier
              Global Measures Sales amount}, {axisId: supplier.global_sales_evol,
            id: 2022-01-03 - supplier.global_sales_evol, name: 2022-01-03 - 1.1 -
              Supplier Global Measures Evolution sales amount}, {axisId: supplier.global_sales,
            id: 2022-01-10 - supplier.global_sales, name: 2022-01-10 - 1.1 - Supplier
              Global Measures Sales amount}, {axisId: supplier.global_sales_evol,
            id: 2022-01-10 - supplier.global_sales_evol, name: 2022-01-10 - 1.1 -
              Supplier Global Measures Evolution sales amount}, {axisId: supplier.global_sales,
            id: 2022-01-17 - supplier.global_sales, name: 2022-01-17 - 1.1 - Supplier
              Global Measures Sales amount}, {axisId: supplier.global_sales_evol,
            id: 2022-01-17 - supplier.global_sales_evol, name: 2022-01-17 - 1.1 -
              Supplier Global Measures Evolution sales amount}, {axisId: supplier.global_sales,
            id: 2022-01-24 - supplier.global_sales, name: 2022-01-24 - 1.1 - Supplier
              Global Measures Sales amount}, {axisId: supplier.global_sales_evol,
            id: 2022-01-24 - supplier.global_sales_evol, name: 2022-01-24 - 1.1 -
              Supplier Global Measures Evolution sales amount}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: pivot
    stacking: ''
    limit_displayed_rows: false
    hide_legend: true
    legend_position: center
    point_style: none
    series_colors: {}
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    hidden_fields: [supplier.global_market_share_current]
    pivots: [referential.country_name]
    listen:
    - Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    - Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 84
    col: 0
    width: 24
    height: 14
  - title: Countries contribution to growth
    name: Countries contribution to growth
    model: datashopper
    explore: monitoring
    type: looker_bar
    fields: [referential.country_name, supplier.global_sales_delta]
    filters:
      parameters.is_benchmark: 'no'
      referential.store_desc_key: ''
      referential.channel_type: ''
      referential.grp_class_key: ''
      referential.sub_class_key: ''
      supplier.global_sales_delta: ">0"
      referential.store_key: ''
    sorts: [supplier.global_sales_delta desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: growth, label: Growth, expression: "${supplier.total_sales}/offset(${supplier.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: supplier.global_sales_delta,
            id: supplier.global_sales_delta, name: Delta sales amount}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_colors:
      supplier.global_sales_delta: "#05b825"
    series_labels:
      supplier.global_sales_value_current: Total Sales Current Period
      supplier.global_sales_value_previous: Total Sales Last Period
      supplier.global_sales_current: This Year
      supplier.global_sales_previous: Last Year
    x_axis_datetime_label: World sales
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 36
    col: 0
    width: 12
    height: 9
  - title: Countries contribution to decay
    name: Countries contribution to decay
    model: datashopper
    explore: monitoring
    type: looker_bar
    fields: [referential.country_name, supplier.global_sales_delta]
    filters:
      parameters.is_benchmark: 'no'
      referential.store_desc_key: ''
      referential.channel_type: ''
      referential.grp_class_key: ''
      referential.sub_class_key: ''
      supplier.global_sales_delta: "<=0"
      referential.store_key: ''
    sorts: [supplier.global_sales_delta]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: growth, label: Growth, expression: "${supplier.total_sales}/offset(${supplier.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: supplier.global_sales_delta,
            id: supplier.global_sales_delta, name: Delta sales amount}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_colors:
      supplier.global_sales_delta: "#c20707"
    series_labels:
      supplier.global_sales_value_current: Total Sales Current Period
      supplier.global_sales_value_previous: Total Sales Last Period
      supplier.global_sales_current: This Year
      supplier.global_sales_previous: Last Year
    x_axis_datetime_label: World sales
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    listen:
      Mesure Type: parameters.measure_type_parameter
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Countries Name: referential.country_name
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 36
    col: 12
    width: 12
    height: 9
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: "<h4 align=left><b>Insights : Overall sales performance and country\
      \ contribution</b><hr></h4>"
    body_text: |
      <b>>> Key output</b><br>
      <li>Get total sales at all countries level, on the selected period<br></li>
      <li>Understand each country’s contribution to global performances<br></li>
      <li>Understand how category(ies) behave at all countries level<br></li>
    row: 4
    col: 0
    width: 24
    height: 5
  - name: '<h1 align="left" id="3"><b><u> Datagrid : indicator details</u></b></h1>'
    type: text
    title_text: '<h1 align="left" id="3"><b><u> Datagrid : indicator details</u></b></h1>'
    subtitle_text: ''
    body_text: ''
    row: 98
    col: 0
    width: 24
    height: 2
  - title: 'Datagrid : All countries performances'
    name: 'Datagrid : All countries performances'
    model: datashopper
    explore: monitoring
    type: looker_grid
    fields: [referential.country_name, supplier.global_sales_value_current, supplier.global_sales_value_evol,
      supplier.global_market_share_value_current, supplier.global_market_share_value_delta,
      supplier.global_sales_unit_current, supplier.global_sales_unit_evol, supplier.global_market_share_unit_current,
      supplier.global_market_share_unit_delta, benchmark.global_sales_value_current,
      benchmark.global_sales_value_evol, benchmark.global_sales_unit_current, benchmark.global_sales_unit_evol,
      supplier.global_sales_value_delta, supplier.global_sales_unit_delta]
    filters:
      parameters.measure_type_parameter: VALUE
    sorts: [supplier.global_sales_value_current desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'if(${supplier.global_sales_unit_delta}>0,${supplier.global_sales_unit_delta}/sum(${positive_delta_unit}),if(${supplier.global_sales_unit_delta}<0,-1.0*${supplier.global_sales_unit_delta}/sum(${negative_delta_unit}),0))',
        label: Contribution to positive (+) and negative (-) evolution in units (%),
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        table_calculation: contribution_to_positive_and_negative_evolution_in_units,
        _type_hint: number}, {category: table_calculation, expression: 'if(${supplier.global_sales_value_delta}>0,${supplier.global_sales_value_delta},0)',
        label: Positive Delta value, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: positive_delta_value, _type_hint: number},
      {category: table_calculation, expression: 'if(${supplier.global_sales_value_delta}<0,${supplier.global_sales_value_delta},0)',
        label: Negative Delta value, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: negative_delta_value, _type_hint: number},
      {category: table_calculation, expression: 'if(${supplier.global_sales_unit_delta}>0,${supplier.global_sales_unit_delta},0)',
        label: Positive Delta unit, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: positive_delta_unit, _type_hint: number},
      {category: table_calculation, expression: 'if(${supplier.global_sales_unit_delta}<0,${supplier.global_sales_unit_delta},0)',
        label: Negative Delta unit, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: negative_delta_unit, _type_hint: number},
      {category: table_calculation, expression: 'if(${supplier.global_sales_value_delta}>0,${supplier.global_sales_value_delta}/sum(${positive_delta_value}),if(${supplier.global_sales_value_delta}<0,-1.0*${supplier.global_sales_value_delta}/sum(${negative_delta_value}),0))',
        label: Contribution to positive (+) and negative (-) evolution in value (%),
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        table_calculation: contribution_to_positive_and_negative_evolution_in_value,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [referential.country_name, supplier.global_sales_value_current,
      supplier.global_sales_value_evol, contribution_to_positive_and_negative_evolution_in_value,
      supplier.global_market_share_value_current, supplier.global_market_share_value_delta,
      supplier.global_sales_unit_current, supplier.global_sales_unit_evol, contribution_to_positive_and_negative_evolution_in_units,
      supplier.global_market_share_unit_current, supplier.global_market_share_unit_delta,
      benchmark.global_sales_value_current, benchmark.global_sales_value_evol, benchmark.global_sales_unit_current,
      benchmark.global_sales_unit_evol]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_column_widths:
      contribution_to_positive_and_negative_evolution_in_units: 147
      contribution_to_positive_and_negative_evolution_in_value: 162
    series_cell_visualizations:
      supplier.global_sales_value_current:
        is_active: true
      supplier.global_sales_unit_current:
        is_active: true
      contribution_to_positive_and_negative_evolution_in_units:
        is_active: true
        palette:
          palette_id: carrefour-diverging-0
          collection_id: carrefour
      contribution_to_positive_and_negative_evolution_in_value:
        is_active: true
        palette:
          palette_id: carrefour-diverging-0
          collection_id: carrefour
    truncate_column_names: false
    defaults_version: 1
    hidden_fields: [positive_delta_value, negative_delta_value, positive_delta_unit,
      negative_delta_unit, supplier.global_sales_unit_delta, supplier.global_sales_value_delta]
    series_types: {}
    listen:
      Transaction Date Range: referential.current_date_range
      Timeframe Parameter: parameters.timeframe_parameter
      Transaction Date Comparison: referential.compare_to
      Chain Type: referential.chain_type
      Activity Type: referential.activity_type
      Delivery Channel: referential.delivery_channel
      Sector: referential.sector_desc
      Department: referential.department_desc
      Group Class: referential.grp_class_desc
      Class: referential.class_desc
      Sub Class: referential.sub_class_desc
      Brand: referential.brand_desc
      Currency Parameter: parameters.currency_parameter
      Barcode: referential.barcode
      Item: referential.item_desc
      Business Brand: referential.business_brand
      Business Service: referential.business_service
      Continent: referential.country_group
      TAX Parameter: parameters.TAX_parameter
      Class Parameter: parameters.class_parameter
    row: 100
    col: 0
    width: 24
    height: 7
  filters:
  - name: Transaction Date Range
    title: Transaction Date Range
    type: field_filter
    default_value: 2022/01/01 to 2022/02/01
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: datashopper
    explore: monitoring
    listens_to_filters: [Item, Barcode, Brand, Sub Class, Class, Group Class, Department,
      Sector, Class Parameter, Delivery Channel, Activity Type, Chain Type, Countries
        Name]
    field: referential.current_date_range
  - name: Timeframe Parameter
    title: Timeframe Parameter
    type: field_filter
    default_value: week
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: datashopper
    explore: monitoring
    listens_to_filters: [Item, Barcode, Brand, Sub Class, Class, Group Class, Department,
      Sector, Class Parameter, Delivery Channel, Activity Type, Chain Type, Countries
        Name]
    field: parameters.timeframe_parameter
  - name: Transaction Date Comparison
    title: Transaction Date Comparison
    type: field_filter
    default_value: Year
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: datashopper
    explore: monitoring
    listens_to_filters: [Item, Barcode, Brand, Sub Class, Class, Group Class, Department,
      Sector, Class Parameter, Delivery Channel, Activity Type, Chain Type, Countries
        Name]
    field: referential.compare_to
  - name: TAX Parameter
    title: TAX Parameter
    type: field_filter
    default_value: WTTAX
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: datashopper
    explore: filters
    listens_to_filters: []
    field: parameters.TAX_parameter
  - name: Continent
    title: Continent
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: datashopper
    explore: monitoring
    listens_to_filters: []
    field: referential.country_group
  - name: Countries Name
    title: Countries Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: datashopper
    explore: filters
    listens_to_filters: [Countries Name, Business Service, Business Brand, Item, Barcode,
      Brand, Sub Class, Class, Group Class, Department, Sector, Class Parameter, Delivery
        Channel, Activity Type, Chain Type, Continent]
    field: filters.country_name
  - name: Chain Type
    title: Chain Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: datashopper
    explore: filters
    listens_to_filters: [Chain Type, Business Service, Business Brand, Item, Barcode,
      Brand, Sub Class, Class, Group Class, Department, Sector, Class Parameter, Delivery
        Channel, Activity Type, Countries Name, Continent]
    field: filters.chain_type
  - name: Activity Type
    title: Activity Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: datashopper
    explore: filters
    listens_to_filters: [Activity Type, Business Service, Business Brand, Item, Barcode,
      Brand, Sub Class, Class, Group Class, Department, Sector, Class Parameter, Delivery
        Channel, Chain Type, Countries Name, Continent]
    field: filters.activity_type
  - name: Delivery Channel
    title: Delivery Channel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: datashopper
    explore: filters
    listens_to_filters: [Delivery Channel, Business Service, Business Brand, Item,
      Barcode, Brand, Sub Class, Class, Group Class, Department, Sector, Class Parameter,
      Activity Type, Chain Type, Countries Name, Continent]
    field: filters.delivery_channel
  - name: Class Parameter
    title: Class Parameter
    type: field_filter
    default_value: International
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: datashopper
    explore: monitoring
    listens_to_filters: [Class Parameter, Item, Barcode, Brand, Sub Class, Class,
      Group Class, Department, Sector, Delivery Channel, Activity Type, Chain Type,
      Countries Name]
    field: parameters.class_parameter
  - name: Sector
    title: Sector
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: datashopper
    explore: filters
    listens_to_filters: [Sector, Business Service, Business Brand, Item, Barcode,
      Brand, Sub Class, Class, Group Class, Department, Class Parameter, Delivery
        Channel, Activity Type, Chain Type, Countries Name, Continent]
    field: filters.sector_desc
  - name: Department
    title: Department
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: datashopper
    explore: filters
    listens_to_filters: [Department, Business Service, Business Brand, Item, Barcode,
      Brand, Sub Class, Class, Group Class, Sector, Class Parameter, Delivery Channel,
      Activity Type, Chain Type, Countries Name, Continent]
    field: filters.department_desc
  - name: Group Class
    title: Group Class
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: datashopper
    explore: filters
    listens_to_filters: [Group Class, Business Service, Business Brand, Item, Barcode,
      Brand, Sub Class, Class, Department, Sector, Class Parameter, Delivery Channel,
      Activity Type, Chain Type, Countries Name, Continent]
    field: filters.grp_class_desc
  - name: Class
    title: Class
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: datashopper
    explore: filters
    listens_to_filters: [Class, Business Service, Business Brand, Item, Barcode, Brand,
      Sub Class, Group Class, Department, Sector, Class Parameter, Delivery Channel,
      Activity Type, Chain Type, Countries Name, Continent]
    field: filters.class_desc
  - name: Sub Class
    title: Sub Class
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: datashopper
    explore: filters
    listens_to_filters: [Sub Class, Business Service, Business Brand, Item, Barcode,
      Brand, Class, Group Class, Department, Sector, Class Parameter, Delivery Channel,
      Activity Type, Chain Type, Countries Name, Continent]
    field: filters.sub_class_desc
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: datashopper
    explore: filters
    listens_to_filters: [Brand, Business Service, Business Brand, Item, Barcode, Sub
        Class, Class, Group Class, Department, Sector, Class Parameter, Delivery Channel,
      Activity Type, Chain Type, Countries Name, Continent]
    field: filters.brand_desc
  - name: Currency Parameter
    title: Currency Parameter
    type: field_filter
    default_value: EURO
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: datashopper
    explore: monitoring
    listens_to_filters: [Item, Barcode, Brand, Sub Class, Class, Group Class, Department,
      Sector, Class Parameter, Delivery Channel, Activity Type, Chain Type, Countries
        Name]
    field: parameters.currency_parameter
  - name: Barcode
    title: Barcode
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: datashopper
    explore: filters
    listens_to_filters: [Barcode, Business Service, Business Brand, Item, Brand, Sub
        Class, Class, Group Class, Department, Sector, Class Parameter, Delivery Channel,
      Activity Type, Chain Type, Countries Name, Continent]
    field: filters.barcode
  - name: Item
    title: Item
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: datashopper
    explore: filters
    listens_to_filters: [Item, Business Service, Business Brand, Barcode, Brand, Sub
        Class, Class, Group Class, Department, Sector, Class Parameter, Delivery Channel,
      Activity Type, Chain Type, Countries Name, Continent]
    field: filters.item_desc
  - name: Business Brand
    title: Business Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: datashopper
    explore: filters
    listens_to_filters: [Business Service, Item, Barcode, Brand, Sub Class, Class,
      Group Class, Department, Sector, Class Parameter, Delivery Channel, Activity
        Type, Chain Type, Countries Name, Continent]
    field: filters.business_brand
  - name: Business Service
    title: Business Service
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: datashopper
    explore: filters
    listens_to_filters: [Business Brand, Item, Barcode, Brand, Sub Class, Class, Group
        Class, Department, Sector, Class Parameter, Delivery Channel, Activity Type,
      Chain Type, Countries Name, Continent]
    field: filters.business_service
  - name: Mesure Type
    title: Mesure Type
    type: field_filter
    default_value: VALUE
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: datashopper
    explore: filters
    listens_to_filters: []
    field: parameters.measure_type_parameter

- dashboard: test_error_download_with_trend_line
  title: Test Error Download With Trend Line
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: J3NndlXQkygj53PD73mgMD
  elements:
  - title: Open tickets by Team by Engineer
    name: Open tickets by Team by Engineer
    model: thelook_carlos
    explore: order_items
    type: looker_column
    fields: [users.count, users.gender, users.first_name]
    pivots: [users.gender]
    filters:
      users.gender: "-NULL"
      users.state: California
    sorts: [users.gender, users.count desc 1]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 14
    col: 12
    width: 12
    height: 14
  - title: Test Error Download With Trend Line
    name: Test Error Download With Trend Line
    model: thelook_carlos
    explore: order_items
    type: looker_scatter
    fields: [orders.created_year, users.count]
    filters: {}
    sorts: [orders.created_year]
    limit: 500
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    series_types: {}
    trend_lines: [{color: "#e6122e", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: false}]
    interpolation: linear
    defaults_version: 1
    listen:
      Created Year: orders.created_year
    row: 0
    col: 0
    width: 8
    height: 9
  - name: Look Trend Line
    title: Look Trend Line
    model: thelook_carlos
    explore: order_items
    type: looker_scatter
    fields: [orders.created_year, users.count]
    filters:
      orders.created_year: NOT NULL
    sorts: [orders.created_year]
    limit: 500
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    series_types: {}
    trend_lines: [{color: "#e6122e", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: false}]
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 9
  - title: New Tile
    name: New Tile
    model: thelook_carlos
    explore: order_items
    type: looker_grid
    fields: [orders.created_year, users.count]
    filters:
      orders.created_year: NOT NULL
    sorts: [orders.created_year]
    limit: 500
    query_timezone: America/New_York
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: [{color: "#e6122e", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: false}]
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 9
    col: 0
    width: 8
    height: 8
  - title: New Tile
    name: New Tile (2)
    model: thelook_carlos
    explore: order_items
    type: looker_column
    fields: [orders.created_year, users.count]
    filters:
      orders.created_year: NOT NULL
    sorts: [orders.created_year]
    limit: 500
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
    series_types: {}
    trend_lines: [{color: "#e6122e", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: false}]
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
    listen: {}
    row: 9
    col: 8
    width: 8
    height: 8
  - title: New Tile
    name: New Tile (3)
    model: thelook_carlos
    explore: order_items
    type: looker_bar
    fields: [orders.created_year, users.count]
    filters:
      orders.created_year: NOT NULL
    sorts: [orders.created_year]
    limit: 500
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
    series_types: {}
    trend_lines: [{color: "#e6122e", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: false}]
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
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 9
  - title: New Tile
    name: New Tile (4)
    model: thelook_carlos
    explore: order_items
    type: looker_line
    fields: [orders.created_year, users.count]
    filters:
      orders.created_year: NOT NULL
    sorts: [orders.created_year]
    limit: 500
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    series_types: {}
    series_colors:
      users.count: "#21c0cc"
    trend_lines: [{color: "#e6122e", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: false}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 17
    col: 0
    width: 8
    height: 8
  - title: New Tile
    name: New Tile (5)
    model: thelook_carlos
    explore: order_items
    type: looker_area
    fields: [orders.created_year, users.count]
    filters:
      orders.created_year: NOT NULL
    sorts: [orders.created_year]
    limit: 500
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      users.count: "#21c0cc"
    trend_lines: [{color: "#e6122e", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: false}]
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
    ordering: none
    show_null_labels: false
    listen: {}
    row: 17
    col: 8
    width: 8
    height: 8
  - title: New Tile
    name: New Tile (6)
    model: thelook_carlos
    explore: order_items
    type: looker_pie
    fields: [orders.created_year, users.count]
    filters:
      orders.created_year: NOT NULL
    sorts: [orders.created_year]
    limit: 500
    query_timezone: America/New_York
    value_labels: legend
    label_type: labPer
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
    series_types: {}
    point_style: circle
    series_colors:
      users.count: "#21c0cc"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: [{color: "#e6122e", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: false}]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 9
    col: 16
    width: 8
    height: 8
  - title: New Tile
    name: New Tile (7)
    model: thelook_carlos
    explore: order_items
    type: looker_grid
    fields: [orders.created_year, users.count]
    filters:
      orders.created_year: NOT NULL
    sorts: [orders.created_year]
    limit: 500
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
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
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels: {}
    series_cell_visualizations:
      users.count:
        is_active: true
        palette:
          palette_id: a949bd3f-b9c7-ea02-5ff5-149e3a56c5b8
          collection_id: test_ag
          custom_colors:
          - "#e60e1e"
          - "#FFFFFF"
          - "#2a25e8"
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
    series_types: {}
    point_style: circle
    series_colors:
      users.count: "#21c0cc"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: [{color: "#e6122e", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: false}]
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 25
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (8)
    model: thelook_carlos
    explore: order_items
    type: looker_column
    fields: [orders.created_year, users.count]
    filters:
      orders.created_year: NOT NULL
    sorts: [orders.created_year]
    limit: 500
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      users.count: "#cc232f"
    series_labels: {}
    trend_lines: [{color: "#242be6", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: false}]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      users.count:
        is_active: true
        palette:
          palette_id: a949bd3f-b9c7-ea02-5ff5-149e3a56c5b8
          collection_id: test_ag
          custom_colors:
          - "#e60e1e"
          - "#FFFFFF"
          - "#2a25e8"
    table_theme: editable
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 25
    col: 8
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (9)
    model: thelook_carlos
    explore: order_items
    type: looker_bar
    fields: [orders.created_year, users.count]
    filters:
      orders.created_year: NOT NULL
    sorts: [orders.created_year]
    limit: 500
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      users.count: "#cc232f"
    series_labels: {}
    trend_lines: [{color: "#242be6", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: false}]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      users.count:
        is_active: true
        palette:
          palette_id: a949bd3f-b9c7-ea02-5ff5-149e3a56c5b8
          collection_id: test_ag
          custom_colors:
          - "#e60e1e"
          - "#FFFFFF"
          - "#2a25e8"
    table_theme: editable
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 17
    col: 16
    width: 8
    height: 8
  - title: New Tile
    name: New Tile (10)
    model: thelook_carlos
    explore: order_items
    type: looker_bar
    fields: [users.count, users.created_year]
    filters:
      users.created_year: NOT NULL
    sorts: [users.created_year]
    limit: 500
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      users.count: "#cc232f"
    series_labels: {}
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      users.count:
        is_active: true
        palette:
          palette_id: a949bd3f-b9c7-ea02-5ff5-149e3a56c5b8
          collection_id: test_ag
          custom_colors:
          - "#e60e1e"
          - "#FFFFFF"
          - "#2a25e8"
    table_theme: editable
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 31
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (11)
    model: thelook_carlos
    explore: order_items
    type: looker_scatter
    fields: [users.count, users.created_year]
    filters:
      users.created_year: NOT NULL
    sorts: [users.created_year]
    limit: 500
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    series_types: {}
    series_colors:
      users.count: "#cc232f"
    series_labels: {}
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      users.count:
        is_active: true
        palette:
          palette_id: a949bd3f-b9c7-ea02-5ff5-149e3a56c5b8
          collection_id: test_ag
          custom_colors:
          - "#e60e1e"
          - "#FFFFFF"
          - "#2a25e8"
    table_theme: editable
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    interpolation: linear
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 31
    col: 8
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (12)
    model: thelook_carlos
    explore: order_items
    type: looker_line
    fields: [users.count, users.created_year]
    filters:
      users.created_year: NOT NULL
    sorts: [users.created_year]
    limit: 500
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    series_types: {}
    series_colors:
      users.count: "#cc232f"
    series_labels: {}
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      users.count:
        is_active: true
        palette:
          palette_id: a949bd3f-b9c7-ea02-5ff5-149e3a56c5b8
          collection_id: test_ag
          custom_colors:
          - "#e60e1e"
          - "#FFFFFF"
          - "#2a25e8"
    table_theme: editable
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 25
    col: 16
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (13)
    model: thelook_carlos
    explore: order_items
    type: looker_area
    fields: [users.count, users.created_year]
    filters:
      users.created_year: NOT NULL
    sorts: [users.created_year]
    limit: 500
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      users.count: "#cc232f"
    series_labels: {}
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    ordering: none
    show_null_labels: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      users.count:
        is_active: true
        palette:
          palette_id: a949bd3f-b9c7-ea02-5ff5-149e3a56c5b8
          collection_id: test_ag
          custom_colors:
          - "#e60e1e"
          - "#FFFFFF"
          - "#2a25e8"
    table_theme: editable
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 31
    col: 16
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (14)
    model: thelook_carlos
    explore: order_items
    type: looker_pie
    fields: [users.count, users.created_year]
    filters:
      users.created_year: NOT NULL
    sorts: [users.created_year]
    limit: 500
    query_timezone: America/New_York
    value_labels: legend
    label_type: labPer
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
    series_types: {}
    point_style: circle
    series_colors:
      users.count: "#cc232f"
    series_labels: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    trend_lines: [{color: "#000000", label_position: right, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      users.count:
        is_active: true
        palette:
          palette_id: a949bd3f-b9c7-ea02-5ff5-149e3a56c5b8
          collection_id: test_ag
          custom_colors:
          - "#e60e1e"
          - "#FFFFFF"
          - "#2a25e8"
    table_theme: editable
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 37
    col: 8
    width: 8
    height: 6
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

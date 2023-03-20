- dashboard: lookml_operations_tasking
  title: Operation tasking
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Open tickets by Team by Engineer
    name: Open tickets by Team by Engineer
    model: joyent_public_cloud
    explore: combinedtickets
    type: looker_column
    fields: [combinedtickets.count, ateam.team, ateam.username]
    pivots: [ateam.username]
    filters:
      combinedtickets.openclosed: Open
    sorts: [ateam.team, ateam.username]
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
    listen:
      Teams: ateam.team
    row: 14
    col: 12
    width: 12
    height: 14
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 6
    col: 0
    width: 2
    height: 1
  - title: Open Tickets by Engineer
    name: Open Tickets by Engineer
    model: joyent_public_cloud
    explore: combinedtickets
    type: looker_grid
    fields: [ateam.username, ateam.team, combinedtickets.count]
    filters:
      combinedtickets.openclosed: Open
    sorts: [ateam.username]
    limit: 500
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
    series_labels:
      combinedtickets.count: Count
    series_column_widths:
      ateam.name: 431
    series_cell_visualizations:
      combinedtickets.count:
        is_active: true
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
    stacking: normal
    legend_position: center
    series_types: {}
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Teams: ateam.team
    row: 28
    col: 0
    width: 6
    height: 13
  - title: Aged tickets by Team
    name: Aged tickets by Team
    model: joyent_public_cloud
    explore: combinedtickets
    type: looker_grid
    fields: [combinedtickets.count, ateam.team, combinedtickets.days_open_tier]
    pivots: [combinedtickets.days_open_tier]
    filters:
      combinedtickets.openclosed: Open
      combinedtickets.days_open: NOT NULL
    sorts: [ateam.team, combinedtickets.days_open_tier]
    limit: 500
    total: true
    row_total: right
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
    series_labels:
      combinedtickets.count: Count
    series_column_widths:
      ateam.team: 159
    series_cell_visualizations:
      combinedtickets.count:
        is_active: true
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Teams: ateam.team
    row: 28
    col: 12
    width: 12
    height: 6
  - title: Stale Tickets by Team
    name: Stale Tickets by Team
    model: joyent_public_cloud
    explore: combinedtickets
    type: looker_grid
    fields: [combinedtickets.count, ateam.team, combinedtickets.update_ago_tier]
    pivots: [combinedtickets.update_ago_tier]
    fill_fields: [combinedtickets.update_ago_tier]
    filters:
      combinedtickets.openclosed: Open
      combinedtickets.update_ago: NOT NULL
    sorts: [ateam.team, combinedtickets.update_ago_tier]
    limit: 500
    total: true
    row_total: right
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
    series_labels:
      combinedtickets.count: Count
    series_column_widths:
      ateam.team: 147
    series_cell_visualizations:
      combinedtickets.count:
        is_active: true
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Teams: ateam.team
    row: 34
    col: 12
    width: 12
    height: 7
  - title: Unassigned Tickets by Project
    name: Unassigned Tickets by Project
    model: joyent_public_cloud
    explore: combinedtickets
    type: looker_grid
    fields: [combinedtickets.count, combinedtickets.project, combinedtickets.days_open_tier]
    pivots: [combinedtickets.days_open_tier]
    fill_fields: [combinedtickets.days_open_tier]
    filters:
      combinedtickets.assignee: EMPTY
      combinedtickets.openclosed: Open
      combinedtickets.project: DASH,NETOPS,NENG,inc,sctask,DOC,SUP
    sorts: [combinedtickets.days_open_tier, combinedtickets.project 0]
    limit: 500
    total: true
    row_total: right
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
    series_labels:
      combinedtickets.count: Count
    series_column_widths:
      combinedtickets.project: 116
    series_cell_visualizations:
      combinedtickets.count:
        is_active: true
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 41
    col: 12
    width: 12
    height: 7
  - title: Stale Tickets by Project
    name: Stale Tickets by Project
    model: joyent_public_cloud
    explore: combinedtickets
    type: looker_grid
    fields: [combinedtickets.count, combinedtickets.update_ago_tier, combinedtickets.project]
    pivots: [combinedtickets.update_ago_tier]
    fill_fields: [combinedtickets.update_ago_tier]
    filters:
      combinedtickets.openclosed: Open
      combinedtickets.update_ago: NOT NULL
    sorts: [combinedtickets.update_ago_tier, combinedtickets.project]
    limit: 500
    total: true
    row_total: right
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_column_widths:
      ateam.team: 147
      combinedtickets.project: 162
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      combinedtickets.count: Count
    series_cell_visualizations:
      combinedtickets.count:
        is_active: true
    listen:
      Teams: ateam.team
    row: 41
    col: 0
    width: 12
    height: 7
  - title: Closed Tickets by Engineer (90 days)
    name: Closed Tickets by Engineer (90 days)
    model: joyent_public_cloud
    explore: combinedtickets
    type: looker_grid
    fields: [ateam.username, ateam.team, combinedtickets.count]
    filters:
      combinedtickets.closed_on_date: 90 days
    sorts: [ateam.username]
    limit: 500
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
    series_labels:
      combinedtickets.count: Count
    series_column_widths:
      ateam.name: 431
    series_cell_visualizations:
      combinedtickets.count:
        is_active: true
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
    stacking: normal
    legend_position: center
    series_types: {}
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Teams: ateam.team
    row: 28
    col: 6
    width: 6
    height: 13
  - title: New and closed tickets by week and total open since 2020
    name: New and closed tickets by week and total open since 2020
    model: joyent_public_cloud
    explore: ctickets_facts
    type: looker_column
    fields: [ctickets_facts.open_sum, ctickets_facts.closed_sum, ctickets_facts.date_week]
    fill_fields: [ctickets_facts.date_week]
    filters:
      ctickets_facts.date_week: after 2019/12/30
    sorts: [ctickets_facts.date_week]
    limit: 5000
    dynamic_fields: [{table_calculation: running_open, label: running open, expression: 'running_total(${ctickets_facts.open_sum})
          - running_total(${ctickets_facts.closed_sum})', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    limit_displayed_rows: true
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '53'
    series_types:
      running_open: line
    series_colors:
      running_open: "#F2C73C"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      ctickets_facts.open_sum:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields:
    hide_totals: false
    hide_row_totals: false
    listen:
      Teams: ateam.team
    row: 7
    col: 0
    width: 24
    height: 7
  - title: Team month over month open/close ratio
    name: Team month over month open/close ratio
    model: joyent_public_cloud
    explore: ctickets_facts
    type: looker_column
    fields: [ctickets_facts.open_sum, ctickets_facts.closed_sum, ateam.team, ctickets_facts.date_month]
    pivots: [ateam.team]
    filters:
      ctickets_facts.date_date: after 2022/01/01
    sorts: [ateam.team, ctickets_facts.date_month]
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
    trellis_rows: 4
    series_types: {}
    show_dropoff: true
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
    listen:
      Teams: ateam.team
    row: 48
    col: 0
    width: 24
    height: 20
  - title: Operations month over month open/close ratio
    name: Operations month over month open/close ratio
    model: joyent_public_cloud
    explore: ctickets_facts
    type: looker_column
    fields: [ctickets_facts.open_sum, ctickets_facts.closed_sum, ctickets_facts.date_month]
    filters:
      ctickets_facts.date_date: 12 months
    sorts: [ctickets_facts.date_month]
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
    series_types: {}
    show_dropoff: true
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
    listen:
      Teams: ateam.team
    row: 14
    col: 0
    width: 12
    height: 14
  - title: open vs closed by day
    name: open vs closed by day
    model: joyent_public_cloud
    explore: ctickets_facts
    type: looker_line
    fields: [ateam.team, ctickets_facts.open_sum, ctickets_facts.closed_sum, ctickets_facts.date_date]
    pivots: [ateam.team]
    fill_fields: [ctickets_facts.date_date]
    filters:
      ctickets_facts.date_date: 30 days
    sorts: [ateam.team, ctickets_facts.date_date]
    limit: 500
    row_total: right
    dynamic_fields: [{table_calculation: running_open, label: running open, expression: 'running_total(${ctickets_facts.open_sum})',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: running_closed, label: running closed,
        expression: 'running_total(${ctickets_facts.closed_sum})', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '1'
    series_types: {}
    series_colors:
      CNOC - running_open: "#9B2030"
      IT - running_open: "#9B2030"
      IT - running_closed: "#068993"
      NetOps - running_open: "#9B2030"
      NetOps - running_closed: "#068993"
      OSS - running_open: "#9B2030"
      OSS - running_closed: "#068993"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [ctickets_facts.open_sum, ctickets_facts.closed_sum]
    listen:
      Teams: ateam.team
    row: 68
    col: 0
    width: 24
    height: 15
  - title: Closed tickets
    name: Closed tickets
    model: joyent_public_cloud
    explore: ctickets_facts
    type: looker_column
    fields: [ateam.team, ctickets_facts.date_week, ctickets_facts.closed_sum]
    pivots: [ctickets_facts.date_week]
    fill_fields: [ctickets_facts.date_week]
    filters:
      ctickets_facts.date_week: 1 week ago, 2 week ago
    sorts: [ateam.team, ctickets_facts.date_week]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_dropoff: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Teams: ateam.team
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Open Tickets
    name: Open Tickets
    model: joyent_public_cloud
    explore: ctickets_facts
    type: looker_column
    fields: [ctickets_facts.open_sum, ctickets_facts.closed_sum, ctickets_facts.date_week,
      ateam.team]
    pivots: [ateam.team]
    fill_fields: [ctickets_facts.date_week]
    filters:
      ctickets_facts.date_week: after 2019/12/30
    sorts: [ctickets_facts.date_week, ateam.team]
    limit: 5000
    dynamic_fields: [{table_calculation: running_open, label: running open, expression: 'running_total(${ctickets_facts.open_sum})
          - running_total(${ctickets_facts.closed_sum})', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    limit_displayed_rows: true
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '3'
    series_types: {}
    series_colors:
      running_open: "#F2C73C"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      ctickets_facts.open_sum:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [ctickets_facts.open_sum, ctickets_facts.closed_sum]
    hide_totals: false
    hide_row_totals: false
    listen:
      Teams: ateam.team
    row: 0
    col: 16
    width: 8
    height: 6
  - title: New tickets
    name: New tickets
    model: joyent_public_cloud
    explore: ctickets_facts
    type: looker_column
    fields: [ateam.team, ctickets_facts.open_sum, ctickets_facts.date_week]
    pivots: [ctickets_facts.date_week]
    fill_fields: [ctickets_facts.date_week]
    filters:
      ctickets_facts.date_week: 1 week ago, 2 week ago
    sorts: [ateam.team, ctickets_facts.date_week]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_dropoff: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Teams: ateam.team
    row: 0
    col: 0
    width: 8
    height: 6
  filters:
  - name: Teams
    title: Teams
    type: field_filter
    default_value: BI,CNOC,Doc Mngt,IT,OSS,Support,NetOps
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: joyent_public_cloud
    explore: combinedtickets
    listens_to_filters: []
    field: ateam.team

- dashboard: filter_panel_bug
  title: Filter panel bug
  layout: newspaper
  preferred_viewer: dashboards-next
  description: 'My description'
  filters_location_top: false
  preferred_slug: IVS75NeQ5Tk8smJKJSo5uZ
  elements:
  - title: Untitled
    name: Untitled
    model: system__activity
    explore: event
    type: looker_column
    fields: [event.count, event.created_date]
    fill_fields: [event.created_date]
    sorts: [event.created_date desc]
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
    series_types: {}
    defaults_version: 1
    listen:
      Created Date: event.created_date
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Created Date
    title: Created Date
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: system__activity
    explore: event
    listens_to_filters: []
    field: event.created_date

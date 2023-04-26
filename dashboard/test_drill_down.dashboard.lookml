#Oregon is currently being filtered out of the dashboard per client request since they left the model.
- dashboard: ldg_inck
  title: 'Integrated Care for Kids Model: LDG-AMS Model Milestone Analysis'
  layout: newspaper
  preferred_viewer: dashboards-next
  description: 'This dashboard contains analysis for LDG-AMS-InCK engagements. Note: Oregon has been excluded from the results'
  #extends: current_version
  elements:
  - title: KPIs
    name: KPIs
    model: ams_redshift
    explore: ldg_explore
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [apm_models.short_name, apm_models.name, apm_models.model_status, apm_models.start_date,
      apm_models.end_date, ldg_model_measure_collection.max_date]
    filters:
      apm_models.id: '59'
    sorts: [apm_models.start_date desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: '"Latest Submission"',
        label: Label1, value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: label1, _type_hint: string}, {category: table_calculation,
        expression: 'concat(extract_years(${apm_models.start_date}), " - ", extract_years(${apm_models.end_date}))',
        label: Start End Year, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: start_end_year_1, _type_hint: string},
      {category: table_calculation, expression: '"Start to End Year"', label: Label2,
        value_format: !!null '', value_format_name: '', _kind_hint: dimension, table_calculation: label2,
        _type_hint: string}, {category: table_calculation, expression: "(substring(to_string(now()),\
          \ 0, 10))", label: As of Date, value_format: !!null '', value_format_name: '',
        _kind_hint: dimension, table_calculation: as_of_date, _type_hint: string}]
    hidden_fields: [apm_models.model_status, as_of_date, apm_models.start_date, apm_models.end_date]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '16'
    orientation: auto
    style_apm_models.short_name: "#015986"
    show_title_apm_models.short_name: false
    title_placement_apm_models.short_name: below
    value_format_apm_models.short_name: ''
    show_comparison_apm_models.name: true
    comparison_style_apm_models.name: value
    comparison_show_label_apm_models.name: false
    style_ldg_model_measure_collection.max_date: "#4d5a64"
    show_title_ldg_model_measure_collection.max_date: false
    title_override_ldg_model_measure_collection.max_date: Latest Submission
    title_placement_ldg_model_measure_collection.max_date: below
    value_format_ldg_model_measure_collection.max_date: ''
    show_comparison_ldg_model_measure_collection.max_date: false
    show_comparison_label1: true
    comparison_style_label1: value
    comparison_show_label_label1: false
    style_start_end_year_1: "#4d5a64"
    show_title_start_end_year_1: false
    show_comparison_label2: true
    comparison_style_label2: value
    comparison_show_label_label2: false
    style_start_end_year: "#4d5a64"
    show_title_start_end_year: false
    comparison_label_placement_apm_models.name: below
    comp_value_format_apm_models.name: ''
    style_apm_models.start_date: "#4d5a64"
    show_title_apm_models.start_date: false
    title_override_apm_models.start_date: Start Date
    title_placement_apm_models.start_date: below
    value_format_apm_models.start_date: Model Start Date
    show_comparison_apm_models.start_date: false
    show_comparison_apm_models.end_date: true
    comparison_style_apm_models.end_date: value
    comparison_show_label_apm_models.end_date: true
    comparison_label_apm_models.end_date: "(Start to End Date)"
    comparison_label_placement_apm_models.end_date: below
    comp_value_format_apm_models.end_date: ''
    style_new_dimension: "#3A4245"
    show_title_new_dimension: true
    title_placement_new_dimension: above
    value_format_new_dimension: ''
    show_comparison_new_dimension: false
    style_as_of_date: "#4d5a64"
    show_title_as_of_date: true
    title_override_as_of_date: Data Collection as of
    title_placement_as_of_date: below
    value_format_as_of_date: "%x"
    show_comparison_as_of_date: false
    style_apm_models.model_status: "#4d5a64"
    show_title_apm_models.model_status: true
    title_placement_apm_models.model_status: below
    value_format_apm_models.model_status: ''
    show_comparison_apm_models.model_status: false
    style_apm_models.end_date: "#4d5a64"
    show_title_apm_models.end_date: true
    title_override_apm_models.end_date: Model End Date
    title_placement_apm_models.end_date: above
    value_format_apm_models.end_date: ''
    style_apm_models.name: "#004e76"
    show_title_apm_models.name: false
    title_placement_apm_models.name: above
    value_format_apm_models.name: ''
    show_comparison_apm_models.short_name: false
    comparison_style_apm_models.short_name: value
    comparison_show_label_apm_models.short_name: false
    defaults_version: 0
    series_types: {}
    title_hidden: true
    listen:
      Entity Name: apm_entities.name
      Model Name: apm_models.name
      Category: ldg_ams_milestones_lookup.category
      Model Phase: ldg_ams_milestones_lookup.omp_category
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Model Baseball Card
    name: Model Baseball Card
    model: ams_redshift
    explore: ldg_explore
    type: looker_single_record
    fields: [ldg_ams_milestones_lookup.primary_driver, ldg_ams_milestones_lookup.secondary_driver,
      ldg_ams_milestones_lookup.milestone, ldg_ams_milestones_lookup.measurement,
      ldg_ams_milestones_lookup.category, community_alignment.value, services_provided.value,
      type_of_care_coordination.value, apm_models.team_lead_name, apm_models.updated_by,
      apm_models.additional_point_of_contact]
    filters:
      apm_models.id: '59'
    sorts: [ldg_ams_milestones_lookup.primary_driver]
    limit: 500
    column_limit: 50
    show_view_names: false
    font_size_main: 12x
    orientation: vertical
    style_apm_models.team_lead_name: "#3A4245"
    show_title_apm_models.team_lead_name: true
    title_placement_apm_models.team_lead_name: above
    value_format_apm_models.team_lead_name: ''
    style_apm_models.apm_qpp: "#3A4245"
    show_title_apm_models.apm_qpp: true
    title_placement_apm_models.apm_qpp: above
    value_format_apm_models.apm_qpp: ''
    show_comparison_apm_models.apm_qpp: false
    style_apm_subdivisions.overall_advanced_flag: "#3A4245"
    show_title_apm_subdivisions.overall_advanced_flag: true
    title_placement_apm_subdivisions.overall_advanced_flag: above
    value_format_apm_subdivisions.overall_advanced_flag: ''
    show_comparison_apm_subdivisions.overall_advanced_flag: false
    style_apm_models.mips_apm_flag: "#3A4245"
    show_title_apm_models.mips_apm_flag: true
    title_placement_apm_models.mips_apm_flag: above
    value_format_apm_models.mips_apm_flag: ''
    show_comparison_apm_models.mips_apm_flag: false
    style_goal_of_model.value: "#3A4245"
    show_title_goal_of_model.value: true
    title_placement_goal_of_model.value: above
    value_format_goal_of_model.value: ''
    show_comparison_goal_of_model.value: false
    style_apm_models.model_category: "#3A4245"
    show_title_apm_models.model_category: true
    title_placement_apm_models.model_category: above
    value_format_apm_models.model_category: ''
    style_ldg_explore.demo_codes_needed: "#3A4245"
    show_title_ldg_explore.demo_codes_needed: true
    title_placement_ldg_explore.demo_codes_needed: above
    value_format_ldg_explore.demo_codes_needed: ''
    show_comparison_ldg_explore.demo_codes_needed: false
    style_ldg_explore.demo_code_value: "#3A4245"
    show_title_ldg_explore.demo_code_value: true
    title_placement_ldg_explore.demo_code_value: above
    value_format_ldg_explore.demo_code_value: ''
    show_comparison_ldg_explore.demo_code_value: false
    style_ldg_explore.benchmarks_based_value: "#3A4245"
    show_title_ldg_explore.benchmarks_based_value: true
    title_placement_ldg_explore.benchmarks_based_value: above
    value_format_ldg_explore.benchmarks_based_value: ''
    show_comparison_ldg_explore.benchmarks_based_value: false
    style_ldg_explore.benchmarks_based_rationale: "#3A4245"
    show_title_ldg_explore.benchmarks_based_rationale: true
    title_placement_ldg_explore.benchmarks_based_rationale: above
    value_format_ldg_explore.benchmarks_based_rationale: ''
    show_comparison_ldg_explore.benchmarks_based_rationale: false
    show_comparison_apm_models.team_lead_name: false
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
    defaults_version: 1
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    note_state: collapsed
    note_display: above
    note_text: |-
      <p>Model Information<br>
      <i>Scroll for more model characteristics
    title_hidden: true
    listen:
      Entity Name: apm_entities.name
      Model Name: apm_models.name
    row: 6
    col: 11
    width: 13
    height: 14
  - title: Goal of Model
    name: Goal of Model
    model: ams_redshift
    explore: ldg_explore
    type: looker_grid
    fields: [goal_of_model.value]
    filters:
      apm_models.id: '59'
    sorts: [goal_of_model.value]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: dark-ruby-to-slate-grey
      palette_id: dark-ruby-to-slate-grey-categorical-0
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      goal_of_model.value: ">   Model Aim (Goal)"
    series_column_widths: {}
    series_text_format:
      goal_of_model.value:
        fg_color: "#4d5a64"
    header_font_color: "#ffffff"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#004e76",
        font_color: !!null '', color_application: {collection_id: ams-primary-blues,
          palette_id: ams-primary-blues-sequential-0}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    truncate_column_names: false
    custom_color_enabled: true
    custom_color: "#006ca4"
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Model Goal (Aim)
    title_hidden: true
    listen:
      Entity Name: apm_entities.name
      Model Name: apm_models.name
    row: 3
    col: 0
    width: 24
    height: 3
  - title: New Tile
    name: New Tile
    model: ams_redshift
    explore: ldg_explore
    type: single_value
    fields: [apm_entities.entities, apm_entities.count_of_states]
    filters:
      apm_models.id: '59'
      apm_entities.state: "-OR"
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: prussian-blue-to-old-mauve
      palette_id: prussian-blue-to-old-mauve-categorical-0
    custom_color: "#0a5c70"
    single_value_title: Entities Enrolled across
    comparison_label: States or Territories
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    listen:
      Entity Name: apm_entities.name
      Model Name: apm_models.name
    row: 6
    col: 0
    width: 4
    height: 5
  - title: Retention Goal
    name: Retention Goal
    model: ams_redshift
    explore: ldg_explore
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [apm_entities.entities, ldg_model_measure_collection.entity_retention1]
    filters:
      apm_models.id: '59'
      ldg_model_measure_collection.entity_retention: '0.9'
      apm_entities.state: "-OR"
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: "${apm_entities.entities}",
        label: Total, value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: total, _type_hint: number}, {category: table_calculation,
        expression: 'round(${apm_entities.entities}*${ldg_model_measure_collection.entity_retention1},
          0)', label: Goal, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: goal, _type_hint: number}]
    hidden_fields: [ldg_model_measure_collection.entity_retention1, apm_entities.entities]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 0
    arm_weight: 0
    spinner_length: 137
    spinner_weight: 8
    target_length: 11
    target_gap: 10
    target_weight: 21
    range_min: 0
    value_label_type: both
    value_label_font: 10
    value_label_override: Entities Retained YoY
    value_label_padding: 44
    target_source: second
    target_label_type: both
    target_label_font: 5
    target_label_override: Goal
    label_font_size: 3
    spinner_type: needle
    fill_color: "#0f4c5c"
    background_color: "#a1a8ae"
    spinner_color: "#5f0f40"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 63
    range_x: 1.3
    range_y: -0.3
    target_label_padding: 1.1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: prussian-blue-to-old-mauve
      palette_id: prussian-blue-to-old-mauve-categorical-0
    custom_color: "#0a5c70"
    single_value_title: Entities Enrolled across
    comparison_label: States or Territories
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    hide_totals: false
    hide_row_totals: false
    defaults_version: 0
    series_types: {}
    note_state: collapsed
    note_display: above
    note_text: "<p>Retention Goal"
    title_hidden: true
    listen:
      Entity Name: apm_entities.name
      Model Name: apm_models.name
    row: 6
    col: 4
    width: 7
    height: 5
  - title: Mini map
    name: Mini map
    model: ams_redshift
    explore: ldg_explore
    type: looker_google_map
    fields: [ldg_model_measure_collection.count_of_measures_reported_by_entity, apm_entities.state]
    filters:
      apm_models.id: '59'
      apm_entities.id: ''
      apm_entities.state: "-OR"
    sorts: [apm_entities.state desc]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
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
    quantize_map_value_colors: true
    reverse_map_value_colors: true
    map_value_colors: ["#1d2f49", "#792A3A"]
    map_value_scale_clamp_min:
    map_value_scale_clamp_max:
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: prussian-blue-to-old-mauve
      palette_id: prussian-blue-to-old-mauve-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: on_track, id: on_track,
            name: On Track}, {axisId: off_track, id: off_track, name: Off Track}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hide_legend: true
    series_types: {}
    series_colors:
      off_track: "#9a031e"
      on_track: "#0a5c70"
    reference_lines: [{reference_type: line, line_value: '0.8', range_start: max,
        range_end: min, margin_top: deviation, margin_value: mean, margin_bottom: deviation,
        label_position: right, color: "#000000", label: '', value_format: ''}]
    defaults_version: 0
    note_state: collapsed
    note_display: above
    note_text: |
      <p>Count of Reported Measures by State <br>
      <i>Click on the state for more information about the entities enrolled
    title_hidden: true
    listen:
      Entity Name: apm_entities.name
      Model Name: apm_models.name
    row: 11
    col: 0
    width: 11
    height: 9
  - name: Development Process Milestones
    type: text
    title_text: Development Process Milestones
    subtitle_text: "<i>An overview of Development Process Phase Milestones and Measures"
    body_text: "[Click here to view Mapping of Drivers to Milestones and Measures](https://ams-container-test-canary-looker-00b8581ade66ebd5.elb.us-east-1.amazonaws.com/explore/ams_redshift/ldg_explore?qid=tWeh6AQaAJZAPkqK5Uj2VI&origin_space=30)"
    row: 20
    col: 0
    width: 24
    height: 2
  - title: Awardees in Learning Events
    name: Awardees in Learning Events
    model: ams_redshift
    explore: ldg_explore
    type: looker_column
    fields: [apm_entities.id, ldg_model_measure_collection.value_count, ldg_model_measure_collection.date_month,
      ldg_model_measure_collection.count_all_measures]
    pivots: [apm_entities.id]
    fill_fields: [ldg_model_measure_collection.date_month]
    filters:
      apm_models.id: '59'
      apm_entities.id: ''
      ldg_ams_milestones_lookup.omp_category: Process
      ldg_ams_milestones_lookup.measurement_id: '49'
      ldg_model_measure_collection.event_name: ''
      apm_entities.state: "-OR"
    sorts: [apm_entities.id, ldg_model_measure_collection.date_month desc]
    column_limit: 50
    dynamic_fields: [{category: table_calculation, expression: 'if(${ldg_model_measure_collection.count_of_measures_reported_by_entity}=0,
          "False", "True")', label: True False Label, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: true_false_label, _type_hint: string,
        is_disabled: true}]
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
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: spaced-out-ruby
      palette_id: spaced-out-ruby-categorical-0
    y_axes: [{label: Phone Calls, orientation: left, series: [{axisId: InCK-CT01 -
              ldg_model_measure_collection.value_count, id: InCK-CT01 - ldg_model_measure_collection.value_count,
            name: InCK-CT01}, {axisId: InCK-IL01 - ldg_model_measure_collection.value_count,
            id: InCK-IL01 - ldg_model_measure_collection.value_count, name: InCK-IL01},
          {axisId: InCK-IL02 - ldg_model_measure_collection.value_count, id: InCK-IL02
              - ldg_model_measure_collection.value_count, name: InCK-IL02}, {axisId: InCK-NC01
              - ldg_model_measure_collection.value_count, id: InCK-NC01 - ldg_model_measure_collection.value_count,
            name: InCK-NC01}, {axisId: InCK-NJ01 - ldg_model_measure_collection.value_count,
            id: InCK-NJ01 - ldg_model_measure_collection.value_count, name: InCK-NJ01},
          {axisId: InCK-NY01 - ldg_model_measure_collection.value_count, id: InCK-NY01
              - ldg_model_measure_collection.value_count, name: InCK-NY01}, {axisId: InCK-OH01
              - ldg_model_measure_collection.value_count, id: InCK-OH01 - ldg_model_measure_collection.value_count,
            name: InCK-OH01}, {axisId: InCK-OR01 - ldg_model_measure_collection.value_count,
            id: InCK-OR01 - ldg_model_measure_collection.value_count, name: InCK-OR01}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    hide_legend: true
    trellis_rows: 4
    series_types: {}
    series_colors:
      InCK-NY01 - ldg_model_measure_collection.value_count: "#495057"
      InCK-OH01 - ldg_model_measure_collection.value_count: "#856f72"
      InCK-NY01 - ldg_model_measure_collection.count_all_measures: "#850d50"
    series_labels:
      ldg_model_measure_collection.count_of_measures_reported_by_entity: Responded?
      ldg_model_measure_collection.date_quarter: Quarter
      ldg_model_measure_collection.max_date: Date
    x_axis_datetime_label: "%m/%y"
    reference_lines: [{reference_type: margins, line_value: mean, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#808080", label: '', range_start: max, value_format: '0'}]
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      ldg_ams_milestones_lookup.measurement: 400
    series_cell_visualizations:
      ldg_model_measure_collection.count_of_measures_reported_by_entity:
        is_active: false
    series_text_format:
      ldg_model_measure_collection.count_of_measures_reported_by_entity: {}
    table_theme: unstyled
    enable_conditional_formatting: true
    header_font_color: "#495057"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#2a324b",
        font_color: !!null '', color_application: {collection_id: spaced-out-ruby,
          custom: {id: a1458a93-59dc-87ce-b094-d090138d43f5, label: Custom, type: continuous,
            stops: [{color: "#753c38", offset: 0}, {color: "#ffffff", offset: 50},
              {color: "#d4d4d4", offset: 100}]}, options: {steps: 2, constraints: {
              min: {type: number, value: 0}, mid: {type: number, value: 0}, max: {
                type: number, value: 1}}, mirror: false, reverse: false, stepped: true}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    color_picker: ["#7FCDAE", "#7ED09C", "#7DD389", "#85D67C", "#9AD97B", "#B1DB7A",
      "#CADF79", "#E2DF78", "#E5C877", "#E7AF75", "#EB9474", "#EE7772"]
    formatting_override: ''
    rounded: false
    outline: quarter
    label_year: false
    label_month: false
    viz_show_legend: 'true'
    focus_tooltip: 'true'
    outline_weight: 1
    cell_color: "#fff"
    outline_color: "#000"
    cell_reducer: 1
    axis_label_color: "#282828"
    defaults_version: 1
    hidden_fields: [ldg_model_measure_collection.value_count]
    hidden_points_if_no: []
    note_state: collapsed
    note_display: above
    note_text: |-
      <p>Event Participation by Awardees
      <br>Bars show participation by month; lines show avg. participation by Awardee <br>To see a list by event name, select 'Explore from Here' and add 'Event name' to the view
    title_hidden: true
    listen:
      Entity Name: apm_entities.name
      Model Name: apm_models.name
    row: 22
    col: 0
    width: 24
    height: 10
  - title: Awardees Engaging in Connect
    name: Awardees Engaging in Connect
    model: ams_redshift
    explore: ldg_explore
    type: looker_bar
    fields: [apm_entities.id, ldg_model_measure_collection.count_all_measures]
    filters:
      apm_models.id: '59'
      apm_entities.id: ''
      ldg_ams_milestones_lookup.omp_category: Process
      ldg_ams_milestones_lookup.measurement_id: '50'
      apm_entities.state: "-OR"
    sorts: [ldg_model_measure_collection.count_all_measures desc]
    column_limit: 50
    dynamic_fields: [{category: table_calculation, description: Count of engagements
          by entity., expression: "if(${ldg_model_measure_collection.count_all_measures}\
          \ > ${maximum_engagements}-(${range}*0.25), ${ldg_model_measure_collection.count_all_measures},\
          \ null\n)", label: Number of Engagements, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: number_of_engagements, _type_hint: number,
        id: 7nQRvtF8SM}, {category: table_calculation, description: Number of engagements
          in connect by a single entity., expression: "if(${ldg_model_measure_collection.count_all_measures}\
          \ > ${maximum_engagements}-(${range}*0.5) AND ${ldg_model_measure_collection.count_all_measures}\
          \ <= ${maximum_engagements}-(${range}*0.25), ${ldg_model_measure_collection.count_all_measures},\
          \ null\n)", label: Number of Engagements, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: number_of_engagements_1, _type_hint: number,
        id: gKgGDDrt8S}, {category: table_calculation, description: Number of engagements
          in Connect by entity., expression: "if(${ldg_model_measure_collection.count_all_measures}\
          \ < ${maximum_engagements}-(${range}*0.5) AND ${ldg_model_measure_collection.count_all_measures}\
          \ >= ${maximum_engagements}-(${range}*0.75), ${ldg_model_measure_collection.count_all_measures},\
          \ null\n)", label: 'Number of Engagements   ', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: number_of_engagements_2,
        _type_hint: number, id: txY3C5LGng}, {category: table_calculation, description: Number
          of engagements in Connect by entity, expression: "if(${ldg_model_measure_collection.count_all_measures}\
          \ < ${maximum_engagements}-(${range}*0.75) , ${ldg_model_measure_collection.count_all_measures},\
          \ null\n)", label: 'Number of Engagements      ', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: number_of_engagements_3,
        _type_hint: number, id: op6Um9PzEn}, {category: table_calculation, description: Maximum
          number of engagements in Connect by a single entity minus the minimum number
          of engagements in Connect by a single entity., expression: 'max(${ldg_model_measure_collection.count_all_measures})-min(${ldg_model_measure_collection.count_all_measures})',
        label: Range, value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: range, _type_hint: number, id: fWinqgGqUf}, {category: table_calculation,
        description: Maximum number of engagements in Connect by a single entity.,
        expression: 'max(${ldg_model_measure_collection.count_all_measures})', label: Maximum
          engagements, value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        table_calculation: maximum_engagements, _type_hint: number, id: BXTky8ydme}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: right
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: ams-blues
      palette_id: ams-blues-categorical-0
      options:
        steps: 5
    y_axes: [{label: Phone Calls, orientation: bottom, series: [{axisId: ldg_model_measure_collection.value_count,
            id: ldg_model_measure_collection.value_count, name: Numeric Responses},
          {axisId: color_coding_bin_1, id: color_coding_bin_1, name: Color Coding
              Bin 1}, {axisId: color_coding_bin_2, id: color_coding_bin_2, name: Color
              Coding Bin 2}, {axisId: color_coding_bin_3, id: color_coding_bin_3,
            name: Color Coding Bin 3}, {axisId: color_coding_bin_4, id: color_coding_bin_4,
            name: Color Coding Bin 4}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: [InCK-OR01 - ldg_model_measure_collection.value_count, InCK-OH01
        - ldg_model_measure_collection.value_count]
    hide_legend: true
    label_value_format: ''
    series_types: {}
    series_colors:
      InCK-NY01 - ldg_model_measure_collection.value_count: "#495057"
      InCK-OH01 - ldg_model_measure_collection.value_count: "#856f72"
      InCK-NJ01 - ldg_model_measure_collection.value_count: "#841c26"
      InCK-NY01 - ldg_model_measure_collection.count_all_measures: "#841c26"
      ldg_model_measure_collection.value_count: "#d5d8dc"
      color_coding_bin_1: "#0747A6"
      color_coding_bin_2: "#4d7cc3"
      color_coding_bin_3: "#7b9fd6"
      color_coding_bin_4: "#aac3e9"
      number_of_engagements: "#0747A6"
      number_of_engagements_1: "#356AB9"
      number_of_engagements_2: "#648ecc"
      number_of_engagements_3: "#93b1e0"
    series_labels:
      ldg_model_measure_collection.count_of_measures_reported_by_entity: Responded?
      ldg_model_measure_collection.date_quarter: Quarter
      ldg_model_measure_collection.max_date: Date
    x_axis_datetime_label: "%b %Y"
    reference_lines: []
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      ldg_ams_milestones_lookup.measurement: 400
    series_cell_visualizations:
      ldg_model_measure_collection.count_of_measures_reported_by_entity:
        is_active: false
    series_text_format:
      ldg_model_measure_collection.count_of_measures_reported_by_entity: {}
    table_theme: unstyled
    enable_conditional_formatting: true
    header_font_color: "#495057"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#2a324b",
        font_color: !!null '', color_application: {collection_id: spaced-out-ruby,
          custom: {id: a1458a93-59dc-87ce-b094-d090138d43f5, label: Custom, type: continuous,
            stops: [{color: "#753c38", offset: 0}, {color: "#ffffff", offset: 50},
              {color: "#d4d4d4", offset: 100}]}, options: {steps: 2, constraints: {
              min: {type: number, value: 0}, mid: {type: number, value: 0}, max: {
                type: number, value: 1}}, mirror: false, reverse: false, stepped: true}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    color_picker: ["#7FCDAE", "#7ED09C", "#7DD389", "#85D67C", "#9AD97B", "#B1DB7A",
      "#CADF79", "#E2DF78", "#E5C877", "#E7AF75", "#EB9474", "#EE7772"]
    formatting_override: ''
    rounded: false
    outline: quarter
    label_year: false
    label_month: false
    viz_show_legend: 'true'
    focus_tooltip: 'true'
    outline_weight: 1
    cell_color: "#fff"
    outline_color: "#000"
    cell_reducer: 1
    axis_label_color: "#282828"
    defaults_version: 1
    hidden_fields: [ldg_model_measure_collection.count_all_measures, max_engagements_by_entity,
      min_engagements_by_entity_copy, min_engagements_by_entity, range, maximum_engagements]
    hidden_points_if_no: []
    note_state: collapsed
    note_display: above
    note_text: "<p>Number of Connect Engagements per Awardee Since 2017"
    title_hidden: true
    listen:
      Entity Name: apm_entities.name
      Model Name: apm_models.name
    row: 32
    col: 10
    width: 14
    height: 5
  - title: InCK_Presenting and Using Data for Quality Improvement
    name: InCK_Presenting and Using Data for Quality Improvement
    model: ams_redshift
    explore: ldg_explore
    type: looker_grid
    fields: [apm_entities.name, apm_entities.id, ldg_model_measure_collection.date_month,
      ldg_model_measure_collection.count_all_measures]
    filters:
      apm_models.id: '59'
      apm_entities.id: ''
      ldg_ams_milestones_lookup.omp_category: Process
      ldg_ams_milestones_lookup.measurement_id: '53'
      apm_entities.state: "-OR"
    sorts: [ldg_model_measure_collection.date_month desc]
    column_limit: 50
    dynamic_fields: [{category: table_calculation, description: Checks to ensure entity
          participated in this event, expression: 'if(${ldg_model_measure_collection.count_all_measures}>0,
          "Yes", "No")', label: Completion Check, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: completion_check, _type_hint: string}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: spaced-out-ruby
      palette_id: spaced-out-ruby-categorical-0
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      ldg_model_measure_collection.count_of_measures_reported_by_entity: Responded?
      ldg_model_measure_collection.date_quarter: Quarter
      ldg_model_measure_collection.max_date: Date
      ldg_model_measure_collection.date_month: Month / Year
      completion_check: Participated?
    series_column_widths:
      ldg_ams_milestones_lookup.measurement: 400
      apm_entities.id: 83
      ldg_model_measure_collection.date_month: 103
    series_cell_visualizations:
      ldg_model_measure_collection.count_of_measures_reported_by_entity:
        is_active: false
    series_text_format:
      ldg_model_measure_collection.count_of_measures_reported_by_entity: {}
    header_font_color: "#495057"
    conditional_formatting: [{type: equal to, value: 1, background_color: "#326273",
        font_color: "#326273", color_application: {collection_id: spaced-out-ruby,
          custom: {id: a1458a93-59dc-87ce-b094-d090138d43f5, label: Custom, type: continuous,
            stops: [{color: "#753c38", offset: 0}, {color: "#ffffff", offset: 50},
              {color: "#d4d4d4", offset: 100}]}, options: {steps: 2, constraints: {
              min: {type: number, value: 0}, mid: {type: number, value: 0}, max: {
                type: number, value: 1}}, mirror: false, reverse: false, stepped: true}},
        bold: false, italic: false, strikethrough: false, fields: [completion_check]}]
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    legend_position: right
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    y_axes: [{label: Phone Calls, orientation: left, series: [{axisId: ldg_model_measure_collection.value_count,
            id: InCK-CT01 - ldg_model_measure_collection.value_count, name: InCK-CT01},
          {axisId: ldg_model_measure_collection.value_count, id: InCK-IL01 - ldg_model_measure_collection.value_count,
            name: InCK-IL01}, {axisId: ldg_model_measure_collection.value_count, id: InCK-IL02
              - ldg_model_measure_collection.value_count, name: InCK-IL02}, {axisId: ldg_model_measure_collection.value_count,
            id: InCK-NC01 - ldg_model_measure_collection.value_count, name: InCK-NC01},
          {axisId: ldg_model_measure_collection.value_count, id: InCK-NJ01 - ldg_model_measure_collection.value_count,
            name: InCK-NJ01}, {axisId: ldg_model_measure_collection.value_count, id: InCK-NY01
              - ldg_model_measure_collection.value_count, name: InCK-NY01}, {axisId: ldg_model_measure_collection.value_count,
            id: InCK-OH01 - ldg_model_measure_collection.value_count, name: InCK-OH01},
          {axisId: ldg_model_measure_collection.value_count, id: InCK-OR01 - ldg_model_measure_collection.value_count,
            name: InCK-OR01}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: []
    label_value_format: ''
    series_types: {}
    series_colors:
      InCK-NY01 - ldg_model_measure_collection.value_count: "#495057"
      InCK-OH01 - ldg_model_measure_collection.value_count: "#856f72"
      InCK-NJ01 - ldg_model_measure_collection.value_count: "#841c26"
    x_axis_datetime_label: "%b %Y"
    reference_lines: []
    discontinuous_nulls: false
    color_picker: ["#7FCDAE", "#7ED09C", "#7DD389", "#85D67C", "#9AD97B", "#B1DB7A",
      "#CADF79", "#E2DF78", "#E5C877", "#E7AF75", "#EB9474", "#EE7772"]
    formatting_override: ''
    rounded: false
    outline: quarter
    label_year: false
    label_month: false
    viz_show_legend: 'true'
    focus_tooltip: 'true'
    outline_weight: 1
    cell_color: "#fff"
    outline_color: "#000"
    cell_reducer: 1
    axis_label_color: "#282828"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [ldg_model_measure_collection.count_all_measures]
    hidden_points_if_no: []
    note_state: collapsed
    note_display: above
    note_text: "<p>Awardee Participation Using Data for Quality Improvement Event\
      \ Since 2017"
    title_hidden: true
    listen:
      Entity Name: apm_entities.name
      Model Name: apm_models.name
    row: 37
    col: 10
    width: 14
    height: 6
  - title: Participate, in-person, at up to one CMS designated conference per year
    name: Participate, in-person, at up to one CMS designated conference per year
    model: ams_redshift
    explore: ldg_explore
    type: looker_bar
    fields: [ldg_model_measure_collection.event_name, ldg_model_measure_collection.count_all_measures]
    filters:
      apm_models.id: '59'
      apm_entities.id: ''
      ldg_ams_milestones_lookup.omp_category: Process
      ldg_ams_milestones_lookup.measurement_id: '56'
      apm_entities.state: "-OR"
    sorts: [ldg_model_measure_collection.count_all_measures desc]
    column_limit: 50
    total: true
    dynamic_fields: [{category: table_calculation, description: Shows count of participating
          entities in the conference (in bins for visualization purposes only - ignore),
        expression: "if(\n  ${ldg_model_measure_collection.count_all_measures}>=\n\
          \  (\n    ${max_number_of_participations_in_a_conference}-\n    \n    (\n\
          \      (${max_number_of_participations_in_a_conference}- ${min_number_of_participations_in_a_conference})*0.25)\n\
          \    ), \n  ${ldg_model_measure_collection.count_all_measures}, null\n)",
        label: 'Count of Participating ', value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, table_calculation: count_of_participating, _type_hint: number,
        id: SjP1effKDC}, {category: table_calculation, description: Shows count of
          participating entities in the conference (in bins for visualization purposes
          only - ignore), expression: "if(\n  ${ldg_model_measure_collection.count_all_measures}<\n\
          \  (\n    ${max_number_of_participations_in_a_conference}-\n    (\n    \
          \  (${max_number_of_participations_in_a_conference}- ${min_number_of_participations_in_a_conference}\n\
          \        )*0.25\n      )\n  )\n  AND\n  (\n    ${ldg_model_measure_collection.count_all_measures}>=\n\
          \  (\n    ${max_number_of_participations_in_a_conference}-\n    (\n    \
          \  (${max_number_of_participations_in_a_conference}- ${min_number_of_participations_in_a_conference})*0.5\n\
          \     )\n  )\n  ), \n  ${ldg_model_measure_collection.count_all_measures},\
          \ null\n)", label: 'Count of Participating  ', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: count_of_participating_1,
        _type_hint: number, id: Dx5CVd2z8w}, {category: table_calculation, description: Shows
          count of participating entities in the conference (in bins for visualization
          purposes only - ignore), expression: "if(\n  ${ldg_model_measure_collection.count_all_measures}<\n\
          \  (\n    ${max_number_of_participations_in_a_conference}-\n    (\n    \
          \  (${max_number_of_participations_in_a_conference}- ${min_number_of_participations_in_a_conference}\n\
          \        )*0.5\n      )\n  )\n  AND\n  (\n    ${ldg_model_measure_collection.count_all_measures}>=\n\
          \  (\n    ${max_number_of_participations_in_a_conference}-\n    (\n    \
          \  (${max_number_of_participations_in_a_conference}- ${min_number_of_participations_in_a_conference})*0.75\n\
          \     )\n  )\n  ), \n  ${ldg_model_measure_collection.count_all_measures},\
          \ null\n)", label: 'Count of Participating    ', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: count_of_participating_2,
        _type_hint: number, id: 9s2pD6yRpi}, {category: table_calculation, description: Shows
          count of participating entities in the conference (in bins for visualization
          purposes only - ignore), expression: "if(\n  ${ldg_model_measure_collection.count_all_measures}<\n\
          \  (\n    ${max_number_of_participations_in_a_conference}-\n    (\n    \
          \  (${max_number_of_participations_in_a_conference}- ${min_number_of_participations_in_a_conference})\n\
          \      *0.75)\n  )\n  , \n  ${ldg_model_measure_collection.count_all_measures},\
          \ null\n)", label: 'Count of Participating      ', value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: count_of_participating_3,
        _type_hint: number, id: pDokxJ7m8v}, {category: table_calculation, description: Indicates
          the maximum number of participations in any conference on the list., expression: 'max(${ldg_model_measure_collection.count_all_measures})',
        label: Max number of Participations in a Conference, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: max_number_of_participations_in_a_conference,
        _type_hint: number, id: gHchwRPOqi}, {category: table_calculation, description: Indicates
          the minimum number of participations in any conference on the list., expression: 'min(${ldg_model_measure_collection.count_all_measures})',
        label: Min number of Participations in a Conference, value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, table_calculation: min_number_of_participations_in_a_conference,
        _type_hint: number, id: bnFFISEFcb}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: prussian-blue-to-old-mauve
      palette_id: prussian-blue-to-old-mauve-categorical-0
    y_axes: [{label: Phone Calls, orientation: left, series: [{axisId: InCK-CT01 -
              ldg_model_measure_collection.value_count, id: InCK-CT01 - ldg_model_measure_collection.value_count,
            name: InCK-CT01}, {axisId: InCK-IL01 - ldg_model_measure_collection.value_count,
            id: InCK-IL01 - ldg_model_measure_collection.value_count, name: InCK-IL01},
          {axisId: InCK-IL02 - ldg_model_measure_collection.value_count, id: InCK-IL02
              - ldg_model_measure_collection.value_count, name: InCK-IL02}, {axisId: InCK-NC01
              - ldg_model_measure_collection.value_count, id: InCK-NC01 - ldg_model_measure_collection.value_count,
            name: InCK-NC01}, {axisId: InCK-NJ01 - ldg_model_measure_collection.value_count,
            id: InCK-NJ01 - ldg_model_measure_collection.value_count, name: InCK-NJ01},
          {axisId: InCK-NY01 - ldg_model_measure_collection.value_count, id: InCK-NY01
              - ldg_model_measure_collection.value_count, name: InCK-NY01}, {axisId: InCK-OH01
              - ldg_model_measure_collection.value_count, id: InCK-OH01 - ldg_model_measure_collection.value_count,
            name: InCK-OH01}, {axisId: InCK-OR01 - ldg_model_measure_collection.value_count,
            id: InCK-OR01 - ldg_model_measure_collection.value_count, name: InCK-OR01}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hidden_series: []
    hide_legend: true
    label_value_format: ''
    series_types: {}
    series_colors:
      InCK-NY01 - ldg_model_measure_collection.value_count: "#495057"
      InCK-OH01 - ldg_model_measure_collection.value_count: "#856f72"
      InCK-NJ01 - ldg_model_measure_collection.value_count: "#841c26"
      InCK-NY01 - ldg_model_measure_collection.count_all_measures: "#850d50"
      count_of_participating: "#0a5c70"
      count_of_participating_1: "#087e8b"
      count_of_participating_2: "#bfd7ea"
      count_of_participating_3: "#adadad"
    series_labels:
      ldg_model_measure_collection.count_of_measures_reported_by_entity: Responded?
      ldg_model_measure_collection.date_quarter: Quarter
      ldg_model_measure_collection.max_date: Date
      ldg_model_measure_collection.date_month: Year/Month of Event
      ldg_model_measure_collection.count_all_measures: Participants
    x_axis_datetime_label: "%b %Y"
    reference_lines: []
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: true
    size_to_fit: true
    series_column_widths:
      ldg_ams_milestones_lookup.measurement: 400
      ldg_model_measure_collection.event_name: 300
      ldg_model_measure_collection.date_month: 90
    series_cell_visualizations:
      ldg_model_measure_collection.count_of_measures_reported_by_entity:
        is_active: false
      ldg_model_measure_collection.count_all_measures:
        is_active: true
        palette:
          palette_id: prussian-blue-to-old-mauve-sequential-0
          collection_id: prussian-blue-to-old-mauve
    series_text_format:
      ldg_model_measure_collection.count_of_measures_reported_by_entity: {}
    table_theme: transparent
    enable_conditional_formatting: true
    header_font_color: "#495057"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: less than, value: 4, background_color: "#0b3954",
        font_color: !!null '', color_application: {collection_id: prussian-blue-to-old-mauve,
          palette_id: prussian-blue-to-old-mauve-sequential-0, options: {steps: 2,
            constraints: {min: {type: number, value: 0}, mid: {type: number, value: 4},
              max: {type: number, value: 8}}, mirror: false, reverse: false, stepped: true}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    show_null_points: false
    interpolation: linear
    discontinuous_nulls: false
    color_picker: ["#7FCDAE", "#7ED09C", "#7DD389", "#85D67C", "#9AD97B", "#B1DB7A",
      "#CADF79", "#E2DF78", "#E5C877", "#E7AF75", "#EB9474", "#EE7772"]
    formatting_override: ''
    rounded: false
    outline: quarter
    label_year: false
    label_month: false
    viz_show_legend: 'true'
    focus_tooltip: 'true'
    outline_weight: 1
    cell_color: "#fff"
    outline_color: "#000"
    cell_reducer: 1
    axis_label_color: "#282828"
    defaults_version: 1
    hidden_fields: [ldg_model_measure_collection.count_all_measures, new_calculation,
      max_number_of_participations_in_a_conference, min_number_of_participations_in_a_conference_copy,
      min_number_of_participations_in_a_conference]
    hidden_points_if_no: []
    note_state: collapsed
    note_display: above
    note_text: "<p>Awardee Participation at up to One CMS Designated Conference Per\
      \ Year"
    title_hidden: true
    listen:
      Entity Name: apm_entities.name
      Model Name: apm_models.name
    row: 32
    col: 0
    width: 10
    height: 11
  - name: " (2)"
    type: text
    title_text: ''
    body_text: "[Click here to view Mapping of Drivers to Milestones and Measures](https://ams-container-test-canary-looker-00b8581ade66ebd5.elb.us-east-1.amazonaws.com/explore/ams_redshift/ldg_explore?qid=tWeh6AQaAJZAPkqK5Uj2VI&origin_space=30)"
    row: 43
    col: 0
    width: 24
    height: 1
  filters:
  - name: Model Name
    title: Model Name
    type: field_filter
    default_value: Integrated Care for Kids Model
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: ams_redshift
    explore: ldg_explore
    listens_to_filters: []
    field: apm_models.name
  - name: Entity Name
    title: Entity Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options:
      - The New York Department of Health
      - Ann & Robert H. Lurie Children's Hospital of Chicago
      - Egyptian Public & Mental Health Department
      - Hackensack Meridian Health
      - Clifford W. Beers Guidance Clinic
      - Duke University
      - Oregon Health Authority
      - Nationwide Childrenðs Hospital
    model: ams_redshift
    explore: ldg_explore
    listens_to_filters: [Model Name]
    field: apm_entities.name
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: ams_redshift
    explore: ldg_explore
    listens_to_filters: [Model Name]
    field: ldg_ams_milestones_lookup.category
  - name: Model Phase
    title: Model Phase
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: ams_redshift
    explore: ldg_explore
    listens_to_filters: [Model Name]
    field: ldg_ams_milestones_lookup.omp_category

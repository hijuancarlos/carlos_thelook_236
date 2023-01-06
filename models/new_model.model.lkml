connection: "thelook"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: orders_new_model {
  from:  orders
  join: users {
    type: left_outer
    sql_on: ${orders_new_model.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

Select app_menu_id, menu_code, parent_menu_code, position, form_code, enabled_flag, display_name,
       decode(sign(app_menu_id), -1, decode(sign(app_menu_id + 5), 1, 10 - app_menu_id, 15)) icon_id,
       :root_menu_code root_menu_code, parent_menu_code As Parent, entity_type, master_form_code
  From Table(&fc_schema_owner..apps_role_menus_pkg.get_apps_role_menus(
                              :menu_code, 
                              :parent_menu_code,
                              :root_menu_code, 
                              :form_code, 
                              :entity_type, 
                              :master_form_code)) a

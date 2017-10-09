Deface::Override.new(virtual_path: 'spree/admin/shared/_configuration_menu',
                     name: 'add_brightcove_setting_link_configuration_menu',
                     insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
                     text: '<%= configurations_sidebar_menu_item Spree.t(:brightcove_settings), spree.admin_brightcove_settings_path %>',
                     disabled: false)

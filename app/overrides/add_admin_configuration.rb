Deface::Override.new(:virtual_path => "spree/admin/configurations/index",
	:name => "converted_admin_configurations_menu_458844489",
	:insert_after => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
	:text => "<%= configurations_menu_item(I18n.t('topics'), admin_topics_path, I18n.t('topics_description')) %>",
	:disabled => false
)

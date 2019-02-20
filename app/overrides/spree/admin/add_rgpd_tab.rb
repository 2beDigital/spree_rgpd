Deface::Override.new(virtual_path: "spree/admin/shared/_configuration_menu",
										name: "rgpd_admin_configurations_menu",
										insert_bottom: "[data-hook='admin_configurations_sidebar_menu']",
										disabled: false,
										partial: "spree/admin/shared/rgpd_settings_tab_item")

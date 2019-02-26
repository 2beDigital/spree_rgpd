Deface::Override.new(virtual_path: "spree/admin/users/_form",
										name: "add_new_fields_to_user_form",
										insert_bottom: "[data-hook='admin_user_form_password_fields']",
										disabled: false,
										partial: "spree/admin/shared/new_fields_to_user")
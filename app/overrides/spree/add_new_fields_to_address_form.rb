Deface::Override.new(virtual_path: "spree/shared/_user_form",
										name: "add_new_fields_to_user_form",
										insert_after: "div[data-hook='signup_below_password_fields']",
										disabled: false,
										partial: "spree/shared/new_fields_to_user_form")
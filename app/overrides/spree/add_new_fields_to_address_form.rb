Deface::Override.new(virtual_path: "spree/address/_form",
										name: "add_new_fields_to_address_form",
										insert_bottom: "div.inner",
										disabled: false,
										partial: "spree/shared/new_fields_to_address_form")
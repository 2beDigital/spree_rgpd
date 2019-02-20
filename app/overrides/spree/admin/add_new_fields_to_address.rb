Deface::Override.new(virtual_path: "spree/admin/shared/_address_form",
										name: "add_new_fields_to_address",
										insert_bottom: "[data-hook='address_fields']",
										disabled: false,
										partial: "spree/admin/shared/new_fields_to_address")
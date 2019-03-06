Deface::Override.new(virtual_path: "spree/admin/users/index",
					 name: "export_users_with_address",
					 insert_after: "erb[silent]:contains(':page_actions')",
					 text: "<li>
						        <%= button_link_to Spree.t(:export_users_data_to_csv), admin_export_users_to_csv_path(format: :csv), method: :post, icon: 'file', style: 'margin-right:5px;'%>
						      </li>",
					 disabled: false)
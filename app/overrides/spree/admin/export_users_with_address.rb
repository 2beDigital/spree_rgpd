Deface::Override.new(virtual_path: "spree/admin/users/index",
					 name: "export_users_with_address",
					 insert_after: "erb[silent]:contains(':page_actions')",
					 text: "<li>
						        <%= link_to admin_export_users_to_csv_path(format: :csv), method: :post, class: 'btn fa fa-file', style: 'margin-right:5px;' do %>
						          <%= Spree.t(:export_users_data_to_csv) %>
						        <% end %>
						      </li>",
					 disabled: false)
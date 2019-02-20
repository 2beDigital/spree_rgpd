Spree::User.class_eval do 
	def self.to_csv
    CSV.generate(headers: true, encoding: Encoding::UTF_8) do |csv|
      csv << %w{id email name lastname address state country phone accept_terms_and_conditions accept_comunications }
      all.each do |u|
      	if u.ship_address.present?
          csv << user_address(u,u.ship_address)
      	else
      		csv << [u.id, u.email,'','','','','','','']
      	end
      end
    end
  end
  def to_csv
    user = self
    CSV.generate(headers: true, encoding: Encoding::UTF_8) do |csv|
      csv << %w{id email name lastname address state country phone accept_terms_and_conditions accept_comunications }
      if user.ship_address.present?
        csv << [Spree.t(:ship_address)]
        csv << user_address(user,user.ship_address)
      end
      if user.bill_address.present?
        csv << [Spree.t(:bill_address)]
        csv << user_address(user,user.bill_address)
      end
      if user.orders.present?
        csv << [Spree.t(:orders)]
        csv << Spree::Order.attribute_names - %w(bill_address_id ship_address_id last_ip_address created_by_id channel approver_id approved_at guest_token canceler_id store_id approver_name frontend_viewable)
        user.orders.each do |order|
          csv << order.attributes.except("bill_address_id", "ship_address_id", "last_ip_address", "created_by_id", "channel", "approver_id", "approved_at", "guest_token", "canceler_id", "store_id", "approver_name", "frontend_viewable").values
        end
      end
    end
  end

  def user_address(user,address)
    return [user.id, user.email, address.firstname, address.lastname, address.address1, address.state.present? ? address.state.name : '', address.country.present? ? address.country.name : '', address.phone, address.accept_terms_and_conditions, address.accept_comunications ]
  end
end
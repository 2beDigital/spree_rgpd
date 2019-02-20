module Spree
	module Admin
		class RgpdsController  < ResourceController
			def index
				@rgpd = Spree::Rgpd.find_by(store_id: current_store.id)
			end
		end
	end
end
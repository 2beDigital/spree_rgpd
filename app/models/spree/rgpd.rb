module Spree
	class Rgpd < Spree::Base
		belongs_to :store
		def self.current(store = nil)
			return if !store
			if store.is_a?(Spree::Store)
				Spree::Rgpd.find_by(store_id: store)
			end
		end
	end
end
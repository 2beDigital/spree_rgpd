module Spree
	class Rgpd < Spree::Base
		belongs_to :store
		translates :link_to_terms_and_conditions, :terms_and_conditions_text, :accept_comunications_text, :link_text, :fallbacks_for_empty_translations => true
	  include Spree::RansackableAttributes
	  include SolidusGlobalize::Translatable
		def self.current(store = nil)
			return if !store
			if store.is_a?(Spree::Store)
				Spree::Rgpd.find_by(store_id: store)
			end
		end
	end
end
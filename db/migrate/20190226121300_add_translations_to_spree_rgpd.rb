class AddTranslationsToSpreeRgpd < ActiveRecord::Migration
  def up
    unless table_exists?(:spree_rgpds_translations)
      params = {link_to_terms_and_conditions: :string, terms_and_conditions_text: :string,accept_comunications_text: :string, link_text: :string}
      Spree::Rgpd.create_translation_table!(params, { migrate_data: true })
    end
  end

  def down
    Spree::Rgpd.drop_translation_table! migrate_data: true
  end
end
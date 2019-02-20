class AddAndCreateNewFieldsForRgpd < SolidusSupport::Migration[4.2]
  def self.up
    create_table :spree_rgpds do |t|
      t.string :link_to_terms_and_conditions
      t.string :terms_and_conditions_text
      t.string :accept_comunications_text
      t.string :link_text
      t.references :store
      t.timestamps
    end

    add_column :spree_addresses, :accept_comunications, :boolean, default: false
    add_column :spree_addresses, :accept_terms_and_conditions, :boolean, default: false

  end

  def self.down
    drop_table :spree_rgpds
    remove_column :spree_addresses, :accept_comunications
    remove_column :spree_addresses, :accept_terms_and_conditions
  end
end

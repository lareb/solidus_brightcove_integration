class AddBrightcoveVideoColumns < ActiveRecord::Migration
  def up
    add_column :spree_products, :poster_image, :string
    add_column :spree_products, :tags, :string
    add_column :spree_products, :reference_id, :string
  end

  def down
    remove_column :spree_products, :poster_image
    remove_column :spree_products, :tags
    remove_column :spree_products, :reference_id
  end
end

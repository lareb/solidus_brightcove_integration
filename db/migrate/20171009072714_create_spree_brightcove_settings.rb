class CreateSpreeBrightcoveSettings < ActiveRecord::Migration
  def change
    create_table :spree_brightcove_settings do |t|
      t.string :brightcove_account_id
      t.string :brightcove_player_id
      t.boolean :active, default: false
      t.timestamps null: false
    end
  end

end

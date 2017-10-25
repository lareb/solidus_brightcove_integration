class Spree::BrightcoveSetting < ActiveRecord::Base

  validates :brightcove_account_id, presence: true
  validates :brightcove_player_id, uniqueness: {scope: [:brightcove_account_id, :active]}

  def self.current
    brightcove_setting = where(active: true).first
    brightcove_setting.brightcove_account_id.present? ? brightcove_setting : nil if brightcove_setting
  end
end

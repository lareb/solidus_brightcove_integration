class Spree::BrightcoveSetting < ActiveRecord::Base
  def self.current
    brightcove_setting = where(active: true).first
    brightcove_setting.analytics_id.present? ? brightcove_setting : nil if brightcove_setting
  end
end

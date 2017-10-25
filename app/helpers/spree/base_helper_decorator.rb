# override base helper for few core fnctions
Spree::BaseHelper.class_eval do

  # current brightcove settings
  def get_brightcove_player()
    Spree::BrightcoveSetting.current
  end
end

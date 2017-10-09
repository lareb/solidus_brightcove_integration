module Spree
  module Admin
    class BrightcoveSettingsController < ResourceController
      before_filter :get_object, except: [:new, :create]

      def new
        @brightcove_setting = Spree::BrightcoveSetting.new
      end

      def get_object
        @brightcove_setting = Spree::BrightcoveSetting.last
        @object = @brightcove_setting
      end

    end
  end
end

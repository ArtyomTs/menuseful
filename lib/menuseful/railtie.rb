module Menuseful
  class Railtie < Rails::Railtie
    initializer "menuseful.view_helpers" do
      ActiveSupport.on_load(:action_view) do
        require "menuseful/view_helpers"
        include Menuseful::ViewHelpers::UrlHelper
      end
    end
  end
end
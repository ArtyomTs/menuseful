require "menuseful/version"
require "menuseful/item"
require "menuseful/view_helpers"
require "menuseful/railtie" if defined?(Rails)

module Menuseful
  class Engine < ::Rails::Engine
    require "menuseful/engine"
  end if defined?(Rails)
end

require "menuseful/version"
require "menuseful/item"
require "menuseful/view_helpers"

module Menuseful
  class Engine < ::Rails::Engine
    require "menuseful/engine"
  end
end

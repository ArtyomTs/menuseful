require "menuseful/version"
require "menuseful/item"
require "menuseful/helpers"

module Menuseful
  class Engine < ::Rails::Engine
    require "menuseful/engine"
  end
end

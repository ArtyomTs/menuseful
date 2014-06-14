require 'action_view'

module Menuseful
  module ViewHelpers
    module UrlHelper
      def link_to_menu menu_item_name, text, url, options={}
        link_to_menu_if menu_item.is?(*menu_item_name), text, url, options
      end

      def link_to_menu_if condition, text, url, options={}, &block
        classes = condition ? 'active' : ''
        prefix = options.delete(:prefix)
        if options.delete(:wrapper) == :none
          wrapper = -> { content }
        else
          wrapper = -> do
            link_to url, options.merge(title: text) do
              concat prefix
              concat content_tag(:span, text)
            end
          end
          wrapper = block if block_given?
        end

        content_tag :li, (wrapper.call), class: classes
      end
    end
  end
end

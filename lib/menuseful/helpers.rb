module Menuseful
  module Helpers
    extend ActiveSupport::Concern

    included do
      helper_method :link_to_menu
    end

    def link_to_menu menu_item_name, text, url, options={}
      link_to_menu_if menu_item.is?(*menu_item_name), text, url, options
    end

    def link_to_menu_if condition, text, url, options={}, &block
      classes = condition ? 'active' : ''
      text = translate_views('menu', scope: text) if text.is_a?(Symbol)
      if options.delete(:wrapper) == :none
        wrapper = -> { content }
      else
        wrapper = -> do
          link_to url, options.merge(title: text) do
            concat content_tag(:span, text)
          end
        end
        wrapper = block if block_given?
      end

      content_tag :li, (wrapper.call), class: classes
    end

  end
end

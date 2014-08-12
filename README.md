# Menuseful

This gem is for useful menu generation and attaching controllers methods to specific menu items to highlight them.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'menuseful'
```

And then execute:

```console
$ bundle
```

Or install it yourself as:

```console
$ gem install menuseful
```

## Usage

### Add this in your controller code

```ruby
include ::Menuseful::Item

menu_item :your_menu_item_code                  # specify attached menu item
menu_item [:top_menu_item_code, :sub_item_code] # you can have submenu
```

### Add this into your view or layout to generate menu item

```ruby
link_to_menu :your_menu_item_code, "My Item Name", url, options                     # for link to menu
link_to_menu [:top_menu_item_code, :sub_item_code], "My SubItem Name", url, options # for link to submenu
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/menuseful/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

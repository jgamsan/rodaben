Spree::AppConfiguration.class_eval do
  preference :minimum_price_to_show, :integer, :default => 30
end

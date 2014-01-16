#coding:utf-8
module Spree
  Variant.class_eval do
    alias_method :orig_price_in, :price_in
    def price_in(currency)
      p "■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■"
      p "■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■"
      p "■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■"
      return orig_price_in(currency) unless sale_price.present?
      Spree::Price.new(:variant_id => self.id, :amount => self.sale_price, :currency => currency)
    end
  end
end


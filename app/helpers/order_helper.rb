
module OrderHelper

  def order_label(order)
    "".tap do |order_string|
      order_string << order.ordered_at.to_s(:us) + " - " +  order.vendor
      order_string << " - " + order.reference if order.reference.present?
    end
  end

end

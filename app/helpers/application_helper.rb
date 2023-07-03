module ApplicationHelper
  def cart_count_over_one
    return total_cart_items if total_cart_items > 0
  end
  def total_cart_items
  	return 0 unless @cart && @cart.respond_to?(:line_items)
  	total = @cart.line_items.map(&:quantity).sum
  	return total if total > 0

  	0
end

end
module ApplicationHelper
    def cart_count_page_over_one
        if @cart.line_items.count > 0
            return "<span>#{@cart.line_items.count}</span>".html_safe
        else
            return nil
        end
    end

    def cart_has_items?
        return @cart.line_items.count > 0    
    end
end

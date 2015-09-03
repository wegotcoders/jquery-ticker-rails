module TickerHelper
  def jquery_ticker(ticker_items)
    @ticker_items = ticker_items

    get_ul
  end

  def get_ul
      content_tag(:ul, get_li, id: 'js-news', class: 'js-hidden').html_safe
  end

  def get_li
    list_items = []
    @ticker_items.each do |item|
      list_items << content_tag(:li, get_a(item), class: 'news-item')
    end
    list_items.join.html_safe
  end

  def get_a(item)
    content_tag(:a, item[:text], href: "#{item[:url]}").html_safe
  end
end

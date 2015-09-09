# This is a helper that will create the unordered list of items for the ticker
module TickerHelper
  def jquery_ticker(ticker_items)
    @ticker_items = ticker_items

    ul_content
  end

  def ul_content
    content_tag(:ul, li_content, id: 'js-news', class: 'js-hidden').html_safe
  end

  def li_content
    list_items = []
    @ticker_items.each do |item|
      list_items << content_tag(:li, a_content(item), class: 'news-item')
    end
    list_items.join.html_safe
  end

  def a_content(item)
    content_tag(:a, item[:text], href: "#{item[:url]}").html_safe
  end
end

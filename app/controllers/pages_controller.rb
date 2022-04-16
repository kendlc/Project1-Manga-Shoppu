class PagesController < ApplicationController
  def home
    @mangas = Manga.all
    @order = current_order.orders.new
  end
end

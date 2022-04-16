class PagesController < ApplicationController
  def home
    @mangas = Manga.all
  end
    
  def checkout
    @current_user.orders = []
  end
end

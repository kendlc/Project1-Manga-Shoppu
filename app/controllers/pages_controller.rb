class PagesController < ApplicationController
  def home
    @mangas = Manga.all
    response = RestClient.get 'https://api.jikan.moe/v4/top/manga'
    @final_data = JSON.parse(response)
  end
    
  def checkout
    @current_user.orders = []
  end
end

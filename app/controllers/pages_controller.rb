class PagesController < ApplicationController
  def home
    qry = Jikan::Query.new
    @yurucamp = qry.manga_id 12
    @mangasearch = qry.search("bleach", :manga)
    response = RestClient.get 'https://api.jikan.moe/v4/top/manga'
    @final_data = JSON.parse(response)
  end
end

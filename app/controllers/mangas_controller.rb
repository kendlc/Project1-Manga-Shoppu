class MangasController < ApplicationController
  before_action :check_for_login

  def new
    @manga = Manga.new
  end

  def create
    @manga = Manga.create manga_params
    redirect_to root_path
  end

  private
  def manga_params
    params.require(:manga).permit(:title)
  end

end
 
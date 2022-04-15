class MangasController < ApplicationController
  before_action :check_for_login, :only => [:create]
  before_action :check_for_admin, :only => [:new]

  def index
    @mangas = Manga.all
  end

  def new
    @manga = Manga.new
  end

  def create
    @manga = Manga.create manga_params
    redirect_to root_path
  end

  def edit
    @manga = Manga.find params[:id]
  end

  def update
    manga = Manga.find params[:id]
    manga.update manga_params
    redirect_to manga
  end

  def show
    @manga = Manga.find params[:id]
    @order = current_order.orders.new
      if @manga.volumes.length == 0
        for v in 1..@manga.vol
          @manga.volumes.create!(:title => v, :price => 14.99, :quantity => 10 )
        end
      end
      
  end

  def destroy
    manga = Manga.find params[:id]
    manga.destroy
    redirect_to root_path
  end

  private
  def manga_params
    params.require(:manga).permit(:title, :image, :vol)
  end
end
 
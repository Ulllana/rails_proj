class HomeController < ApplicationController
  before_action :set_countries, only: [:new_cat, :create_cat]

  def show
    @catlist = Catlist.find(params[:id])
  end

  def new_cat
    @catlist = Catlist.new
  end

  def create_cat
    @catlist = Catlist.new(catlist_params.except(:cat_name, :cat_description)) # Создание нового catlist без данных о коте
    @cat = @catlist.cats.build(name: catlist_params[:cat_name], description: catlist_params[:cat_description]) # Создание нового кота и связывание его с catlist
    if @catlist.save && @cat.save # Сохранение обоих объектов
      redirect_to show_all_records_path, notice: 'Catlist and Cat were successfully created.'
    else
      @countries = Country.all
      render :new_cat
    end
  end
  

  def index
    @countries = Country.all
  end

  def show_all_records
    @catlists = Catlist.includes(:cats).all
  end  

  private

  def set_countries
    @countries = Country.all
  end

  def catlist_params
    params.require(:catlist).permit(:name, :description, :country_id, :cat_name, :cat_description)
  end
  
end

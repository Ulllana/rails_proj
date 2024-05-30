class HomeController < ApplicationController
    def show
      @catlists = Catlist.find(params[:id])
    end
  
    def new_cat
      @catlist = Catlist.new
    end
  
    def create
      @catlist = Catlist.new(catlist_params)
      if @catlist.save
        redirect_to @catlist
      else
        render :new_cat
      end
    end
  
    def index
      @users = User.all
    end
  
    def show_all_records
      @users = User.includes(:catlists).all
    end
  
    private
  
    def catlist_params
      params.require(:catlist).permit(:name, :description)
    end
  end
  
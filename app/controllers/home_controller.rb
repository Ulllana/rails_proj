class HomeController < ApplicationController
    def show
        @catlists = Catlist.find(params[:id])
    end

    def new_cat
    end
    
    def create
        @catlist = Catlist.new(params.require(:cat).permit(:name, :description))
        @catlist.save
        redirect_to @catlist
    end

    def index
        @users = User.all
    end

    def show_all_records
        @users = User.includes(:catlists).all
    end
      
end
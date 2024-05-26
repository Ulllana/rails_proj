class HomeController < ApplicationController

    def index
        @users = User.all
    end

    def show_all_records
        @users = User.includes(:catlists).all
    end
      
end
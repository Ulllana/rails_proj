class UsersController < ApplicationController
    # Другие действия...
  
    def show_all_records
      @users = User.includes(:catlists).all
    end
  end
  
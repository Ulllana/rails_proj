class CountriesController < ApplicationController
    def new
      @country = Country.new
    end
  
    def create
      @country = Country.new(country_params)
      if @country.save
        redirect_to countries_path, notice: 'Country was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def country_params
      params.require(:country).permit(:title)
    end
  end
  
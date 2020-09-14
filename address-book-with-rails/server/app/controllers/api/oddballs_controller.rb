class Api::OddballsController < ApplicationController
  def index
    render json: Oddball.first(100)
  end

  def show
    render json: Oddball.find(params[:id])
  end

  def search
    search_term = "%#{params[:q]}%"
    render json: Oddball.where('first_name LIKE ? OR last_name LIKE ?', search_term, search_term)
  end
end

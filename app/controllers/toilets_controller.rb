class ToiletsController < ApplicationController
before_action :set_toilet_id, only: [:show, :edit, :update, :destroy]

  def index
    @toilets = Toilet.all
  end

  def show
≈ end

  def new
    @toilet = Toilet.new
    authorize @toilet
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.user = current_user
    authorize @toilet
    @toilet.save
  end

  def my_toilets
    @toilets = Toilet.where(user: current_user)
  end

  private

  def toilet_params
    params.require(:toilet).permit(:longtitude, :latitude, :description, :address, :toilets_option, :shower_option, :baby_changing_table_option)
  end

  def set_toilet_id
    @toilet = Toilet.find(params[:id])
  end
end

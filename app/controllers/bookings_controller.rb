class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  skip_after_action :verify_policy_scoped, only: :index
  before_action :set_booking, only: [ :show ]
  before_action :set_toilet, only: [ :new, :create ]

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.toilet = Toilet.find(params[:toilet_id])
    @booking.save
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_toilet
    @toilet = Toilet.find(params[:toilet_id])
  end

  def booking_params
    params[:booking].permit(:from_date, :to_date)
  end
end
end

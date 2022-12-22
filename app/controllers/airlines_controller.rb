class AirlinesController < ApplicationController
  def index
    @airlines = Airline.all

    render json: @airlines
  end

  def show
    @airline = Airline.findy_by(slug: params[:slug])

    render json: @airline
  end

  def create
    @airline = Arline.new(airline_params)

    if @airline.save
      render json: @airline
    else
      render json: { error: @airline.errors.messages }, status: 422
    end
  end

  def update
    @airline = Airline.findy_by(slug: params[:slug])

    if @airline.update(airline_params)
      render json: @airline
    else
      render json: { error: @airline.errors.messages }, status: 422
    end
  end

  def destroy
    @airline = Airline.findy_by(slug: params[:slug])

    if @airline.destroy
      head :no_content
    else
      render json: { error: @airline.errors.messages }, status: 422
    end
  end

  private

  def airline_params
    params.require(:airline).permit(:name, :image_url)
  end
end

class PositionsController < ApplicationController
  before_action :set_position, only: %i[show edit update destroy]

  # GET /positions or /positions.json
  def index
    @positions = Position.all
  end

  # GET /positions/1 or /positions/1.json
  def show; end

  # GET /positions/new
  def new
    @position = Position.new
  end

  # GET /positions/1/edit
  def edit; end

  # POST /positions or /positions.json
  def create
    @position = Position.new(position_params)

    if @position.save
      flash[:success] = 'Position added successfully'
      redirect_to(positions_path)
    else
      render('new')
    end
  end

  # PATCH/PUT /positions/1 or /positions/1.json
  def update
    @position = Position.find(params[:id])
    if @position.update(position_params)
      flash[:success] = 'Position updated successfully'
      redirect_to(positions_path)
    else
      render('edit')
    end
  end

  # DELETE /positions/1 or /positions/1.json
  def destroy
    @position = Position.find(params[:id])
    @position.destroy
    flash[:success] = "Position '#{@position.name}' deleted successfully"
    redirect_to(positions_path)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_position
    @position = Position.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def position_params
    params.require(:position).permit(:name)
  end
end

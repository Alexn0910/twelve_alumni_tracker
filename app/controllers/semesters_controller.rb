class SemestersController < ApplicationController
  before_action :set_semester, only: %i[ show edit update destroy ]

  # GET /semesters or /semesters.json
  def index
    @semesters = Semester.all
  end

  # GET /semesters/1 or /semesters/1.json
  def show
  end

  # GET /semesters/new
  def new
    @semester = Semester.new
  end

  # GET /semesters/1/edit
  def edit
  end

  # POST /semesters or /semesters.json
  def create

    @semester = Semester.new(semester_params)

    if @semester.save
      flash[:success] = 'Semester added successfully'
      redirect_to(semesters_path)
    else
      render('new')
    end
  end

  # PATCH/PUT /semesters/1 or /semesters/1.json
  def update
    @semester = Semester.find(params[:id])
    if @semester.update(semester_params)
      flash[:success] = 'Semester updated successfully'
      redirect_to(semesters_path)
    else
      render('edit')
    end
  end

  # DELETE /semesters/1 or /semesters/1.json
  def destroy
    @semester.destroy
    respond_to do |format|
      format.html { redirect_to semesters_url, notice: "Semester was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_semester
      @semester = Semester.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def semester_params
      params.require(:semester).permit(:name)
    end
end

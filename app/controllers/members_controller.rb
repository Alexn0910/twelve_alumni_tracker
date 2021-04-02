class MembersController < ApplicationController
  # layout false

  def index
    # render('index')
    # @members = Member.order('id ASC')

    @searchVal = ""
    if params[:search] != nil
      @searchVal = params[:search]
      @members = Member.all.where(["lower(first_name) LIKE ? OR lower(last_name) LIKE ?", "%#{@searchVal.downcase}%", "%#{@searchVal.downcase}%"]).order("id ASC")
    else
      @members = Member.all.order('id ASC')
    end
    
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def create
    # render('create')
    # redirect_to(:controller => 'home', :action => 'index')
    # instantiate a new object using form parameters
    @member = Member.new(member_params)
    # save the object
    if @member.save
      # if save succeeds, redirect to the index action
      flash[:success] = 'Member added successfully'
      redirect_to(members_path)
    else
      # if save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      flash[:success] = 'Member updated successfully'
      redirect_to(members_path)
    else
      render('edit')
    end
  end

  def delete
    @member = Member.find(params[:id])
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    flash[:success] = "Member '#{@member.first_name}' deleted successfully"
    redirect_to(members_path)
  end

  private

  def member_params
    params.require(:member).permit(:first_name, :last_name, :class_year, :major, :email, :phone, :socialMediaL,
                                   :socialMediaI, :socialMediaT, :socialMediaF, :socialMediaO, :current_city, :company, :startDate, :endDate, position_ids: [])
  end
end

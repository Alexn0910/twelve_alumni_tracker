class MembersController < ApplicationController
	
	layout false
	
	def index
		#render('index')
		@members = Member.order('id ASC')
	end
	
	def show
		@member = Member.find(params[:id])
	end
	
	def new
		@member = Member.new
	end
	
	def create
		#render('create')
		#redirect_to(:controller => 'home', :action => 'index')
		#instantiate a new object using form parameters
		@member = Member.new(member_params)
		#save the object
		if @member.save
		#if save succeeds, redirect to the index action
			flash[:notice]="Member added successfully"
			redirect_to(members_path)
		else
		#if save fails, redisplay the form so user can fix problems
			render('new')
		end
	end
	
	def edit
		@member = Member.find(params[:id])
	end
	
	def update
		@member = Member.find(params[:id])
		if @member.update(member_params)
			flash[:notice]="Member updated successfully"
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
		flash[:notice]="Member '#{@member.firstName}' deleted successfully"
		redirect_to(members_path)
	end
	
	private
	
	def member_params
		params.require(:member).permit(:firstName, :lastName, :classYear, :position, :email, :phone, :socialMedia, :currentCity, :company, :startDate, :endDate)
	end
	
end

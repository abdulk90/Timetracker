class ProjectsController < ApplicationController

	def index

		@projects = Project.order(created_at: :DESC)
	
	end

	def show

		@my_project = Project.find(params[:id])
		
		unless @my_project
			render "no_project_found"
		end
	end

	def new

		@my_project = Project.new
		render 'new'
	end

	def create

		@my_project = Project.new(
			:name => params[:project][:name],
			:description => params[:project][:description])
		@my_project.save

		redirect_to "/projects/#{@my_project.id}"
	end

end

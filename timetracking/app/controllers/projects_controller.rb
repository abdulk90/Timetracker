class ProjectsController < ApplicationController

	def index

		@projects = Project.order(created_at: :DESC)
							.limit(10)
	
	end

	def show

		@my_project = Project.find(params[:id])
		
		unless 
			render "no_project_found"	
		end
	end

end

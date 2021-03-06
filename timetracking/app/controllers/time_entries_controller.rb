class TimeEntriesController < ApplicationController

	def index

		@my_project = Project.find(params[:project_id])

		@my_entries = @my_project.time_entries

	end

	def new

		@my_project = Project.find(params[:project_id])

		@my_entry = @my_project.time_entries.new

	end

	def create

		@my_project = Project.find params[:project_id]

		@my_entry = @my_project.time_entries.new(

			hours: params[:time_entry][:hours],
			minutes: params[:time_entry][:minutes],
			date: params[:time_entry][:date])

		if @my_entry.save

			redirect_to action: "index", controller: "time_entries", project_id: @my_project.id

		else

			render 'new'
		end
			
	end

end

class ProjectsController < ApplicationController
   before_action :set_project, only: %i[show edit update destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
    redirect_to project_path(@project)
    else
      render :new
      #render 'new' can also be used like this
    end  
  end

  def edit

  end

  def update
    if @project.update(project_params)
       redirect_to project_path(@project)
    else
    render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
    
  end


   private

   def set_project
     @project = Project.find(params[:id])
   end

   def project_params
       params.require(:project).permit(:name)
   end

end
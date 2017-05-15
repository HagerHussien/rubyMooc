class CoursesController < InheritedResources::Base
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :verify_role, only: [:new]
  before_action :verify_user, only: [:edit, :update, :destroy]

  def index
    @courses = Course.all
    @courses = Course.page(params[:page]).per(8)
  end


  def create
    @course = Course.new(course_params)
    @course.user_id = current_user.id

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end


  private

  def verify_user
    if @course.user.id != current_user.id
      respond_to do |format|
        format.html { render :file => "#{Rails.root}/public/422", :layout => false, :status => :not_found }
        format.xml  { head :not_found }
        format.any  { head :not_found }
      end
    end
  end

  def verify_role
    if current_user.status != "instructor"
      respond_to do |format|
        format.html { render :file => "#{Rails.root}/public/422", :layout => false, :status => :not_found }
        format.xml  { head :not_found }
        format.any  { head :not_found }
      end
    end
  end

  def set_course
    @course = Course.find_by_id(params[:id])
   
  end

    def course_params
      params.require(:course).permit(:title, :user_id, :description, :image)
    end
end


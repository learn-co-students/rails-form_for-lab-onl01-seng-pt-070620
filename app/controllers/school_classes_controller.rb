class SchoolClassesController < ApplicationController
  before_action :find_class, only: %i[edit show update]

  def show; end

  def edit; end

  def update
    @class.update(class_params(:title, :room_number))
    redirect_to school_class_path(@class)
  end

  def new
    @class = SchoolClass.new
  end

  def create
    @class = SchoolClass.create(class_params(:title, :room_number))
    redirect_to school_class_path(@class)
  end

  private

  def find_class
    @class = SchoolClass.find(params[:id])
  end

  def class_params(*args)
    params.require(:school_class).permit(args)
  end
end

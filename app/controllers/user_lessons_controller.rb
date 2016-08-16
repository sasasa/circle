class UserLessonsController < ApplicationController
  before_action :set_user_lesson, only: [:show, :edit, :update, :destroy]

  # GET /user_lessons
  # GET /user_lessons.json
  def index
    @user_lessons = UserLesson.all
  end

  # GET /user_lessons/1
  # GET /user_lessons/1.json
  def show
  end

  # GET /user_lessons/new
  def new
    @user_lesson = UserLesson.new
  end

  # GET /user_lessons/1/edit
  def edit
  end

  # POST /user_lessons
  # POST /user_lessons.json
  def create
    @user_lesson = UserLesson.new(user_lesson_params)

    respond_to do |format|
      if @user_lesson.save
        format.html { redirect_to @user_lesson, notice: 'User lesson was successfully created.' }
        format.json { render :show, status: :created, location: @user_lesson }
      else
        format.html { render :new }
        format.json { render json: @user_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_lessons/1
  # PATCH/PUT /user_lessons/1.json
  def update
    respond_to do |format|
      if @user_lesson.update(user_lesson_params)
        format.html { redirect_to @user_lesson, notice: 'User lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_lesson }
      else
        format.html { render :edit }
        format.json { render json: @user_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_lessons/1
  # DELETE /user_lessons/1.json
  def destroy
    @user_lesson.destroy
    respond_to do |format|
      format.html { redirect_to user_lessons_url, notice: 'User lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_lesson
      @user_lesson = UserLesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_lesson_params
      params.require(:user_lesson).permit(:score, :user_id, :lesson_id)
    end
end

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:success] = 'スケジュールを追加しました。'
      redirect_to @task
    else
      flash.now[:danger] = '登録に失敗しました。'
      render 'new'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      flash[:success] = "「#{@task.title}」の情報を更新しました"
      redirect_to :tasks
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:danger] = 'スケジュールを削除しました'
    redirect_to :tasks
  end

  private

  def task_params
    params.require(:task).permit(:title, :start_date, :end_date, :all_day)
  end
end

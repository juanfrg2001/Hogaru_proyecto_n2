class AnnouncementsController < ApplicationController
  def index
    @announcements = Announcement.all
  end
  def home
    unless current_user.nil?
      @announcement = Announcement.where.not(user_id: current_user.id)
    end
  end
  def user
    unless current_user.nil?
      @announcement = Announcement.where(user_id: current_user.id)
    end
  end
  def show
    @announcement = Announcement.find(params[:id])
    @announcement.update_visits_count

  end

  def new
    @announcement = Announcement.new
  end

  def create
    @announcement = current_user.announcements.new(article_params)

    if @announcement.save
      redirect_to index_path
    else
      redirect_to(new_announcement_path, notice: 'Incorrect data')
    end
  end
  def destroy
    @announcement = Announcement.find(params[:id])
    @announcement.destroy
    redirect_to index_path
  end
  def edit
    @announcement = Announcement.find(params[:id])
  end

  def update
    @announcement = Announcement.find(params[:id])
    if @announcement.update(article_params)
      redirect_to @announcement
    else
      render :edit
    end

  end

  private

  def article_params
    params.require(:announcement).permit(:title,:body)
  end

end

class FacebookAppsController < ApplicationController
  before_action :find_facebook_app, only: [:edit, :destroy, :update]

  def index
    @facebook_apps = FacebookApp.all
  end

  def new
    @facebook_app = FacebookApp.new
  end

  def create
    @facebook_app = FacebookApp.new(facebook_app_params)

    if @facebook_app.save
      flash[:success] = "Created new facebook app."
      redirect_to facebook_apps_path
    else
      flash[:alert] = @facebook_app.errors.full_messages.join
      render :new
    end
  end

  def edit
  end

  def update
    @facebook_app.update_attributes(facebook_app_params)
    flash[:success] = "Updated facebook app."
    redirect_to facebook_apps_path
  end

  def destroy
    @facebook_app.destroy
    flash[:success] = "Deleted facebook app."
    redirect_to facebook_apps_path
  end

  private

  def find_facebook_app
    @facebook_app = FacebookApp.find(params[:id])
  end

  def facebook_app_params
    params.require(:facebook_app)
          .permit(:name, :app_id, :app_secret, :page_url)
  end
end

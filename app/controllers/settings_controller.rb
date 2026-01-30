class SettingsController < ApplicationController
  before_action :authenticate_user!
  def preferences
  end

  def update_preferences
    current_user.update!(
      language: params[:language],
      currency: params[:currency],
      theme: params[:theme],
      number_format: params[:number_format]
    )

    redirect_to settings_preferences_path, notice: "Preferences updated successfully"
  end

  def integrations
  end
end

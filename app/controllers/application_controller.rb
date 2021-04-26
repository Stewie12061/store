class ApplicationController < ActionController::Base
  before_action :set_locale
  
  private
  def set_locale
    #params[:locale] ||= :en
    #I18n.locale = params[:locale].to_sym || :en

    #params[:locale] ||= cookies[:locale]
    #cookies[:locale] ||= :en
    #I18n.locale = params[:locale].to_sym || :en

    
    cookies[:locale] ||= :en
    I18n.locale = cookies[:locale].to_sym || :en
  end
 end
 

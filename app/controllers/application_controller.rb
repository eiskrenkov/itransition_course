class ApplicationController < ActionController::Base
  around_action :switch_locale
  before_action :authenticate_user!

  def default_url_options
    { locale: I18n.locale }
  end

  private

  def switch_locale(&block)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &block)
  end
end

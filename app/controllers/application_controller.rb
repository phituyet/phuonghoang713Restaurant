class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  @sections = Section.all
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :get_categories, :get_brands

  def get_categories
  	@categories = Category.all
  end

  def get_brands
  	@brands = Product.pluck(:brand).sort
  	@brands.uniq!
  end

end

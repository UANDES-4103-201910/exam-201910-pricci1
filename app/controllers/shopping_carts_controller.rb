class ShoppingCartsController < ApplicationController
  def add
    if params[:product]
      session[:products] = [] unless session[:products]
      session[:products] << params[:product]
    end
    redirect_to request.env['HTTP_REFERER']
  end
end

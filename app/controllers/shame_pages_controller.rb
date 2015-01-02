class ShamePagesController < ApplicationController
  def new
  end

  def create
    ShameMailer.shame_mail(params[:email], params[:shame], params[:choice]).deliver
  end
end

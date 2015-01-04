class ShamePagesController < ApplicationController
  def new
    @choices = Choice.new
  end

  def create
    @choices = Choice.create(choice_params)
    ShameMailer.shame_mail(params[:choice][:email], params[:choice][:shame], params[:choice][:choice]).deliver
  end
  
  private
  def choice_params
    params.require(:choice).permit(:email, :shame, :choice)
  end
end

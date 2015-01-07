class ShamePagesController < ApplicationController
  def new
    @choices = Choice.new
  end

  def create
    if params[:choice]
      @choices = Choice.create(choice_params)
      @email = params[:choice][:email]
      ShameMailer.shame_mail(params[:choice][:email], params[:choice][:shame], params[:choice][:choice]).deliver
    else
      redirect_to root_path
    end
  end
  
  def about
  end
  
  private
  def choice_params
    params.require(:choice).permit(:email, :shame, :choice)
  end
end

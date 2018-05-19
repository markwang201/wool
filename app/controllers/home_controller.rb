class HomeController < ApplicationController
  def index
    @bills = Bill.public_bills
    @articles = Article.paginate(:page => params[:page], :per_page => 1)
  end
end

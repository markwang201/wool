class HomeController < ApplicationController
  def index
    @bills = Bill.public_bills
    @articles = Article.all
  end
end

class HomeController < ApplicationController
  def index
    @bills = Bill.public_bills
    #Article.where(topic: '2').paginate(:page => params[:page], :per_page => 10)
    @articles = Article.where(topic_id: 5).public_articles.paginate(:page => params[:page], :per_page => 10)
  end
end

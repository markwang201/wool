class HomeController < ApplicationController
  def index
    @bills = Bill.public_bills
  end
end

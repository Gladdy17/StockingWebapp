class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: "pk_8d70766670d24742bb22d53f76baa317")
    if params[:ticker] == ""
       @nothing = "Please Enter a Symbol"
    elsif params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
      rescue RuntimeError
            @error = "Hey! That stock Symbol Doesn't Exist"
      end  
    end

  end

  def about
  end
end

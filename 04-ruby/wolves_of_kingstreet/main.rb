require 'sinatra'
require 'sinatra/reloader'
require 'stock_quote' #makes calls in internet and bring data
require 'pry'


get '/' do
    erb :index
end






get '/stock_info' do
    if params[:stock_symbol] == ''
        #in ruby we can say if params[:stock_symbol].empty?
        # can also say redirect to ('')if params[:stock_symbol].empty?
        # can also say if params[:stock_info].nil?
       redirect to ('')#make request to /
    end
    # stock_info = StockQuote::Stock.quote(params[:stock_info])
    # @price = stock_quote.latest_price
    #same as below
    @price = StockQuote::Stock.quote(params[:stock_symbol]).latest_price
    erb :stock_info
end

# get '/donate' do
#     'thanks'
# end
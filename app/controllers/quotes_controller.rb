class QuotesController < ApplicationController
    def index
        @quote = Quote.order("Random()").first #  pull the very first quote from our database and store it in a variable
        #Now, the first quote that we have in our database is stuffed into the variable called @quote
    end

    def new
      @quote = Quote.new
    end


end

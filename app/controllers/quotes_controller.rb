class QuotesController < ApplicationController
    def index
        @quote = Quote.order("Random()").first #  pull the very first quote from our database and store it in a variable
        #Now, the first quote that we have in our database is stuffed into the variable called @quote
    end

    def new
      @quote = Quote.new
    end

    def create #the quote will be saved in our database when user clicks create button
      Quote.create(quote_params) #sends the saying and author parts to the database so they are saved
      redirect_to root_path #sends user back to root page
    end


    private

    def quote_params #pulls the values of saying and author from the quotes form
      params.require(:quote).permit(:saying, :author) #ensures our database is safe and no hackers can inject anything else in our database
    end



end

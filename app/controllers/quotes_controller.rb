class QuotesController < ApplicationController
    def index
        @quote = Quote.order("Random()").first #  pull the very first quote from our database and store it in a variable
        #Now, the first quote that we have in our database is stuffed into the variable called @quote
    end

    # def new -- no oonger needed after moved form in contribute modal link
    #   @quote = Quote.new
    # end

    def create
      @quote = Quote.create(quote_params)
      if @quote.invalid?
       flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
      end
     redirect_to root_path
    end

    def about #after hooking up the url 
    end


    private

    def quote_params #pulls the values of saying and author from the quotes form
      params.require(:quote).permit(:saying, :author) #ensures our database is safe and no hackers can inject anything else in our database
    end



end

# def create #the quote will be saved in our database when user clicks create button
#@quote = Quote.create(quote_params) #sends the saying and author parts to the database so they are saved
    #   if @quote.isvalide?
    #     flash[:error] = '<strong> Could not save </strong> the data you entered is invalid.'
    #   end #this won't actually show the error, we need to update the homepage to show the error in the application.html.erb

    #   redirect_to root_path #sends user back to root page
    # end
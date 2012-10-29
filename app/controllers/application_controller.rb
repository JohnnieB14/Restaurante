class ApplicationController < ActionController::Base
  protect_from_forgery
  skip_before_filter :verify_authenticity_token
  
  def emessages
    if (@category.nil? == true)
      @category = Category.new
    end
    if (@client.nil? == true)
      @client = Client.new
    end
    if (@course.nil? == true)
      @course = Course.new
    end
    if (@table.nil? == true)
      @table = Table.new
    end
    if (@user.nil? == true)
      @user = User.new
    end
    if (@waiter.nil? == true)
      @waiter = Waiter.new
    end
  end
end

class FooController < ApplicationController
  def index
    raise "Valid param not found" if (params[:valid].nil? || params[:valid] != 'true')
    render :text => 'BAR', status: 200
  end
end

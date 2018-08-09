class SiteController < ApplicationController

  def index
    @survey = Survey.new
  end

end
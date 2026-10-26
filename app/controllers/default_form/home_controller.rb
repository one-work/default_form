module DefaultForm
  class HomeController < ApplicationController

    def index
      @example = Example.new
    end

  end
end

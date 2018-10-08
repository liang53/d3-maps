module D3Maps
  class D3Maps::StatesController < ApplicationController
    def index
      @states = State.all

      respond_to do |format|
        format.html
        format.json {render :json => @states.all }
      end
    end
  end
end

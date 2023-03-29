class PagesController < ApplicationController
  # GET / pages
  skip_before_action :authenticate_user!, only: %i[home about contact]

  def home
  end

  def about
  end

  def contact
    @members = 'Damien Caret', 'Fred Beranger', 'Florian Beranger', 'Enzo Boistault'

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end
end

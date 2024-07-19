class SearchController < ApplicationController
  def index
    @members = MemberFacade.new.get_members_by_nation(params[:nation])
# binding.pry
  end
end
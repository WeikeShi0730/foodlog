class ArchivesController < ApplicationController
  def index
    @entries = Entry.all.order(created_at: :desc).group_by(&:day) # based on (:day in) entry model
  end
end



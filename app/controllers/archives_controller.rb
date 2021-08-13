class ArchivesController < ApplicationController
  def index
    @entries = Entry.all.group_by(&:day) # based on (:day in) entry model
  end
end



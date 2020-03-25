class PagesController < ApplicationController
  def index
	  @datas = Worker.all

	  
#	  Worker.transaction do
#		   Worker.save!
#	  raise ActiveRecord::Rollback	  
#	  end
  end
end

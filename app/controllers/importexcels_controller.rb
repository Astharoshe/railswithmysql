class ImportexcelsController < ApplicationController
  skip_before_action :verify_authenticity_token, except: [ :import ]

  def index

	  		stamp = Stamp.new
			stamp.num = '1'
			stamp.field = '2'
			stamp.stamptype = '3'
			stamp.value = '4'
			stamp.name = '5'
			stamp.url = '6'
			stamp.save!
	  	  @datas = Stamp.all
  end
	
  def import
    file = params[:filefield]
	if file 
	  importfile = Worker.import(params[:filefield])
	  if importfile
	  	redirect_to '/'
	  else

	  end
	else

	end  
  end
	
end

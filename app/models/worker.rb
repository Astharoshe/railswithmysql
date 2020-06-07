class Worker < ApplicationRecord
	
	def self.import(file)
	  spreadsheets = open_spreadsheet(file)
	  if spreadsheets
		sheet = spreadsheets.sheet(0)
		if sheet
		  (5..sheet.last_row).each do |index|
		    row = sheet.row(index)

			stamp = Stamp.new
			stamp.num = row[0]
			stamp.field = row[1]
			stamp.stamptype = row[2]
			stamp.value = row[3]
			stamp.name = row[4]
			stamp.url = row[5]
			stamp.save!
		  end
		else
		  return
		end
	  else
		return
	    #return "Unknown file type: #{file.original_filename}"
	  end
		 
	end

		
	def self.open_spreadsheet(file)
	  if file 
		  begin
		    Roo::Spreadsheet.open(file.path)	  
		  rescue => e
		    #print e
		  end
	  else
		return
	    # puts "Unknown file type: #{file.original_filename}"
	  end
    end
end

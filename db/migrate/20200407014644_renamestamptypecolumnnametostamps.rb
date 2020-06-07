class Renamestamptypecolumnnametostamps < ActiveRecord::Migration[6.0]
  def change
	  change_table :stamps do |t|
		  t.rename :type, :stamptype
	  end
  end
end

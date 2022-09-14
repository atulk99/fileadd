class User < ApplicationRecord
	# has_one_attached :csv_file
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			obj=User.new
			obj.name=row[0]
			obj.save
		end
	end
end

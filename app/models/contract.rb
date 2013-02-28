class Contract < ActiveRecord::Base

	acts_as_gmappable

	def gmaps4rails_address
	#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
		self.address
	end

  belongs_to :user
  attr_accessible :name, :address, :contractendon, :latitude, :longitude, :fences, :gmaps, :user_id

end

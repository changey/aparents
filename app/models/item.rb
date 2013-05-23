class Item < ActiveRecord::Base
  attr_accessible :address, :gmaps, :name, :description, :image, :price, :bought, :status, :latitude, :longitude, :owner_id
  acts_as_gmappable
  def gmaps4rails_address
    address
  end
end

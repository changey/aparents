class Item < ActiveRecord::Base
  attr_accessible :address, :gmaps, :name, :description, :image, :price, :bought, :status, :latitude, :longitude, :owner_id
  acts_as_gmappable :process_geocoding => false
  def gmaps4rails_address
    address
  end
  
  def gmaps4rails_marker_picture
  {
   "picture" => "/images/#{status}.png",
   "width" => 27,
   "height" => 43,
   "marker_anchor" => [ 27, 43],
  }
end
  
  
end

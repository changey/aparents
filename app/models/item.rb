class Item < ActiveRecord::Base
  attr_accessible :address, :gmaps, :name, :description, :image, :price, :bought, :status, :latitude, :longitude, :owner_id
  acts_as_gmappable :process_geocoding => false
  def gmaps4rails_address
    address
  end
  
  def gmaps4rails_marker_picture
  {
   "picture" => "/images/marker_blue.png",
   "width" => 26,
   "height" => 42,
   "marker_anchor" => [ 26, 42],
  }
end
  
  
end

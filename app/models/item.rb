class Item < ActiveRecord::Base
   attr_accessible :name, :description, :image, :price, :bought, :status, :lat, :lng, :owner_id
end

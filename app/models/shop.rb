class Shop < ApplicationRecord

  validates :chain, :presence => :true
  validates :name, :presence => :true, :length => {:minimum => 5}
  validates :latitude, :numericality => :true
  validates :longitude, :numericality => :true
  validates :address, :presence => :true
  validates :phone, numericality: { only_integer: true }

  geocoded_by :address
  #ajout automatique d l'altitude et longitude

  after_validation :geocode, :if => :address_changed?

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      shop = Shop.new
      shop.chain= row[0]
      shop.name= row[1]
      shop.latitude= row[2]
      shop.longitude= row[3]
      shop.address= row[4]
      shop.city= row[5]
      shop.zip= row[6]
      shop.phone= row[8]
      shop.country_code= row[10]
      shop.save
    end
  end

end

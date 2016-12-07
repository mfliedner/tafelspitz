# == Schema Information
#
# Table name: restaurants
#
#  id          :integer          not null, primary key
#  owner_id    :integer          not null
#  description :text             not null
#  name        :string           not null
#  address     :string           not null
#  price_range :integer          not null
#  lat         :float
#  lng         :float
#  seats       :integer
#  img_url     :string
#  phone       :string
#  menu        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  opening     :integer
#  closing     :integer
#  mailto      :string
#  website     :string
#

require_relative "reservation"

class Restaurant < ActiveRecord::Base
  validates :description, :name, :owner_id, :price_range, :address, presence: true
  validates :price_range, inclusion: { in: (1..4) }
  # validates_format_of :mailto, :with => /@/

  belongs_to :user,
    foreign_key: :owner_id,
    primary_key: :id,
    class_name: "User"
  has_many :reservations
  has_many :guests,
    through: :reservations,
    source: :user
  has_many :reviews
  has_many :reviewers,
    through: :reviews,
    source: :user
  has_many :favorites
  has_many :fans,
		through: :favorites,
		source: :user

  def self.address_to_coords(address)
    query = "select *"
    url = "https://maps.googleapis.com/maps/api/geocode/json?address="
    url.concat(address.split.join("+"))
    api_key = "&key=#{ENV['gmap_key']}"
    url.concat(api_key)
    uri = URI(url)
    response = Net::HTTP.post_form(uri, { query => nil })
    body = JSON.parse(response.body)
    body["results"][0]["geometry"]["location"]
  end

  def self.in_bounds(bounds)
    self.where("lat < ?", bounds[:northEast][:lat])
        .where("lat > ?", bounds[:southWest][:lat])
        .where("lng > ?", bounds[:southWest][:lng])
        .where("lng < ?", bounds[:northEast][:lng])
  end

  def self.available(list, params)
    unfiltered = params[:filter].start_with?("f") ? true : false
    name_known = !!params[:name] && params[:name].length > 0

    return list if list.empty? || unfiltered
    time = Reservation.time_slot_to_time(params[:time_slot].to_i)
    guest_count = params[:guest_count].to_i
    filtered = []

    if name_known
      filtered = self.where("opening < ?", time)
                     .where("closing > ?", time)
                     .where("seats > ?", guest_count)
                     .where("name = ?", params[:name])
    else
      filtered = self.where("opening < ?", time)
                     .where("closing > ?", time)
                     .where("seats > ?", guest_count)
    end
    return filtered if filtered.empty?

    reservations = Reservation.where("date = ?", params[:date])
                              .where("time = ?", time)
    avail = []
    filtered.each do |restaurant|
      taken = reservations.inject(0) { |res, table| res + table.guest_count }
      avail << restaurant if taken + guest_count <= restaurant.seats
    end
    avail
  end

  def average_rating
    reviews.average(:rating)
  end

  def count_rating
    reviews.count
  end
end

require 'json'
require 'open-uri'

class BreedsController < ApplicationController
  def index
    @breeds = get_breeds
  end

  def show
    @breed = params["breed"]
    @breed_image = get_image(@breed)
  end

  def get_breeds
    url = "https://dog.ceo/api/breeds/list/all"
    dogs_data = open(url).read
    dogs_list = JSON.parse(dogs_data)
    dogs = dogs_list["message"]
    return dogs
  end

  def get_image(breed)
    url = "https://dog.ceo/api/breed/#{breed}/images/random"
    image_data = open(url).read
    image_list = JSON.parse(image_data)
    image = image_list["message"]
    return image
  end
end

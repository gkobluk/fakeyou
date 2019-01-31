class ListsController < ApplicationController

  def index
    Faker::Config.locale = 'en-US'
    @list = []
    100.times do
      @list << {
        name: Faker::Name.unique.name,
        address: Faker::Address.full_address,
        phone: Faker::PhoneNumber.phone_number,
        cel: Faker::PhoneNumber.cell_phone
      }
    end
  end

  def persons
    Faker::Config.locale = 'en-US'
    @list = []
    counter = params[:id].to_i>1000 ? 1000 : params[:id].to_i
    counter.times do
      @list << {
        name: Faker::Name.unique.name,
        address: Faker::Address.full_address,
        phone: Faker::PhoneNumber.phone_number,
        cel: Faker::PhoneNumber.cell_phone
      }
    end
  end
end

require 'rails_helper'
# Requests apartment spec

RSpec.describe "Apartments", type: :request do
  describe "GET /index" do
    it "gets a list of apartments" do
      
      user = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')
      
      user.apartments.create(
        street: '1329 Carroll Avenue',
        city: 'Los Angeles',
        state: 'CA',
        manager: 'Alyssa Milano',
        email: 'test1@test.com',
        price: '$1,675,800',
        bedrooms: 5,
        bathrooms: 2,
        pets: 'No',
        image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp'
        user_id: 1
      )

      get '/apartments'

      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartment.length).to eq 1
    end
  end
end
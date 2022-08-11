require 'rails_helper'

RSpec.describe "Apartments", type: :request do

  describe "POST /create" do
    it "creates a new apartment " do
      
      user1 = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')
      
      apartment_params = {
        apartment: {
          street: '1329 Carroll Avenue',
          city: 'Los Angeles',
          state: 'CA',
          manager: 'Alyssa Milano',
          email: 'test1@test.com',
          price: '$1,675,800',
          bedrooms: 5,
          bathrooms: 2,
          pets: 'No',
          image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp',
          user_id: user1.id
    }
  }
      post '/apartments', params: apartment_params

      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartment['street']).to eq '1329 Carroll Avenue'
    end
  end
end
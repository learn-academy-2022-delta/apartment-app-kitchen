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
  

    it "doesn't create an apartment without valid street" do

      user1 = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
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
      
      expect(response.status).to eq 422
      json = JSON.parse(response.body)
      expect(json['street']).to include "can't be blank"
    end

    it "doesn't create an apartment without valid city" do

      user1 = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
          street: '1329 Carroll Avenue',
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
      
      expect(response.status).to eq 422
      json = JSON.parse(response.body)
      expect(json['city']).to include "can't be blank"
    end

    it "doesn't create an apartment without valid state" do

      user1 = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
          street: '1329 Carroll Avenue',
          city: 'Los Angeles',
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
      
      expect(response.status).to eq 422
      json = JSON.parse(response.body)
      expect(json['state']).to include "can't be blank"
    end
      
    it "doesn't create an apartment without valid manager" do

      user1 = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
          street: '1329 Carroll Avenue',
          city: 'Los Angeles',
          state: 'CA',
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
      
      expect(response.status).to eq 422
      json = JSON.parse(response.body)
      expect(json['manager']).to include "can't be blank"
    end
      
    it "doesn't create an apartment without valid email" do

      user1 = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
          street: '1329 Carroll Avenue',
          city: 'Los Angeles',
          state: 'CA',
          manager: 'Alyssa Milano',
          price: '$1,675,800',
          bedrooms: 5,
          bathrooms: 2,
          pets: 'No',
          image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp',
          user_id: user1.id
        }
      }
      
      post '/apartments', params: apartment_params
      
      expect(response.status).to eq 422
      json = JSON.parse(response.body)
      expect(json['email']).to include "can't be blank"
    end
      
    it "doesn't create an apartment without valid price" do

      user1 = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')

      apartment_params = {
        apartment: {
          street: '1329 Carroll Avenue',
          city: 'Los Angeles',
          state: 'CA',
          manager: 'Alyssa Milano',
          email: 'test1@test.com',
          bedrooms: 5,
          bathrooms: 2,
          pets: 'No',
          image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp',
          user_id: user1.id
        }
      }
      
      post '/apartments', params: apartment_params
      
      expect(response.status).to eq 422
      json = JSON.parse(response.body)
      expect(json['price']).to include "can't be blank"
    end
      
    
    it "doesn't create an apartment without valid bedrooms" do
      
      user1 = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')
      
      apartment_params = {
        apartment: {
          street: '1329 Carroll Avenue',
          city: 'Los Angeles',
          state: 'CA',
          manager: 'Alyssa Milano',
          email: 'test1@test.com',
          price: '$1,675,800',
          bathrooms: 2,
          pets: 'No',
          image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp',
          user_id: user1.id
        }
      }
      
      post '/apartments', params: apartment_params
      
      expect(response.status).to eq 422
      json = JSON.parse(response.body)
      expect(json['bedrooms']).to include "can't be blank"
    end
      
    it "doesn't create an apartment without valid bathrooms" do
      
      user1 = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')
      
      apartment_params = {
        apartment: {
          street: '1329 Carroll Avenue',
          city: 'Los Angeles',
          state: 'CA',
          manager: 'Alyssa Milano',
          email: 'test1@test.com',
          price: '$1,675,800',
          bedrooms: 2,
          pets: 'No',
          image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp',
          user_id: user1.id
        }
      }
      
      post '/apartments', params: apartment_params
      
      expect(response.status).to eq 422
      json = JSON.parse(response.body)
      expect(json['bathrooms']).to include "can't be blank"
    end
      
    it "doesn't create an apartment without valid pets" do
      
      user1 = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')
      
      apartment_params = {
        apartment: {
          street: '1329 Carroll Avenue',
          city: 'Los Angeles',
          state: 'CA',
          manager: 'Alyssa Milano',
          email: 'test1@test.com',
          price: '$1,675,800',
          bedrooms: 2,
          bathrooms: 1,
          image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp',
          user_id: user1.id
        }
      }
      
      post '/apartments', params: apartment_params
      
      expect(response.status).to eq 422
      json = JSON.parse(response.body)
      expect(json['pets']).to include "can't be blank"
    end
      
    it "doesn't create an apartment without valid image" do
      
      user1 = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')
      
      apartment_params = {
        apartment: {
          street: '1329 Carroll Avenue',
          city: 'Los Angeles',
          state: 'CA',
          manager: 'Alyssa Milano',
          email: 'test1@test.com',
          price: '$1,675,800',
          bedrooms: 2,
          bathrooms: 1,
          pets: 'No',
          user_id: user1.id
        }
      }
      
      post '/apartments', params: apartment_params
      
      expect(response.status).to eq 422
      json = JSON.parse(response.body)
      expect(json['image']).to include "can't be blank"
    end

    it "doesn't create an apartment without valid user id" do
      
      user1 = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')
      
      apartment_params = {
        apartment: {
          street: '1329 Carroll Avenue',
          city: 'Los Angeles',
          state: 'CA',
          manager: 'Alyssa Milano',
          email: 'test1@test.com',
          price: '$1,675,800',
          bedrooms: 2,
          bathrooms: 1,
          pets: 'No',
          image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp'
        }
      }
      
      post '/apartments', params: apartment_params
      
      expect(response.status).to eq 422
      json = JSON.parse(response.body)
      expect(json['user_id']).to include "can't be blank"
    end
end
      
    
    describe "GET /index" do
    it "returns a list of apartments" do
      user = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')

      user.apartments.create(
        street: '39169 Anchor Bay Drive',
        city: 'San Diego',
        state: 'CA',
        manager: 'Rachel Greene',
        email: 'randomapartment@yahoo.com',
        price: '$2,500',
        bedrooms: 2,
        bathrooms: 1,
        pets: 'Yes',
        image: 'https://www.aveliving.com/AVE/media/Property_Images/Florham%20Park/hero/flor-apt-living-(2)-hero.jpg?ext=.jpg'
      )
        get '/apartments'
        apartment = JSON.parse(response.body)
        expect(response).to have_http_status(200)
        expect(apartment.length).to eq 1
      end
    end

    describe "cannot update apartment without valid attributes" do
      it "updates a apartment" do 

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
  
        apartment = Apartment.first
        updated_apartment_params = {
          apartment: {
            street: nil,
            city: nil,
            state: nil,
            manager: nil,
            email: nil, 
            price: nil, 
            bedrooms: nil, 
            bathrooms: nil, 
            pets: nil,
            image: nil,
            user_id:nil
          }
        }
  
        patch "/apartments/#{apartment.id}", params: updated_apartment_params
        expect(response.status).to eq 422
       
      end
    end
  end



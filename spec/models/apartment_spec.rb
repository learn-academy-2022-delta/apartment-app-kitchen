require 'rails_helper'
# Models apartment spec

RSpec.describe Apartment, type: :model do
  user = User.where(email: 'test@example.com').first_or_create(password: '12345678', password_confirmation: '12345678')

  it 'can create an apartment' do

    user.apartments.create(
      street: "string",
      city: "string",
      state: "string",
      manager: "string",
      email: "string", 
      price: "string", 
      bedrooms: 3, 
      bathrooms: 3, 
      pets: "string",
      image: "www.urlhelper.com"
    )
    apartment = Apartment.all
    expect(apartment.length).to eq 1
  end
  it 'user cannot create an apartment without street' do
    apartment = user.apartments.create(
      {
        city: 'Los Angeles',
        state: 'CA',
        manager: 'Alyssa Milano',
        email: 'test1@test.com',
        price: '$1,675,800',
        bedrooms: 5,
        bathrooms: 2,
        pets: 'No',
        image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp'
      }
    )
    expect(apartment.errors[:street]).to_not be_empty
  end
  it 'user cannot create an apartment without city' do
  apartment = user.apartments.create(
      {
        street: '1329 Carroll Avenue',
        state: 'CA',
        manager: 'Alyssa Milano',
        email: 'test1@test.com',
        price: '$1,675,800',
        bedrooms: 5,
        bathrooms: 2,
        pets: 'No',
        image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp'
      }
    )
    expect(apartment.errors[:city]).to_not be_empty
  end
  it 'user cannot create an apartment without state' do
    apartment = user.apartments.create(
      {
        street: '1329 Carroll Avenue',
        city: 'Los Angeles',
        manager: 'Alyssa Milano',
        email: 'test1@test.com',
        price: '$1,675,800',
        bedrooms: 5,
        bathrooms: 2,
        pets: 'No',
        image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp'
      }
    )
    expect(apartment.errors[:state]).to_not be_empty
  end
  it 'user cannot create an apartment without manager' do
    apartment = user.apartments.create(
      {
        street: '1329 Carroll Avenue',
        city: 'Los Angeles',
        state: 'CA',
        email: 'test1@test.com',
        price: '$1,675,800',
        bedrooms: 5,
        bathrooms: 2,
        pets: 'No',
        image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp'
      }
    )
    expect(apartment.errors[:manager]).to_not be_empty
  end
  it 'user cannot create an apartment without email' do
    apartment = user.apartments.create(
      {
        street: '1329 Carroll Avenue',
        city: 'Los Angeles',
        state: 'CA',
        manager: 'Alyssa Milano',
        price: '$1,675,800',
        bedrooms: 5,
        bathrooms: 2,
        pets: 'No',
        image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp'
      }
    )
    expect(apartment.errors[:email]).to_not be_empty
  end
  it 'user cannot create an apartment without price' do
    apartment = user.apartments.create(
      {
        street: '1329 Carroll Avenue',
        city: 'Los Angeles',
        state: 'CA',
        manager: 'Alyssa Milano',
        email: 'test1@test.com',
        bedrooms: 5,
        bathrooms: 2,
        pets: 'No',
        image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp'
      }
    )
    expect(apartment.errors[:price]).to_not be_empty
  end
  it 'user cannot create an apartment without bedrooms' do
    apartment = user.apartments.create(
      {
        street: '1329 Carroll Avenue',
        city: 'Los Angeles',
        state: 'CA',
        manager: 'Alyssa Milano',
        email: 'test1@test.com',
        price: '$1,675,800',
        bathrooms: 2,
        pets: 'No',
        image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp'
      }
    )
    expect(apartment.errors[:bedrooms]).to_not be_empty
  end
  it 'user cannot create an apartment without bathrooms' do
    apartment = user.apartments.create(
      {
        street: '1329 Carroll Avenue',
        city: 'Los Angeles',
        state: 'CA',
        manager: 'Alyssa Milano',
        email: 'test1@test.com',
        price: '$1,675,800',
        bedrooms: 5,
        pets: 'No',
        image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp'
      }
    )
    expect(apartment.errors[:bathrooms]).to_not be_empty
  end
  it 'user cannot create an apartment without pets' do
    apartment = user.apartments.create(
      {
        street: '1329 Carroll Avenue',
        city: 'Los Angeles',
        state: 'CA',
        manager: 'Alyssa Milano',
        email: 'test1@test.com',
        price: '$1,675,800',
        bedrooms: 5,
        bathrooms: 2,
        image: 'https://photos.zillowstatic.com/fp/7f7209dfbb519e5aa13446bbbd60c43d-cc_ft_576.webp'
      }
    )
    expect(apartment.errors[:pets]).to_not be_empty
  end
  it 'user cannot create an apartment without image' do
    apartment = user.apartments.create(
      {
        street: '1329 Carroll Avenue',
        city: 'Los Angeles',
        state: 'CA',
        manager: 'Alyssa Milano',
        email: 'test1@test.com',
        price: '$1,675,800',
        bedrooms: 5,
        bathrooms: 2,
        pets: 'No',
      }
    )
    expect(apartment.errors[:image]).to_not be_empty
  end

end
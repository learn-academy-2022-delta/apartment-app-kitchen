require 'rails_helper'
# Models apartment spec

RSpec.describe Apartment, type: :model do
  it "should validate bedrooms" do
    apartment = Apartment.create
    expect(apartment.errors[:bedrooms]).to_not be_empty
  end
  it "should validate bathrooms" do
    apartment = Apartment.create
    expect(apartment.errors[:bathrooms]).to_not be_empty
  end
  it 'cannot create an apartment with empty street' do
    apartment = Apartment.create(
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
  it 'cannot create an apartment with empty city' do
    apartment = Apartment.create(
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
  it 'cannot create an apartment with empty state' do
    apartment = Apartment.create(
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
  it 'cannot create an apartment with empty manager' do
    apartment = Apartment.create(
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
  it 'cannot create an apartment with empty email' do
    apartment = Apartment.create(
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
  it 'cannot create an apartment with empty price' do
    apartment = Apartment.create(
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
  it 'cannot create an apartment with empty bedrooms' do
    apartment = Apartment.create(
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
  it 'cannot create an apartment with empty bathrooms' do
    apartment = Apartment.create(
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
  it 'cannot create an apartment with empty pets' do
    apartment = Apartment.create(
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
  it 'cannot create an apartment with empty image' do
    apartment = Apartment.create(
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
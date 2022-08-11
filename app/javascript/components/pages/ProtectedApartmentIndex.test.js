import React from 'react'
import Enzyme, { shallow } from 'enzyme'
import Adapter from 'enzyme-adapter-react-16'
import ProtectedApartmentIndex from './ProtectedApartmentIndex'

Enzyme.configure({ adapter: new Adapter() })

describe("When ProtectedApartmentIndex renders", () => {
    const props = {
        apartments : [
            {
                street: '456 Table Rd',
                city: 'San Diego',
                state: 'CA',
                manager: 'Jorge Smith',
                email: 'jorge@testing.com',
                price: '$2500',
                bedrooms: 2,
                bathrooms: 1,
                pets: 'None',
                image: 'image.png'
            }
        ]
    }
    let proApartmentIndexRender;
    beforeEach(() => {
        proApartmentIndexRender = shallow(<ProtectedApartmentIndex {...props}/>)
    })
    it("displays a heading", () => {
        const proApartmentIndexHead = proApartmentIndexRender.find("h1")
        expect(proApartmentIndexHead.length).toEqual(1)
        expect(proApartmentIndexHead.text()).toEqual("My Listings")
    })
    it("displays a card with each of the current users apartment listings", () => {
        const proApartmentIndexHead = proApartmentIndexRender.find("Card")
        expect(proApartmentIndexHead.length).toEqual(1)
    })
  })
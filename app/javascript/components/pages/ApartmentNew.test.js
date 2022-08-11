// Imports React into our test file.
import React from 'react'

// Imports Enzyme testing and deconstructs Shallow into our test file.
import Enzyme, { shallow } from 'enzyme'

// Imports Adapter utilizing the latest react version into our test file so we can run a testing render on any component we may need.
import Adapter from 'enzyme-adapter-react-16'

// Imports in the component we are going to be testing.
import ApartmentNew from './ApartmentNew'

//Allows us to utilize the adapter we import in earlier, allowing us to call and render a component.
Enzyme.configure({ adapter: new Adapter() })

describe("When ApartmentNew renders", () => {
  let renderedApartmentNew;
  let props = {current_user: {id: 1}}

  beforeEach(() => {
    renderedApartmentNew = shallow(<ApartmentNew {...props} />)
  })

  it("displays a heading", () => {
    const apartmentNewHeading = renderedApartmentNew.find("h3")
    expect(apartmentNewHeading.text()).toEqual("ApartmentNew")
  })

  it("displays 10 form groups", () => {
    const apartmentNewFormGroups = renderedApartmentNew.find("FormGroup")
    expect(apartmentNewFormGroups.length).toEqual(10)
  })
})
// Imports React into our test file.
import React from 'react'

// Imports Enzyme testing and deconstructs Shallow into our test file.
import Enzyme, { shallow } from 'enzyme'

// Imports Adapter utilizing the latest react version into our test file so we can run a testing render on any component we may need.
import Adapter from 'enzyme-adapter-react-16'

// Imports in the component we are going to be testing.
import ApartmentIndex from './ApartmentIndex'

//Allows us to utilize the adapter we import in earlier, allowing us to call and render a component.
Enzyme.configure({ adapter: new Adapter() })

describe("When ApartmentIndex renders", () => {
  let apartmentIndex
    beforeEach(() => {
      apartmentIndex = shallow(<ApartmentIndex />)
    }
  )
    
  it("displays a heading", () => {
    const apartmentIndex = shallow(<ApartmentIndex />)
    const apartmentIndexHeading = apartmentIndex.find("h2")
    expect(apartmentIndexHeading.text()).toEqual("Browse all apartments")
  })

  it("displays a paragraph", () => {
    const apartmentIndex = shallow(<ApartmentIndex />)
    const apartmentIndexParagraph = apartmentIndex.find("p")
    expect(apartmentIndexParagraph.text()).toEqual("Also you can list your own apartment for rent!")
  }
  )
})
import React, { Component } from 'react'
import { Form, FormGroup, Input, Label, Button } from 'reactstrap'

export default class ApartmentNew extends Component {
  constructor(props){
    super(props)
      this.state = {
        newApartment: {
          street: '',
          city: '',
          state: '',
          manager: '',
          email: '',
          price: '',
          bedrooms: '',
          bathrooms: '',
          pets: '',
          image: '',
          user_id: this.props.current_user.id
        },
        submitted: false
      }
  }

  handleChange = (e) => {
    let {newApartment} = this.state
    newApartment[e.target.name] = e.target.value
    this.setState({newApartment: newApartment})
  }

  handleSubmit = () => {
    this.props.createApartment(this.state.newApartment)
    this.setState({submitted: true})
  }

  render() {
    return (
      <>
        <h3>ApartmentNew</h3>
        <Form>
          <FormGroup>
            <Label for="street">street</Label>
            <Input
              type="text"
              name="street"
              onChange={this.handleChange}
              value={this.state.newApartment.street}
            />
          </FormGroup>
          <FormGroup>
            <Label for="city">city</Label>
            <Input
              type="text"
              name="city"
              onChange={this.handleChange}
              value={this.state.newApartment.city}
            />
          </FormGroup> 
          <FormGroup>
            <Label for="state">state</Label>
            <Input
              type="text"
              name="state"
              onChange={this.handleChange}
              value={this.state.newApartment.state}
            />
          </FormGroup>
          <FormGroup>
            <Label for="manager">manager</Label>
            <Input
              type="text"
              name="manager"
              onChange={this.handleChange}
              value={this.state.newApartment.manager}
            />
          </FormGroup>
          <FormGroup>
            <Label for="email">email</Label>
            <Input
              type="text"
              name="email"
              onChange={this.handleChange}
              value={this.state.newApartment.email}
            />
          </FormGroup>
          <FormGroup>
            <Label for="price">price</Label>
            <Input
              type="text"
              name="price"
              onChange={this.handleChange}
              value={this.state.newApartment.price}
            />
          </FormGroup>
          <FormGroup>
            <Label for="bedrooms">bedrooms</Label>
            <Input
              type="text"
              name="bedrooms"
              onChange={this.handleChange}
              value={this.state.newApartment.bedrooms}
            />
          </FormGroup>
          <FormGroup>
            <Label for="bathrooms">bathrooms</Label>
            <Input
              type="text"
              name="bathrooms"
              onChange={this.handleChange}
              value={this.state.newApartment.bathrooms}
            />
          </FormGroup>
          <FormGroup>
            <Label for="pets">pets</Label>
            <Input
              type="text"
              name="pets"
              onChange={this.handleChange}
              value={this.state.newApartment.pets}
            />
          </FormGroup>
          <FormGroup>
            <Label for="image">image</Label>
            <Input
              type="text"
              name="image"
              onChange={this.handleChange}
              value={this.state.newApartment.image}
            />
          </FormGroup>
          
          <Button 
            name="submit" 
            onClick={this.handleSubmit}>
            Create new apartment
          </Button>

        </Form>
      </>
    )
  }
}

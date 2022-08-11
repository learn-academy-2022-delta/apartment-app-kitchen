import React, { Component } from 'react'

// form is added to apartment edit page and inputs are setting state on component


export default class ApartmentEdit extends Component {
    constructor(props) {
        super(props)
        this.state = {
            form: {
              street: '',
              city: '',
              state: '',
              manager: '',
              email: '',
              price: '',
              bedrooms: 0,
              bathrooms: 0,
              pets: '',
            },
          success : false
        }
    }

    handleChange = (e) => {
        const { form } = this.state
        form[e.target.name] = e.target.value
        this.setState({ form })
    }
    handleSubmit = (e) => { 
      this.props.updateApartment(this.state.form, this.props.apartment.id)
      this.setState({ success: true })

  
    render() 
      return (
        <>
        <h3>Edit your Apartment Here</h3>
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
            Submit Changes
          </Button>

        </Form>
        </>
      )
    }
  }

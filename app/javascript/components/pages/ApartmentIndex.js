import React, { Component } from 'react'
import { NavLink } from 'react-router-dom'
import { CardGroup, CardImg } from 'reactstrap'
import { Button, Card, CardBody, CardTitle, CardText, Container } from 'reactstrap'

export default class ApartmentIndex extends Component {
  render() {
    return (
      <>
      <h3>ApartmentIndex</h3>

      <Container className='indexText'>
        <h2>Browse all apartments</h2>
        <p>Also you can list your own apartment for rent!</p>
      </Container>

      <Container>
        <CardGroup>
          {this.props.apartments && this.props.apartments.map(apartment => {
            return (
              <Col sm='4' md='4' lg='4'>
                <Card className='card'>
                  <CardImg top width='100%' src={apartment.image} alt='Card image cap' />
                    <CardBody>
                      <CardTitle>
                        {apartment.price}
                        {apartment.location}
                        {apartment.bath}
                        {apartment.bed}
                        {apartment.image}
                      </CardTitle>
                      <CardText>
                        <p>lorem ipsum</p>
                      </CardText>
                      <Button color='primary'>
                        <NavLink to={`/apartmentshow/${apartment.id}`}>View All</NavLink>
                      </Button>
                    </CardBody>
                </Card>
              </Col>
            )
          }
          )}
        </CardGroup>
      </Container>
      </>
    )
  }
}
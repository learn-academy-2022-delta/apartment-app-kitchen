import React, { Component } from 'react'
import { Card, CardBody, CardTitle, CardSubtitle, Row, Button, CardImg} from 'reactstrap'

class ProtectedApartmentIndex extends Component {
  render() {
    const {
        logged_in,
        current_user,
    } = this.props
    console.log("logged_in:", logged_in)
    console.log("current_user:", current_user)
    console.log(this.props.apartments)
    return (
      <>
        <h1>My Listings</h1>
        <div className='myuserlistings'>
            <Row sm='3'>
            {apartments && apartments.map(apartment => {
                return(
                <Card key={apartment.id}>
                    <CardImg alt='apartment image' src= {apartment.id} top width="100%"></CardImg>
                    <CardBody>
                        <CardTitle>
                            {apartment.price} / month
                        </CardTitle>
                        <CardSubtitle>
                            {apartment.street}, {apartment.city}, {apartment.state}
                        </CardSubtitle>
                        <CardSubtitle>
                            {apartment.bedrooms} Bedroom, {apartment.bathrooms} Bath
                        </CardSubtitle>
                        <Button>
                            More Details
                        </Button>
                    </CardBody>
                </Card>)
            })}
            </Row>
        </div>
      </>
    )
  }
}

export default ProtectedApartmentIndex
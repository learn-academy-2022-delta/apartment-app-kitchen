import React, { Component } from 'react'
import { 
  Button, 
  Card, 
  CardTitle, 
  Col, 
  Row, 
  Container, 
  CardImg,
  CardBody,
  CardSubtitle,
  CardText
} from 'reactstrap'
import { NavLink, Redirect } from 'react-router-dom'

class ApartmentShow extends Component {
  constructor(props) {
    super(props)
    this.state = {
        success: false
    }
  }
  render() {
    let { apartment } = this.props
    return (
      <>
        <h3 className="show-header">Apartment Details</h3>
        <p className="show-overview"> Discover more about specific unit information, pet policies, and rent pricing!</p>
        <Container fluid>
          <Row className="apartment">
            <Col md="6">
              <Card className="info-card" style={{height:"auto"}} body>
                <CardImg src={apartment?.image}/>
                <CardBody style={{color:"black"}}>
                  <CardTitle className="info-title">
                    <h4>{ apartment?.price } / month</h4>
                  </CardTitle>
                  <CardSubtitle >
                    <p >{apartment?.street} {apartment?.city}, { apartment?.state }</p>
                    <p>{ apartment?.bedrooms } Bedroom, { apartment?.bathrooms } Bath</p>
                    <p>Pets: { apartment?.pets }</p>
                  </CardSubtitle>
                  <div >
                    <h5>Contact Us!</h5>
                    <p>Manager:{ apartment?.manager }</p>
                    <p>Email:{ apartment?.email }</p>
                  </div>
                <NavLink
                  to={"/apartmentindex"}
                >
                <Button className="return-button">
                  Return Browsing All Apartments
                </Button>
                      {this.state.success && <Redirect to = "/apartmentindex" />
                  }
                </NavLink>
                </CardBody>
              </Card>
            </Col>
          </Row>
        </Container>
      </>
    )
  }
}

export default ApartmentShow
import React, { Component } from 'react'
import { 
  Button, 
  Card, 
  CardTitle, 
  Col, 
  Row, 
  Container 
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
              <Card className="info-card" body>
                <CardTitle className="info-title">
                  <h5>Street Address:</h5>
                  <p>{ apartment.city }, { apartment.state }</p>
                  <h5>Manager name:</h5><p>{ apartment.manager }</p>
                  <h5>Manager email:</h5><p>{ apartment.email }</p>
                  <h5>Monthly rent:</h5><p>{ apartment.price }</p>
                  <h5>Bedrooms:</h5><p>{ apartment.bedrooms }</p>
                  <h5>Bathrooms:</h5><p>{ apartment.bathrooms }</p>
                  <h5>Pets Allowed:</h5><p>{ apartment.pets }</p>
                <NavLink
                  to={"/index"}
                >
                <Button className="return-button">
                  Return Browsing All Apartments
                </Button>
                      {this.state.success && <Redirect to = "/index" />
                  }
                </NavLink>
                </CardTitle>
              </Card>
            </Col>
          </Row>
        </Container>
      </>
    )
  }
}





export default ApartmentShow
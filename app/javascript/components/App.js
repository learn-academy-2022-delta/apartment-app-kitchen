import React, { Component } from 'react'
import Header from './components/Header'
import Footer from './components/Footer'
import Home from './pages/Home'
import ApartmentIndex from './pages/ApartmentIndex'
import ApartmentShow from './pages/ApartmentShow'
import ApartmentNew from './pages/ApartmentNew'
import ApartmentEdit from './pages/ApartmentEdit'
import NotFound from './pages/NotFound'
import ProtectedApartmentIndex from './pages/ProtectedApartmentIndex'
import {
  BrowserRouter as Router,
  Route,
  Switch
} from 'react-router-dom'

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      apartments: [],
  }
}

 componentDidMount() {
    this.readApartment()
  }

  readApartment = () => {
      fetch('http://localhost:3000/apartments')
      .then(response => response.json())
      .then(apartments => this.setState({ apartments }))
      .catch(error => console.log(error))
  }
  
  createApartment = (newApartment) => {
    fetch("/apartments", {
      body: JSON.stringify(newApartment),
      headers: {
        "Content-Type": "application/json"
      },
      method: "POST"
    })
    .then(response => response.json())
    .then(() => this.readApartment())
    .catch(errors => console.log("New Apartment Error", errors))
  }
  
  updateApartment = (editapartment, id) => {
      fetch(`/apartments/${id}`, {
        body: JSON.stringify(editapartment),
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json'
        }
      })
      .then(response => response.json())
      .then(apartment => {
        this.setState({
          apartments: this.state.apartments.map(apartment => {
            if (apartment.id === id) {
              return apartment = editapartment
            } else {
              return apartment
            }
          })
        })
      })
      .catch(error => console.log(error))
    }

  render() {
    const {
      logged_in,
      current_user,
      new_user_route,
      sign_in_route,
      sign_out_route
    } = this.props

    return (
      <Router>
        <Header {...this.props} />
        <Switch>
          <Route exact path="/" component={Home} />
          <Route path="/apartmentindex" render = {(props) => <ApartmentIndex {...props} apartments={this.state.apartments} />}/>
          <Route path="/mylistings" render={(props) => {
            let myListings = this.state.apartments.filter(apartment => apartment.user_id === current_user.id)
            return (<ProtectedApartmentIndex apartments={myListings}/>)}}/>
          <Route path="/apartmentshow/:id" render={(props) => {
            let id = +props.match.params.id
            let apartment = this.state.apartments.find(apartment => apartment.id === id)
            return <ApartmentShow {...props} apartment={apartment}/>
          }} />
          <Route path ='/apartmentnew' render={() => <ApartmentNew createApartment={this.createApartment} current_user = {this.props.current_user}/>
            }/>
          <Route path="/apartmentedit/:id" render={(props) => {
            let id = +props.match.params.id
            let apartment = this.state.apartments.find(apartment => apartment.id === id)
            return <ApartmentEdit {...props} apartment={apartment} />
          }
          } />
          <Route component={NotFound}/>
        </Switch>
        <Footer />
      </Router>
    )
  }
}

export default App

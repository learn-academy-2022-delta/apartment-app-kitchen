import React, { Component } from 'react'
import Header from './components/Header'
import Footer from './components/Footer'
import Home from './pages/Home'
import ApartmentIndex from './pages/ApartmentIndex'
import ApartmentShow from './pages/ApartmentShow'
import ApartmentNew from './pages/ApartmentNew'
import ApartmentEdit from './pages/ApartmentEdit'
import NotFound from './pages/NotFound'
import {
  BrowserRouter as Router,
  Route,
  Switch
} from 'react-router-dom'

class App extends Component {
    constructor(props) {
        super(props)
        this.state = {
            apartments: []
        }
    }

    componentDidMount() {
        this.getApartments()
    }

    getApartments = async () => {
      fetch('/apartments')
      .then(response => response.json())
      .then(apartments => this.setState({ apartments }))
      .catch(error => console.log(error))
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



  render() {
    return (
      
        <Router>
          <Header {...this.props} />
          <Switch>
            <Route exact path="/" component={Home} />
            <Route path="/apartmentindex" component={ApartmentIndex} />
            <Route path="/apartmentindex" render = {(props) => <ApartmentIndex {...props} apartments={this.state.apartments} />} />
            <Route path="/apartmentshow" component={ApartmentShow} />
            <Route path="/apartmentnew" component={ApartmentNew} />
            <Route path="/apartmentedit" render = {(props) => {
              const { match } = props
              const { id } = match.params
              return <ApartmentEdit {...props} apartment={this.state.apartments.find(apartment => apartment.id === id)} />
            }
            } />
            <Route component={NotFound}/>
          </Switch>
        </Router>
        
        
  
    )
  }
}

export default App
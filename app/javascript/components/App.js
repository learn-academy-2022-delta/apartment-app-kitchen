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
      fetch('http://localhost:3000/apartments')
      .then(response => response.json())
      .then(apartments => this.setState({ apartments }))
      .catch(error => console.log(error))
    }


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
            <Route path="/apartmentedit" component={ApartmentEdit} />
            <Route component={NotFound}/>
          </Switch>
        </Router>
        
        
  
    )
  }
}

export default App
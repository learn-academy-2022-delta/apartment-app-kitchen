import React, { Component } from 'react';
import Home from './Home'

class Home extends Component {
  // constructor(props) {
  //   super(props); 
  //   this.state = {

  //   }
  // }
  render() {
    return (
      <>
        <div style={{display:'flex', justifyContent:'center'}}>
        <h2>Welcome to Apartment Hunter</h2>
        </div>
        <br></br>
        <div style={{display:'flex', justifyContent:'center'}}>
        <p>Find your new home today!</p>
        <br></br>
        <Button color="primary">Sign-In</Button>
        <Button color="primary">Sign-Up</Button>
        </div>
      </>
    )
  }
}





export default Home; 
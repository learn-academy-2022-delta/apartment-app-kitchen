import React, { Component } from 'react';
import Home from './Home'

class Home extends Component {
 
  render() {
    return (
      <>
        <div className="home-text">
          <h2
            style={{
              display:'flex', 
              justifyContent:'center', 
              textAlign: "center",
              color: "white",
              fontWeight: "bolder",
              fontSize: "60px",
              fontFamily: "Arial"
            }}
          >
            Welcome to Apartment Hunter
          </h2>
          <p
            style={{
              display:'flex', 
              justifyContent:'center', 
              textAlign: "center",
              color: "white",
              fontWeight: "bold",
              fontSize: "20px",
              fontFamily: "Arial",
            }}
          >
            Find your new home today!
          </p>
        </div>
          <br></br>
        <div className="home-buttons">
          <Button 
            style={{
              color: "primary"
            }}
          >
            Sign-In
          </Button>
          <Button 
            style={{
              color: "primary"
            }}
         >
            Sign-Up
          </Button>
        </div>
      </>
    );
  }
}





export default Home; 
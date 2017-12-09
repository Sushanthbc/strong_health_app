import React from 'react';
import {Router, Route} from 'react-router';

class Layout extends React.Component {
  render () {
    return (
      <Router>
        <Route path="/" component={NavigationBar}></Route>
        <Route path="/add_inventory" component={AddInventory}></Route>
      </Router>
    )
  }
}

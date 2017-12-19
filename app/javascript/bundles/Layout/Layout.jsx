import React from 'react';
import {Switch, Route} from 'react-router';
import NavigationBar from '../components/NavigationBar/NavigationBar';
import { Link, BrowserRouter } from 'react-router-dom'

class Layout extends React.Component {
  render () {
    return (
      <div className="layout-container">
        <NavigationBar />
        <BrowserRouter>
          <Switch>
            <Route exact path="/"></Route>
          </Switch>
        </BrowserRouter>
      </div>
    )
  }
}
export default Layout

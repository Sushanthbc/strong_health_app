import React from 'react';
import {BrowserRouter as Router, Switch, Route} from 'react-router-dom';
import NavigationBar from '../components/NavigationBar/NavigationBar';
import AccountForm from '../components/AccountForm/AccountForm';
import LoginForm from '../components/LoginForm/LoginForm';
import TopNavigation from '../components/TopNavigation/TopNavigation';

class Layout extends React.Component {
  render () {
    return (
      <div className="layout-container">
        <Router>
          <div>
            <TopNavigation />
            <NavigationBar />
              <Switch>
                <Route path="/account_info" component={AccountForm} />
              </Switch>
          </div>
        </Router>
      </div>
    )
  }
}
export default Layout;

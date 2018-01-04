import React from 'react';
import {BrowserRouter as Router, Switch, Route} from 'react-router-dom';
import NavigationBar from '../components/NavigationBar/NavigationBar';
import AccountForm from '../components/AccountForm/AccountForm';
import AddProduct from '../components/Products/AddProduct';

class Layout extends React.Component {
  constructor(props) {
    super(props);
  }
  render () {
    return (
      <Router>
        <div>
          <NavigationBar />
          <Switch>
            <Route exact path="/account_info" component={AccountForm} />
            <Route exact path="/" component={AddProduct} />
          </Switch>
        </div>
      </Router>
    )
  }
}
export default Layout;

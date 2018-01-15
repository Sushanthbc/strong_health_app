import React from 'react';
import $ from 'jquery';
import TopNavigation from '../TopNavigation/TopNavigation';

class AccountForm extends React.Component {
  constructor(props) {
    super(props);

  }

  render () {
    return (
      <div className="layout-container">
        <TopNavigation value="Account Information" />
        <div className="right-pane-content">
          <form className="form-vertical">
            <div className="row">
              <div className="form-group col-md-5">
                <label>Display Name</label>
                <input type="text" className="form-control" id="displayName"
                  name="displayName" />
              </div>
              <div className="form-group col-md-5">
                <label>Street</label>
                <input type="text" className="form-control" id="street"
                  name="street" />
              </div>
              <div className="form-group col-md-5">
                <label>Area</label>
                <input type="text" className="form-control col-md-5 " id="area"
                  name="area" />
              </div>
              <div className="form-group col-md-12">
                <button type="submit" className="btn-success">Update Account</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    )
  }
}
export default AccountForm;

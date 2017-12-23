import React from 'react';
import $ from 'jquery';

class AccountForm extends React.Component {
  render () {
    return (
      <div className="right-pane-container">
        <form className="form-vertical">
          <div className="form-group col-md-5">
            <label> Pharmacy Name </label>
            <input type="text" className="form-control" />
          </div>
          <div className="form-group col-md-5">
            <label>Street</label>
            <input type="text" className="form-control" />
          </div>
          <div className="form-group col-md-5">
            <label> Area </label>
            <input type="text" className="form-control" />
          </div>
          <div className="form-group col-md-5">
            <label> City </label>
            <input type="text" className="form-control" />
          </div>
        </form>
      </div>
    )
  }
}
export default AccountForm;

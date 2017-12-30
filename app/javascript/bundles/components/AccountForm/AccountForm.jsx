import React from 'react';
import $ from 'jquery';
import TopNavigation from '../TopNavigation/TopNavigation';

class AccountForm extends React.Component {
  render () {
    return (
      <div className="layout-container">
        <TopNavigation value="Account Information" />
      </div>
    )
  }
}
export default AccountForm;

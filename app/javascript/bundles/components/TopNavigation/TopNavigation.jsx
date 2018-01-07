import React from 'react';

class TopNavigation extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return(
      <div className="top-navigation">
        <div className="top-navigation-content">{this.props.value}</div>
      </div>
    )
  }
}
export default TopNavigation;

import React from 'react';
import { NavLink as Link } from 'react-router-dom';

class NavigationBar extends React.Component {
  constructor() {
    super();
  }
  render() {
    return (
      <nav role="navigation" className="sidebar-nav">
        <header className="sidebar-nav-brand">Strong Healthe</header>
        <div className="scroll-container">
          <Link to="/" className="category-title">
            Add Product </Link>
          <Link to="/purchase_entry" className="category-title">
            Purchase Entry </Link>
          <Link to="/account_info" className="category-title">
            Account Information </Link>
        </div>
      </nav>
    )
  }
}
export default NavigationBar;

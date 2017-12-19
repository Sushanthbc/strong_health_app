import React from 'react';

class NavigationBar extends React.Component {
  render() {
    return (
      <nav role="navigation" className="sidebar-nav">
        <header className="sidebar-nav-brand">Strong Healthe</header>
        <div className="scroll-container">
          <div className="category-title">
            <a href="#"> Add Product </a>
          </div>
          <div className="category-title">
            Purchase Entry
          </div>
        </div>
      </nav>
    )
  }
}
export default NavigationBar

import PropTypes from 'prop-types';
import React from 'react';
import style from './HelloWorld.scss';

export default class HelloWorld extends React.Component {
  static propTypes = {
    name: PropTypes.string.isRequired, // this is passed from the Rails view
  };

  /**
   * @param props - Comes from your rails view.
   */
  constructor(props) {
    super(props);
    // How to set initial state in ES6 class syntax
    // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
    this.state = { name: this.props.name };
  }

  updateName = (name) => {
    this.setState({ name });
  };

  render() {
    return (
      <div>
        <nav className="navbar navbar-default">
          <div className={"container"}>
            <div className={"navbar-header"}>
              <div className={"navbar-brand"}>
                Strong Healthe
              </div>
              </div>
          </div>
        </nav>
        <h3>
          Hello, {this.state.name}!
        </h3>
        <hr />
        <form className={"form"} >
          <label htmlFor="name">
            Say hello to:
          </label>
          <input
            id="name"
            type="text"
            value={this.state.name}
            className={style.autoReflect}
            onChange={(e) => this.updateName(e.target.value)}
          />
        </form>
      </div>
    );
  }
}

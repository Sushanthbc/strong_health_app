import React from 'react';
import $ from 'jquery';

class LoginForm extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      username: '',
      password: ''
    }
  }

  authentication(event) {
    event.preventDefault();
    var payload = {
      username: this.state.username,
      password: this.state.password
    }
    alert(this.state.username);
    var token = $('meta[name="csrf-token"]').attr('content');
    $.ajax({
      url: "/user/authentication",
      type: 'POST',
      contentType: 'application/json; charset=utf-8',
      cache: false,
      data: payload,
      beforeSend: function(xhr) {
        xhr.setRequestHeader('X-CSRF-Token', token);
      },
      success: function (data) {
        alert("I'm validated right and like it");
      }
    });
  }

  render() {
    return (
        <form id="loginForm" className="form-vertical form-align" >
          <h2> {{ username }} </h2>
          <div className="form-group">
            <label>Username:</label>
            <input type="text" id="username" name="username" className="form-control"
                   onChange={(event, newValue) => this.setState({username: newValue})} />
          </div>
          <div className="form-group">
            <label>Password:</label>
            <input type="password" id="password" name="password" className="form-control"
                   onChange={(event, newValue) => this.setState({password: newValue})} />
          </div>
          <div className="form-group">
            <input type="button" value="login" className="btn btn-primary" onClick={(event) => this.authentication(event)}/>
          </div>
        </form>
    )
  }
}
export default LoginForm
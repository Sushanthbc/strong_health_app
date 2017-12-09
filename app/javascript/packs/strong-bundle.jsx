import ReactOnRails from 'react-on-rails';
import NavigationBar from '../bundles/components/NavigationBar/NavigationBar';
import LoginForm from '../bundles/components/LoginForm/LoginForm';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  NavigationBar,
});

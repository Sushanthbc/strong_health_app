import AccountActionTypes from '../Constants/AccountActionTypes';
import Dispatcher from '../Dispatcher';

const Actions = {
  updateAccount(data) {
    Dispatcher.dispatch({
      type: AccountActionTypes.UPDATE_ACCOUNT_SUCCESS,
      data,
    });
  };
};
export default Actions;

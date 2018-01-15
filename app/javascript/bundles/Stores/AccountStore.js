import Immutable from 'immutable';
import {ReduceStore} from 'flux/utils';
import AccountActionTypes from '../Constants/AccountActionTypes';
import Dispatcher from '../Dispatcher';

class AccountStore extends ReduceStore {
  constructor() {
    super(Dispatcher);
  }

  getInitialState() {
  return Immutable.OrderedMap();
  }

  reduce(state, action) {
    switch (action.type) {
      case AccountActionTypes.UPDATE_PRODUCT:
        updateAccount(data)
        break;
    }
  }
}

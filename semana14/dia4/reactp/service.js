import React, {Component} from 'react';

class Service extends Component {
  constructor() {
    super();
    this.state= {
      active: false;
    }

  }

  clickHandler(){
    var active= !this.state.active;

    this.setState({active: active})
    this.props.addTotal(active ? this.)
  }
}

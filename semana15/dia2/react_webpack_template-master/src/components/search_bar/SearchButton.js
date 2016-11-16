import React, { Component } from 'react';

export default class SearchButtom extends Component {
  constructor(){
    super();
    this.onClick = this.onClick.bind(this);
  }
  onClick(event){
    event.preventDefault();
    this.props.onButton();
  }
  render() {
    return(<button onClick={this.onClick}>Buscar</button>);
  }
}

import React, { Component } from 'react';

export default class SearchInput extends Component {
  constructor(){
    super();
    this.state ={
      value: ''
    };
    this.onChange = this.onChange.bind(this);
  }


  onChange(event){
    let text = event.target.value;
    this.props.onChange(text);
  }

  render() {
    return(<input type='text' onChange={this.onChange}/>);
  }
}

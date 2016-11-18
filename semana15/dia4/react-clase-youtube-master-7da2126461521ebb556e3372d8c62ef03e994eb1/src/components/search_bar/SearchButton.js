import React, { Component } from 'react';

export default class SearchButtom extends Component {
  onSubmit(event){
    event.preventDefault();
    this.props.onClick();
  }

  render() {
    return(
      <button onClick={this.onSubmit.bind(this)} className="search-button">Search</button>
    );
  }
}

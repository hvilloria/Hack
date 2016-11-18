import React, { Component } from 'react';

export default class SearchInput extends Component {
  constructor(){
    super();
    this.state = {
      search: ''
    }
  }

  handleSearchInput(event) {
    event.preventDefault()
    this.props.onSubmit(event.target.value)

  }

  render() {
    return(
      <input className="search-input" type='text' onChange={this.handleSearchInput.bind(this)} placeholder="Busca musica o ke ase"></input>
    );
  }
}

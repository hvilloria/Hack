import React, { Component } from 'react';
import SearchButton from './SearchButton';
import SearchInput from './SearchInput';

export default class SearchComponent extends Component {
  constructor(){
    super();
    this.state = {
      search: 'ola ke ase, busca o ke ase'
    }
  }

  handleSearchInput() {
    // console.log('click');
    this.props.searchFunction(this.state.search)
  }

  getInputValue(search) {
    this.setState({search});
  }

  render() {
    // console.log(this.state);
    return(
      <div className="search-box">
        <form className="container">
          <SearchInput onSubmit={this.getInputValue.bind(this)} />
          <SearchButton onClick={this.handleSearchInput.bind(this)}/>
        </form>
      </div>
    );
  }
}

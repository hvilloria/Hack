import React, { Component } from 'react';
// Components
import SearchButton from './SearchButton';
import SearchInput from './SearchInput';
import Form from '../commons/Form';


class SearchBar extends Component {
  constructor(){
    super();
    this.state={
      text:''
    };
    this.handleSearchButton = this.handleSearchButton.bind(this);
    this.handleSearchInput = this.handleSearchInput.bind(this);
  }

  handleSearchButton(){
    this.props.onSubmit(this.state.text);
  }

  handleSearchInput(text){
    this.setState({text});
  }


  render() {
    return(
      <div>
        <Form>
          <SearchInput onChange={this.handleSearchInput}/>
          <SearchButton onButton={this.handleSearchButton}/>
        </Form>
      </div>
    );
  }
}

export default SearchBar;

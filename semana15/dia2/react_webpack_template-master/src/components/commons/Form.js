import React, { Component } from 'react';

class Form extends Component{
  render() {
    return(
      <form>
        {this.props.children}
      </form>
    )
  }
}

export default Form;

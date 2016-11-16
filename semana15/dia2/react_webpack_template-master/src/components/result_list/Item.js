import React, { Component } from 'react';

class Item extends Component {
  constructor(){
    super();
    this.handleTitle = this.handleTitle.bind(this)
  }

  handleTitle(){
    this.props.songList(this.props.title);
  }
  render() {
    return(
      <div>
        <h4>{this.props.title}</h4>
        <button onClick={this.handleTitle}>Agregar</button>
      </div>
    )
  }
}

export default Item;

import React, { Component } from 'react';
import Item from './Item';

class ItemList extends Component {
  constructor(){
    super();
  }




  render() {
    let searchSongs = this.props.musicList.filter((song) => {
      return song.title.match(this.props.onSearch)
    })
    let items = searchSongs.map((value, index) => {
      return <Item key={index} title={value.title} songList={this.props.songList}/>
    })
    return <div> { items } </div>
  }
}

ItemList.defaultProps = {
  musicList: [
    { title: 'Closer' },
    { title: 'This is What you come for' },
    { title: 'Dont let me down' },
    { title: 'Heathens' }
  ]
}

export default ItemList;

import React, { Component } from 'react';
import Item from './Item';

export default class ItemList extends Component {
  addToPlaylist(item) {
    this.props.updatePlaylist(item)
  }

  render () {
    let matchedItems
    let items

    if (this.props.playlist == false) {
      if (this.props.search == '') {

      } else {
        matchedItems = this.props.musicList.filter((item) => {
          return item.title.toLowerCase().match(this.props.search.toLowerCase())
        })

        items = matchedItems.map((item, index) => {
          return <Item key={item.videoId} song={item} playlist={this.props.playlist} addToPlaylist={this.addToPlaylist.bind(this)}/>
        })
      }
    } else {
      items = this.props.musicList.map((item, index) => {
        return <Item key={item.videoId} song={item} playlist={this.props.playlist} addToPlaylist={this.addToPlaylist.bind(this)}/>
      })
    }

    return (
      <div className="results">
        {items}
      </div>
    )
  }
}

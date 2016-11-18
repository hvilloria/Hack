import React, { Component } from 'react';

export default class Item extends Component {
  constructor() {
    super();
    this.state = {
      added: false
    }
  }

  addToPlaylist() {
    // console.log('added');
    this.setState({added: true})
    this.props.addToPlaylist({
      title: this.props.song.title,
      videoId: this.props.song.videoId,
      thumbnail: this.props.song.thumbnail,
      description: this.props.song.description,
      etag: this.props.song.etag,
      playlist: this.props.playlist,
      added: true
    })
  }

  componentDidMount() {
    if (this.props.song.added == true) {
      this.setState({added: true})
    }
  }

  render () {
    // console.log('added:' + this.props.song.added);
    return (
      <div className="search-result">
        <img className="song-image" src={this.props.song.thumbnail} />
        <div className="song-content">
          <div className="song-title">
            {this.props.song.title}
          </div>
        </div>
        <button className={ this.state.added == false ? "playlist-handler-button not-in-playlist" : "playlist-handler-button in-playlist" } onClick={this.addToPlaylist.bind(this)}>
          <strong>{this.props.playlist == false ? '+' : 'x'}</strong>
        </button>
      </div>
    )
  }
}

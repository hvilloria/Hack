import React, { Component } from 'react';
import SearchComponent from './search_bar/SearchComponent';
import ItemList from './results_list/ItemList';
import musicList from './data.js'
// import { searchVideos } from './youtube_api.js'

export default class App extends Component {
  constructor() {
    super();
    this.state = {
      songs: [],
      playlist: [],
      search: ''
    }
  }

  getSearchValue(search) {
    let songs
    if (search != '') {
      fetch( 'https://www.googleapis.com/youtube/v3/search'
      + '?key=AIzaSyDdYTZNuTdcGH7T6Q2zlU0r24UDgmULJ4U'
      + '&part=snippet'
      + '&maxResults=10'
      + '&q=' + search )
        .then((response) => {
          return response.json()
        })
        .then((searchResult) => {
          songs = searchResult.items.map((item) => {
            return {
              etag: item.etag,
              videoId: item.id.videoId,
              title: item.snippet.title,
              description: item.snippet.description,
              thumbnail: item.snippet.thumbnails.default.url
            }
          })
          // console.log(songs);
          this.setState({songs, search})
        })
    } else {
      this.setState({songs: [], search})
    }
  }

  handlePlayList(item) {
    let playlist = this.state.playlist;
    playlist.push(item);
    this.setState({playlist})
  }

  render() {
    console.log(this.state);
    return(
      <div className="container">
        <div className="component-box music-search">
          <SearchComponent searchFunction={this.getSearchValue.bind(this)}/>
          <ItemList musicList={this.state.songs} search={this.state.search} playlist={false} updatePlaylist={this.handlePlayList.bind(this)} />
        </div>
        <div className="component-box playlist">
          <ItemList musicList={this.state.playlist} search={this.state.search} playlist={true} updatePlaylist={this.handlePlayList.bind(this)} />
        </div>
      </div>
    );
  }
}

App.defaultProps = {
  musicList
}

// youtube api key: AIzaSyDdYTZNuTdcGH7T6Q2zlU0r24UDgmULJ4U

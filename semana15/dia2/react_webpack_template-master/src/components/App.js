import React, { Component } from 'react';
// Components
import SongFinder from './SongFinder';
import Playlist from './songLists/Playlist';

class App extends Component {
  constructor(){
    super();
    this.state={
      songs: []
    }
    this.HandleAddSong = this.HandleAddSong.bind(this)
  }
  HandleAddSong(song){
    const songs= [...this.state.songs,song]
    this.setState({songs})
  //  console.log(this.state.songs);


  }
  render() {
    return(
      <div>
        <SongFinder songList={this.HandleAddSong}/>
        <Playlist songList={this.state.song}/>
      </div>
    );
  }
}

export default App;

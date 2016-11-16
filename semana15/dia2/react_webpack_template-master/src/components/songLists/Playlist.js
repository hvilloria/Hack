import React, {Component} from 'react';

class Playlist extends Component{
  constructor() {
    super();
    this.state={
      songs: []
    }

  }


  render(){
    return(
      <div className="divSongFinder">
        <h1>{this.props.songList}</h1>
      </div>)
  }
}

export default Playlist;

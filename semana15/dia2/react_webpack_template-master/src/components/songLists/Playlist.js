import React, {Component} from 'react';

class Playlist extends Component{
  constructor() {
    super();
    this.state={
      songs: []
    }
    this.communicateSongs =this.communicateSongs.bind(this)
  }

  communicateSongs(){
    let songs = this.props.songList
    console.log(songs);
    //this.setState({songs: ,})
    console.log(this.state.songs);
  }

  // let items = searchSongs.map((value, index) => {
  //   return <Item key={index} title={value.title} songList={this.props.songList}/>
  // })

  render(){
    let allSongs = this.communicateSongs
    return(
      <div className="divSongFinder">
        <h1>{allSongs}</h1>
      </div>)
  }
}

export default Playlist;

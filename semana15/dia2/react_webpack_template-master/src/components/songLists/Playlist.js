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
    this.setState({songs})
  }

  // let items = searchSongs.map((value, index) => {
  //   return <Item key={index} title={value.title} songList={this.props.songList}/>
  // })

  render(){
    console.log(this.state.songs);
    let allSongs = this.props.songList.map((song) => {
      return (<h1>{song}</h1>)
    })
    return(
      <div className="divSongFinder">
        {/* <h1>{this.props.songList}</h1> */}
        {allSongs}
      </div>)
  }
}

export default Playlist;

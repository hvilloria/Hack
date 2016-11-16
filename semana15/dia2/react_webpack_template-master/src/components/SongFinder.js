import React, {Component} from 'react';
import ItemList from './result_list/ItemList';
import SearchBar from './search_bar/SearchBar';

class SongFinder extends Component {
  constructor(){
    super();
    this.state={
      song: ''
    }
  }

  handleSearchSong(song){
    this.setState({song});
    console.log('en el metodo');
  }
  render(){
    return(
      <div className="divSongFinder">
        <SearchBar onSubmit={this.handleSearchSong.bind(this)}/>
        <ItemList onSearch={this.state.song} songList={this.props.songList}/>
      </div>
    );
  }
}



export default SongFinder;

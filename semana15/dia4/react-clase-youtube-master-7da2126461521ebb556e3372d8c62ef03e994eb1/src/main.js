import React, { Component } from 'react';
import {render} from 'react-dom';
// Components
import App from './components/App'
// import SearchButton from './components/search_bar/SearchButton';
// import SearchInput from './components/search_bar/SearchInput';

// class App extends Component {
//   render() {
//     return(
//       <form>
//         <SearchInput />
//         <SearchButton />
//       </form>
//     );
//   }
// }

render(<App />, document.getElementById('app'))

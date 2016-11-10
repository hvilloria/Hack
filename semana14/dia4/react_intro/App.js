import React, {Component} from 'react';
import Service from './service.js'

// const Service = () => (
// 	<div>al</div>
// );

class App extends Component {

	render () {
  	return (
  		<div>
  			<h4> Our Services</h4>
  			<Service divText='Web Development' divNumber={300.00} />
		  	<Service divText='Design' divNumber={400.00} />
		  	<Service divText='Integration' divNumber={250.00} />
		  	<Service divText='Training' divNumber={220.00} />
		  	<div>
		  		<div>Total</div>
		  		<div>Valor</div>
		  	</div>
  		</div>
	  )
  }

}

export default App;




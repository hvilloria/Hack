import React, {Component} from 'react';

// const Service = () => (
// 	<div>al</div>
// );

class Service extends Component {

	constructor(){
		super();
		this.state ={
			divChecked = false;
		}
		this.calculate = this.calculate.bind(this)
	}

	calculate(){
		

		let myText = this.props.func('text act')
		this.setState({
			divText: myText
		})
		// this.setState({
		// 	divText:'Intro a React'
		// })
	}

  render () {
  	return (
	  	<div onClick={this.calculate}>
	  		<div>{this.props.divText}</div>
	  		<div>{this.props.divNumber}</div>
	  	</div>
	  )
  }
}

export default Service;
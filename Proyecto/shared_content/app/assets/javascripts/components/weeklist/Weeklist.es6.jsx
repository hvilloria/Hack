class Weeklist extends React.Component{
	constructor(){
		super();

		this.handleDayList = this.handleDayList.bind(this)
	}

	handleDayList(id){
		// console.log('este es el id' + id);
		searchDaylist(id)
		.then((value) => {this.props.onClick(value)})
	}


	render(){
		let weeks = this.props.week.map((value) => {

			return <Week key={value.position} onClick={this.handleDayList} notes={value.notes} title={value.title} id={value.id}/>
		});

		return(
			<div className="week-container">
				{weeks}
			</div>
		);
	}
}

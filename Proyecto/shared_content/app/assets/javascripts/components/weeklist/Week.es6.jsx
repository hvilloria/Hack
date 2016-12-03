class Week extends React.Component{
	constructor() {
		super();
		this.state = {active: false};
		this._onClick = this._onClick.bind(this);
	}



	_onClick(){
		this.props.onClick(this.props.id)
	}
	render(){
		return(
			<div className="week-item" onClick={this._onClick.bind(this)}>
				<span>{this.props.title}</span>
				<span className="notes">{this.props.notes} Notas</span>
			</div>
    );
	}
}

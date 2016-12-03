class Option extends React.Component {
  constructor(){
    super();
    this.state={
      active: false
    };
    this._onClick = this._onClick.bind(this);
  }

  _onClick(){
    this.props.onClick(this.props.index);
    this.setState({active: !this.state.active});
  }

  render(){
    return(
      <a  onClick={this._onClick} className={"option-button " + this.props.className} >{this.props.title}</a>
    );
  }
}

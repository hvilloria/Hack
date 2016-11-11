import React, {Component} from 'react';
import Service from './Service.js';

class ServiceChooser extends Component {
  constructor(){
    super();
    this.state = {
      total: 0
    };
    this.addTotal = this.addTotal.bind(this)
  }

  addTotal(price){
    this.setState( { total: this.state.total + price } );
  }

  render () {
    let {addTotal} = this;

    var services = this.props.items.map(function(s){

        // Create a new Service component for each item in the items array.
        // Notice that I pass the self.addTotal function to the component.

        return <Service key={s.id} name={s.name} price={s.price} active={s.active} addTotal={addTotal} />;
    });

    return (
      <div>
          <h1>Our services</h1>

          <div id="services">
              {services}

              <p id="total">Total <b>${this.state.total.toFixed(2)}</b></p>

          </div>

      </div>
    );
  }
}

React.createElement('h1',null,'hola')

export default ServiceChooser;

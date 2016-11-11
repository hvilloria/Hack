import React from 'react';
import {render} from 'react-dom';
import ServiceChooser from './ServiceChooser.js'

var services = [
    {id: 1, name: 'Web Development', price: 300 },
    {id: 2, name: 'Design', price: 400 },
    {id: 3, name: 'Integration', price: 250 },
    {id: 4, name: 'Training', price: 220 },
    {id: 5, name: 'Pasa coleto', price: 290 }
];

render(<ServiceChooser items={ services } />, document.getElementById('root'))

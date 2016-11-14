import Caculator from './calculator';	// import example calculator in ES6

function show() {
	const c = new Caculator();

	console.log(`4 + 2 = ${c.add(4, 2)}`);
	console.log(`4 - 2 = ${c.sub(4, 2)}`);
}

show();

import TodoList from './todoList';
import AddTodoItem from './addTodoItem';


function loadTodoList() {
	let todoList = new TodoList([{
		label: 'Este es mi item 1',
		checked: false,
		id: 1
	},
	{
		label: 'Este es mi item 2',
		checked: true,
		id: 2
	}]);


	$('.todo-list').append(todoList.$component);
}

function loadTodoList1() {
	fetch('https://jsonplaceholder.typicode.com/todos')
	.then((response) => {return response.json()})
		.then((value) => {takeData(value)})

	}

var takeData = function(data){
	console.log('llego');
 	var todoList = [];
	for (let i = 0 ; i < data.length ; i++){
		todoList.push({
			label: data[i].title,
			checked: data[i].completed,
			id: data[i].id
		});
	}
	let todolist = new TodoList([...todoList])
	$('.todo-list').append(todolist.$component);
}

loadTodoList();
loadTodoList1();

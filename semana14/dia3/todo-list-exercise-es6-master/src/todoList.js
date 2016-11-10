import TodoItem from './todoItem';
import AddTodoItem from './addTodoItem';

class TodoList {
	constructor(params) {
		this.todoList = [];
		this.loadData(params);
	}

	draw() {
		if (!this.$component) {
			this.$component = $('<div>');
		}

		for (let todoItem of this.todoList) {
			todoItem.invalidate();
			this.$component.append(todoItem.$component);
		}

		let controlsComponent = new AddTodoItem((newItem) => {
			newItem.id= this.getMaxId();
			this.newTodoItem(newItem);
			this.invalidate();
		});
		this.$component.append(controlsComponent.$component);
	}

	invalidate() {
		if (this.$component) {
			this.$component.html('');
		}

		this.draw();
	}

	loadData(data) {
		for (let item of data) {
			this.newTodoItem(item);
		}

		this.invalidate();
	}

	getMaxId() {
		return this.todoList.length + 1;
	}

	newTodoItem(newItem) {
		let todoItem = new TodoItem(newItem);
		this.todoList.push(todoItem);
	}
}

export default TodoList;

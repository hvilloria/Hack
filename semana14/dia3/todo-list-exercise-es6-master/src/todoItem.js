class TodoItem {
	constructor(params) {
		this.loadData(params)
	}

	loadData(params) {
		this.label = params.label;
		this.checked = params.checked;
		this.id = params.id;

		this.invalidate();
	}

	invalidate() {
		if (this.$component) {
			this.$component.html("");
		}

		this.draw();
	}

	draw() {
		if (!this.$component) {
			this.$component = $('<div>');
		}

		let $checkbox = this.buildCheckbox();
		let $label = this.buildLabel();

		this.$component.append(
			$checkbox,
			$label
		);
	}

	buildCheckbox() {
		return $('<input>')
			.prop('type', 'checkbox')
			.prop('checked', this.checked)
			.prop('id', `checkbox-${this.id}`)
			.on('click', () => {
				this.checked = !this.checked;
				this.invalidate();
			});
	}

	buildLabel() {
		let $label = $('<label>')
		.html(this.label)
		.prop('for', `checkbox-${this.id}`);
		if (this.checked) {
			$label.css({
				"text-decoration": "line-through"
			});
		}
		else {
			$label.css({
				"text-decoration": "none"
			});
		}

		return $label;
	}
}

export default TodoItem;
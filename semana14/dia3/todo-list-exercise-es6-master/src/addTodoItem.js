class AddTodoItem {
    constructor(callback) {
        this.invalidate();
        this.callback = callback;
    }

    invalidate() {
        if (this.$component) {
            this.$component.html('');
        }

        this.draw();
    }

    draw() {
        if (!this.$component) {
            this.$component = $('<div>');
        }

        let $textInput = this.createTextInput();
        let $button = this.createButton();
        this.$errorMessage = this.createErrorMessage();

        this.$component.append($textInput, $button, this.$errorMessage);
    }

    createButton() {
        return $('<button>')
            .html('Create todo item')
            .on('click', () => {
                if (this.text && this.text != '') {
                    if (this.callback) {

                        this.callback({
                            label: this.text,
                            checked: false
                        });

                        this.text = '';
                    }
                }
                else {
                    this.$errorMessage.css({
                        color: 'red',
                        display: 'block'
                    });
                }
            });
    }

    createErrorMessage() {
        return $('<div>')
            .addClass('error-message')
            .html('El campo no puede estar vacío')
            .css({
                color: 'red',
                display: 'none'
            });
    }

    createTextInput() {
        return $('<input>')
            .prop('type', 'text')
            .on('keyup', (e) => {
                this.text = $(e.target).val();
            });
    }
}

export default AddTodoItem;
// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.4;

import {Todo} from "./Todo.sol";

contract TodoList {
    event TodoAdded();
    event TodoUpdated();
    event TodoDeleted();


    Todo[] private todos;


    function getTodos() public view returns (Todo[] memory) {
        uint size = todos.length;
        Todo[] memory copy = new Todo[](size);

        uint currentIndex = 0;
        for (uint i = 0; i < size; i++) 
        {
            if (!todos[i].deleted) {
                copy[currentIndex] = todos[i];
                currentIndex++;
            }
        }

        return copy;
    }

    function addTodo(string memory text, bool done) public {
        uint id = todos.length;
        Todo memory todo = Todo(id, text, done, false);
        todos.push(todo);
        emit TodoAdded();
    }

    function updateTodo(uint id, bool done) public {
        uint max = todos.length;
        for (uint i = 0; i < max; i++) {
            if (todos[i].id == id) {
                todos[i].done = done;
                emit TodoUpdated();
                break;
            }
        }
    }

    function deleteTodo(uint id) public {
        uint max = todos.length;
        for (uint i = 0; i < max; i++) {
            if (todos[i].id == id) {
                todos[i].deleted = true;
                emit TodoDeleted();
                break;
            }
        }
    }
}

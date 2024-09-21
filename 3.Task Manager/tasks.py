

class TaskManager:
    def __init__(self):
        self.tasks = []

    def add_task(self, task_name):
        task = {'name': task_name, 'completed': False}
        self.tasks.append(task)
        print(f"Task '{task_name}' added.")

    def view_tasks(self):
        if not self.tasks:
            print("No tasks available.")
        else:
            print("Task List:")
            for index, task in enumerate(self.tasks, start=1):
                status = "Completed" if task['completed'] else "Pending"
                print(f"{index}. {task['name']} - {status}")

    def mark_completed(self, task_index):
        if 0 <= task_index < len(self.tasks):
            self.tasks[task_index]['completed'] = True
            print(f"Task '{self.tasks[task_index]['name']}' marked as completed.")
        else:
            print("Invalid task number.")

def main():
    manager = TaskManager()
    while True:
        print("\nTask Manager Menu:")
        print("1. Add a new task")
        print("2. View all tasks")
        print("3. Mark a task as completed")
        print("4. Exit")

        choice = input("Choose an option (1-4): ")
        if choice == '1':
            task_name = input("Enter the task name: ")
            manager.add_task(task_name)
        elif choice == '2':
            manager.view_tasks()
        elif choice == '3':
            try:
                task_index = int(input("Enter the task number to mark as completed: ")) - 1
                manager.mark_completed(task_index)
            except ValueError:
                print("Please enter a valid task number.")
        elif choice == '4':
            print("Exiting Task Manager.")
            break
        else:
            print("Invalid option. Please choose a number between 1 and 4.")

if __name__ == "__main__":
    main()



Output : 

Task Manager Menu:
1. Add a new task
2. View all tasks
3. Mark a task as completed
4. Exit
Choose an option (1-4): 1
Enter the task name: drink water early morning
Task 'drink water early morning' added.

Task Manager Menu:
1. Add a new task
2. View all tasks
3. Mark a task as completed
4. Exit
Choose an option (1-4): 1
Enter the task name: yoga
Task 'yoga' added.

Task Manager Menu:
1. Add a new task
2. View all tasks
3. Mark a task as completed
4. Exit
Choose an option (1-4): 1
Enter the task name: prepare breakfast
Task 'prepare breakfast' added.

Task Manager Menu:
1. Add a new task
2. View all tasks
3. Mark a task as completed
4. Exit
Choose an option (1-4): 1
Enter the task name: studying
Task 'studying' added.

Task Manager Menu:
1. Add a new task
2. View all tasks
3. Mark a task as completed
4. Exit
Choose an option (1-4): 1
Enter the task name: go to college
Task 'go to college' added.

Task Manager Menu:
1. Add a new task
2. View all tasks
3. Mark a task as completed
4. Exit
Choose an option (1-4): 1
Enter the task name: attend class
Task 'attend class' added.

Task Manager Menu:
1. Add a new task
2. View all tasks
3. Mark a task as completed
4. Exit
Choose an option (1-4): 1
Enter the task name: return home
Task 'return home' added.

Task Manager Menu:
1. Add a new task
2. View all tasks
3. Mark a task as completed
4. Exit
Choose an option (1-4): 1     
Enter the task name: dinner
Task 'dinner' added.

Task Manager Menu:
1. Add a new task
2. View all tasks
3. Mark a task as completed
4. Exit
Choose an option (1-4): 1
Enter the task name: sleep
Task 'sleep' added.

Task Manager Menu:
1. Add a new task
2. View all tasks
3. Mark a task as completed
4. Exit
Choose an option (1-4): 2
Task List:
1. drink water early morning - Pending
2. yoga - Pending
3. prepare breakfast - Pending
4. studying - Pending
5. go to college - Pending
6. attend class - Pending
7. return home - Pending
8. dinner - Pending
9. sleep - Pending

Task Manager Menu:
1. Add a new task
2. View all tasks
3. Mark a task as completed
4. Exit
Choose an option (1-4): 3
Enter the task number to mark as completed: drink water early morning
Please enter a valid task number.

Task Manager Menu:
1. Add a new task
2. View all tasks
3. Mark a task as completed
4. Exit
Choose an option (1-4): 3
Enter the task number to mark as completed: yoga
Please enter a valid task number.

Task Manager Menu:
1. Add a new task
2. View all tasks
3. Mark a task as completed
4. Exit
Choose an option (1-4): 2
Task List:
1. drink water early morning - Pending
2. yoga - Pending
3. prepare breakfast - Pending
4. studying - Pending
5. go to college - Pending
6. attend class - Pending
7. return home - Pending
8. dinner - Pending
9. sleep - Pending

Task Manager Menu:
1. Add a new task
2. View all tasks
3. Mark a task as completed
4. Exit
Choose an option (1-4): 4
Exiting Task Manager.

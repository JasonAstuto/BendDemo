# Biova_Test
Take home style interview test

Programming Skills Assessment

This exercise is intended to give you an opportunity to demonstrate your skills in software engineering, object-oriented analysis and design, and implementation of quality software.  Please approach this problem as you would in a real-world production environment.

For this exercise, please create a simple application that will load information about a scientific project and display it. The hierarchy of business entities to display can be described as follows.

•	The Project contains a Description and zero or more Study entities.<br> 
•	A Study has a globally unique ID, a Name, a Description, and zero or more Experiment entities.<br>
•	An Experiment has a unique ID, an Index distinct from that of its siblings, a CreationDate, and a Description<br>

A sample input is provided in the file Project.xml. You do not have to use this file format for this exercise. You may choose a different XML structure, JSON, a local database, or any other format you wish. Please include an example file in the chosen format. If using a local database, please include any instructions needed for its use.

The application should display the names of the studies found in the project (for example, in the Project.xml example, “Cancer Study 001” would be one of the choices).  The user can then select a specific study.  When a name is selected, then the details of that study should be displayed.  You can choose how to display this information.

The user should also be able to order the individual experiments within a study by one of three choices: the Index, the CreationDate, or the Description.  When the ordering changes, the GUI should display the experiments in the new order, and the file on disk should be updated.

This application can be implemented in your choice of high-level programming languages, such as C#, Java, C++ or JavaScript.  When you have finished, please email all relevant files in a password-protected ZIP archive so that our email filters do not delete it. Please briefly describe your implementation approach, and indicate the approximate amount of time you spent on the project.

# Optimization Example Assignment

## Comparing the outcome of a Simple Optimization done with and without GAI Tools (ChatGPT 4.0)

This assignment is comprised of three major questions that can all be found in the Optimization Example folder.  The purpose is to measure the prowess of ai tools in generating code and solving a simple optimization problem.

## The Prompt

Consider the following problem:

Your instructor decides to quit DU and move to Japan to be with his daughter and new grandchild.  Since Japan is like England and the driver sits on the right and traffic flows on the left side of the road, his American cars are useless in Japan.  Therefore, he is going to give his 5 cars (Mazda CX-5, Tesla Model 3, Ford Focus, Tesla Cybertruck, and Jeep Wrangler), to his three favorite INFO 3440 students. You know who you are :) but for these purposes, we will call you Student 1, Student 2, and Student 3.

Of course there's some rules to this giveaway:

No student can receive more than three cars
Each student must receive at least one car
Your instructor doesn't want to deal with this anymore, so all the cars must be given away
If a student gets one of the Teslas, (s)he cannot receive the other Tesla
Student 1 is obviously his most favorite, so in this case Student 2 may not receive more cars than student 1
Obviously, the same car can not be given to more than 1 student
To help with gas mileage concerns, If the Jeep Wrangler goes to Student 1, then Student 1 must also get the Ford Focus.
If Student 1 gets the Ford Focus OR if Student 2 gets the Cybertruck, then the CX-5 must go to Student 3.
As we have also established, your instructor is basically lazy and wants to minimize the number of miles he has to drive to drop these cars off at the students' houses.  Student 1 lives 17 miles away from your instructor, where student 2 lives 12 miles away and student 3 lives 15 miles away

Using Python and Pyomo, create a detailed, highly descriptive Jupyter Notebook that finds an optimal solution to this problem.  You will turn in three documents:

Write your notebook first as a blank notebook and solve the problem.  Be sure all the output cells are shown and export it to HTML.
Now using your favorite GAI tool (ChatGPT, Bard, Claude, etc.), have it solve the problem.  Be sure to show all the prompts that you give the GAI tool and how it responds.  Put that into a Jupyter Notebook and export it as HTML.
Revise your notebook from step 1, and in the appropriate text cells, say how you changed what you did originally.  Add text cells to the bottom discussing the performance of the GAI engine and how you would approach a similar problem using GAI tools.  Save this using the word REVISED in the filename and export it as HTML.

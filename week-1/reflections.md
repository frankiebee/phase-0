#1.1 Think About Time

Given that i had read some of these articles before hand I decided to use my time to learn about flow and the "fogg method" as well as read the brief intro to "Time boxing". I enjoyed reading about the fogg method and watching the video. The concept being that rather then just being motivated around the bigger picture you should focus on creating little habits that will help achieve the bigger picture. Changing your behavior to produce the outcome with many behavioral triggers by immediately celebrating success. The way this looks when this practice is written out is :"After I  _______, I will ________. Awesome :) ". For example I plan on using this during phase 0 and it will look some thing like this: "After completing a short module, I will have a chocolate chip. Chocolate is delicious" or "After I complete a short, medium and long module, I will take a 20 minute walk about." so on and so on, making habits and celebrating my efforts.

"Time boxing" is having a set time in which you continuously work until time is up. At this point the work that has been achieved is evaluated. The "Pomodoro method" is an example of "Time boxing". Although inherently useful my personal preference is not to interrupt a flow when i have one. Within my own learning practices i only use this method when it is hard to get motivated about a subject or if my rewards system is not working for me on that day.

My overall plan and current work strategy is to get most of my work done in the morning. Take notes that i can be proud of. While pushing and motivation is good allowing my sell some decompression time is important as well. And try to have fun learning. My ideal Bullet-point day style for Phase 0:

9 am coffee and create goal/todo sheet for the next 4 to 5 hours
Break todo sheet into estimated times and do what ever will take the longest first.
When i notice focus is slipping or when i am having trouble figuring something out allow for some mental rest.
Notes should be pretty and easy to read. So major points and key ideas should be copied over to the "BIG BOOK OF MIXED NOTES"
Self testing is important. Ideas and notes and vocab. words from the previous day will be self tested in the morning and notes and so on from the current day will be tested and gone over before going to bed that night.

#1.2 The Comand Line

Bash is the unix shell and command language interpreter. The shell is the command line user interface it allows although it is not apart of the system kernel it use kernel to execute programs. Bash was created for the GNU operating system. Which is a "a large dark antelope with a long head, a beard and mane, and a sloping back." Hah hah hah... :\ okay i got that out of the way. GNU is operating system that is capable of creating a linux-like operating system but is composed of free software.

Moving on...

Yes i was ables to successfully use all the commands. Although i still need to work on understanding sudo as well as just getting more practice with echo, xargs, push and pop as well as grep.

In my option the most important commands to know are:

cd
ls
mkdir
rm
rmdir
touch
at the moment but i'm fairly sure that knowing all of the ones we just learned are important.



Print working directory -pwd

List files and directories -ls

Move file or directory-mv

Change working directories -cd

In tandem with cd brings you to the previous directory-../

Create a new emty file or cange the time stamp-touch

Make new directory -mkdir

(les is more?) Page through a file -less

Remove directory -rmdir

Remove file-rm

The power shell eqivalent to man (documtaion page on command or module -man)-help

#1.3 Introduction to Version Control
Git is a soft ware and GitHub is hosting and collaboration. GitHub can also handle merging and version control. Git can also do this but GitHub allows you to do this with out having the person with the code online as long as it is in the Hub.

Version control keeps track of all your progress and also allows multiple people to work on the same script with out stepping on each others toes. If you break something version control can take you bake and time travel in your script to when it was all okay. When you work with people you can use version control to help be like "This one is mine i'm gonna work on it. And that, thats yours you work on it" and when your both done you can tell git while you sit in front of your lap top. "Git i command you now make these two a one!" and gits all like 'i is not a git command see some help'. 'git merge [bookmark]/[branch]' is the right one all joking aside. GitHub now knows who you are and when your working with a team your commits pulls merges etc. they are all tracked. Don't understand a new piece of code or who did it? GitHub does! Need some help with a thing? Not only do you have the GitHub community where someone has probably worked on the same problem as you but you also have your team to chat with on GitHub and members of the community who like deep shades of green on their contributions map.

A commit is a snapshot of your progress and is stored in version history. This is the time travel element and commits should always have a note/comment made in the present tense as per the preference of most programers. This is the sort of safety net where if you screw up and stuff stops working you can go back to an earlier commit and try again.

#1.4 Forking and Cloning

##Setting up a repository, forking and cloning repositories:

###CREATING A REPOSITORY:

After logging in you will see a '+' symbol at the top right hand corner next to your profile icon. Go ahead and click on the '+' and click 'New repository'.
Type in your desired repository name.
And make sure to put MIT License at the bottom where it says license.
Now that you have created your repository lets clone it down to your computer so that you can work and add files to it.

###CLONING and FORKING A REPOSITORY:

If you are forking someone else repository you would click into the repository and their would be a button that says 'fork'
Click that and find yourself and click you.
Got to the bar where it says 'HHTPS' and copy that link. Now if this is your repository you don't need to do that. You would just do this step.
Go to your terminal and type git clone https://gitthub.com/paste-your-link/here and paste your link in the terminal.
It may ask for username and password but now you have the repository locally on your computer!


I would fork a repository rather then make a new one to be able to work with people on my team on the project. If you create a new repository you wont have your team to collaborate with.
##How does tracking and adding changes make developers' lives easier?
If something brakes you can simply go back to when it was working wrather then going through the script to fix what you broke. It also alows you to have a visble history in what you've done recently.

##What is a commit?
A commit is a snapshot of your curent script.
What are the best practices for commit messages?
Mesages should be present tense.
and git commit -v is the better practice. the commit mesage would be in the file and it would look something like this:
COMMIT MESAGE
Pargraph 1:
Details....
so on...
so forth..
explain.

##What does the HEAD^ argument mean?
It is the last commit made

##What are the 3 stages of a git change and how do you move a file from one stage to the other?
check status
add changes
commit changes

use git add to stage and track and git reset HEAD to unstage

##Write a handy cheatsheet of the commands you need to commit your changes?
gti status - list all new or moddified files to be commited
git diff - show file differences not yet staged
git add [file] - prepare file for staging
git commit -[option] 'descriptve note' - commit the changes

##What is a pull request and how do you create and merge one?
A pull request is a sort of hey guys look what i did and tells others what you have done
and also keeps your file uptodate.
git pull origin master would do this.

##Why are pull requests preferred when working with teams?
it keeps everyone in the loop.
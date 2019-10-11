# gitpractice 
This repository is for learning purposes only.  

We practice working in multiple branches to see the effects of git commands.  


## Shell Syntax  
Constant variables should be in ALL_CAPS.  
Variables whose value can change should be in lower_case.  
\ is used as an escape character.  
``` echo '\n' ```
echos a new line.  

Formatting output can be done with sed, awk, and cut.  
``` ls -al | sed -e 's/username//g; s/staff//g' ```  
search s/ some phrase and replace with some phrase /g  


## Git Syntax
To append a commit from another branch to your current branch  
``` git cherry-pick (commit ID) ```  
To save a change in your local branch to another remote branch  
``` git stash ```   
``` git apply (stashed change ID) ```  
``` git stash drop (stashed change ID) ```
To rename the branch old_name to new_name and delete branch old_name
``` git branch -m new_name ```
``` git push origin HEAD:old_name ``` 
``` git push origin --delete old_name ```

## Bash References
http://www.gnu.org/software/sed/manual/html_node/Regular-Expressions.html#Regular-Expressions  
https://www.loggly.com/ultimate-guide/analyzing-linux-logs/  
http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html

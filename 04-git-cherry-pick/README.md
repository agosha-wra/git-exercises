## Specs
- Before the exercise, run 'rake start'

- We have a repo with commits that looks like this : 
 
             feature-2---feature-2a
            /
        master---feature-1---feature-1a---feature-1b
            \
             feature-3---feature-3a---feature3b


- We want to insert the commits of 'feature-2' and 'feature-3a', and only those, on top of 'feature-1b' with cherry-pick.  

- The result would be: 

             feature-2---feature-2a
            /
        master---feature-1---feature-1a---feature-1b---feature-2---feature-3a
            \
             feature-3---feature-3a---feature3b

## How to test
- Just run the 'rake' command, when everything is green, you can go to the next exercise :)
- Made a mess ? just 'rake start_again'

## What is important here 
- Understanding how cherry-pick works
- Notice how cherry-pick creates a copy of the commit and forwards HEAD?


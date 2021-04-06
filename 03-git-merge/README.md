## Specs
- Before the exercise, run 'rake start'

- We have a repo with commits that looks like this : 
 
             feature-2---feature-2a
            /
        master---feature-1---feature-1a---feature-1b
            \
             feature-3---feature-3a---feature3b


- We want to merge master with everything that has been developed to far : 

             feature-2---feature-2a-----------------------------
            /                                                   \
        commit---feature-1---feature-1a---feature-1b---commit---commit---master
            \                                                            /
             feature-3---feature-3a---feature3b--------------------------

## How to test
- Just run the 'rake' command, when everything is green, you can go to the next exercise :)
- Made a mess ? just 'rake start_again'

## What is important here 
- Understanding what merging actually does


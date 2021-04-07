## Specs
- Before the exercise, run 'rake start'

- We start from our repo, but now master has every commit. 
 
             feature-2---feature-2a-----------------------------
            /                                                   \
        commit---feature-1---feature-1a---feature-1b---commit---commit---master
            \                                                            /
             feature-3---feature-3a---feature3b--------------------------


- We want to revert all the changes from feature-2a, feature-1a, feature-1b and feature-3a

             feature-2---feature-2a-----------------------------
            /                                                   \
        commit---feature-1---feature-1a---feature-1b---commit---commit---feature-2aREVERT---feature-1aREVERT---feature-1bREVERT---feature-3aREVERT---master
            \                                                            /
             feature-3---feature-3a---feature3b--------------------------

## How to test
- Just run the 'rake' command, when everything is green, you can go to the next exercise :)
- Made a mess ? just 'rake start_again'

## What is important here 
- Understanding the revert command


## Specs
- Before the exercise, run 'rake start'

- We have rebuilt the repo from the previous exercise, our repo branches look like this : 

             feature-2---feature-2a
            /
        master---feature-1---feature-1a---feature-1b

We want to rebase both commits feature-2 and feature-2a on top of feature-1b. 

             feature-2---feature-2a
            /
        master---feature-1---feature-1a---commit---feature-2---feature-2a
                                                                    (feature-1b)

## How to test
- Just run the 'rake' command, when everything is green, you can go to the next exercise :)
- Made a mess ? just 'rake start_again'

## What is important here 
- Being able to navigate branches to understand the history via git log. 
- Understanding the rebase command. 


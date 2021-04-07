## Specs
- Before the exercise, run 'rake start'

- We start from our repo: 

    master---feature-1---feature-2---feature-3---feature-4---feature-5
          \
            feature-a---feature-b---feature-c


- We want to reset feature-5 to the feature-3 commit and discard the changes in the feature-5 commit.
- We want to reset feature-c to the feature-a commit but bring along our changes and commit them. 

The result should look like this: 

    master---feature-1---feature-2---feature-3---feature-4
          \                          feature-5
            feature-a---feature-b
                      \
                        feature-c
- When you are done, try running git reflog. 

## How to test
- Just run the 'rake' command, when everything is green, you can go to the next exercise :)
- Made a mess ? just 'rake start_again'

## What is important here 
- Understanding the reset command, and the --hard option. 


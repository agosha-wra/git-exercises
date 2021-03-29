rm feature-1.rb
rm feature-1a.rb
rm feature-1b.rb
rm feature-2.rb
rm feature-2a.rb
git init 
git add .
git commit -m 'first commit'
git checkout -b feature-1
touch feature-1.rb
git add . 
git commit -m 'feature 1 commit'
git checkout -b feature-1a
touch feature-1a.rb
git add .
git commit -m 'feature 1a commit'
git checkout -b feature-1b
touch feature-1b.rb
git add .
git commit -m 'feature 1b commit'
git checkout master
git checkout -b feature-2
touch feature-2.rb
git add .
git commit -m 'feature 2 commit' 
git checkout -b feature-2a
touch feature-2a.rb
git add .
git commit -m 'feature 2a commit'
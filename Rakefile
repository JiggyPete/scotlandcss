task :deploy do
  puts "## Deploying to GitHub Pages"

  system "jekyll build"
  system "cp -rf _site ../scotlandcss-deploy"
  system "git checkout gh-pages"
  system "git pull"
  system "rm -rf *"
  cp_r "../scotlandcss-deploy/.", "."
  system "git add -A"

  message = "Site updated at #{Time.now.utc}"
  puts "## Committing: #{message}"
  system "git commit -m \"#{message}\""

  puts "## Pushing to GitHub"
  system "git push origin gh-pages"

  system "rm -rf ../scotlandcss-deploy"

  system "git checkout master"

  puts "## Deploy complete"
end

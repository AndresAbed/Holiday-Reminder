web: bundle exec rails server puma -p $PORT -e $RACK_ENV
critical: env HEROKU_PROCESS=critical bundle exec sidekiq -c 2 -q critical,4
default: env HEROKU_PROCESS=default bundle exec sidekiq -c 4 -q default,2
low: env HEROKU_PROCESS=low bundle exec sidekiq -c 1 -q low,1web: bundle exec unicorn -p $PORT -E $RACK_ENV -c ./config/unicorn.rb

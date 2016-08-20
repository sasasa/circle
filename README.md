# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.3.1
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
* ...

```
rails g rspec:install

mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss

rails g simple_form:install --bootstrap

bundle exec spring binstub --all
bin/rubocop -only Lint/Debugger,Lint/DuplicateMethods,Lint/UnreachableCode,Lint/Void

rm -r bin
bundle exec rake rails:update:bin
bundle install --binstubs
bundle exec spring binstub --all

bundle config --delete bin
rm -r bin/rails
rails app:update:bin


git clone http://github.com/zimbatm/direnv
cd direnv
sudo make install
.envrc

bundle exec annotate
bundle exec annotate --routes
rails g annotate:install

bundle exec guard init rspec
bundle exec guard init livereload
bundle exec guard
http://feedback.livereload.com/knowledgebase/articles/86242-how-do-i-install-and-use-the-browser-extensions-
http://livereload.com/extensions/

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

rails g scaffold UserGroup user:references group:references
rails g scaffold UserLesson score:integer user:references lesson:references
rails g scaffold Lesson name:string
rails g scaffold School name:string
rails g scaffold Group name:string
rails g scaffold User admin:boolean name:string email:string url:string phone:string password:string comment:text age:integer study_hour:integer volume:float login_time:datetime birthday:date wake_up_time:time country:string time_zone:string school:references

(rake secret)
ruby -e "require 'securerandom'; print SecureRandom.hex(64)" > ~/.secret_key_base
export SECRET_KEY_BASE=`cat ~/.secret_key_base`

rails g kaminari:config
rails g kaminari:views bootstrap3 -e haml
rails g kaminari:views default -e haml
concern :paginatable do
  get '(page/:page)', :action => :index, :on => :collection, :as => ''
end
resources :my_resources, :concerns => :paginatable

rails g validates_timeliness:install
wget -O config/locales/ja.yml https://raw.githubusercontent.com/svenfuchs/rails-i18n/master/rails/locale/ja.yml

bundle exec erd --filetype=png

rails g i18n ja (ja.yml translation_ja.yml)
rails g i18n_translation ja (translation_ja.yml)

rake haml:convert_erbs
rake haml:replace_erbs

rake assets:precompile
production pbluc file serv (RAILS_SERVE_STATIC_FILES)
```
install:
	bundle install

update:
	bundle update

build:
	bundle exec jekyll build

up: install update
	bundle exec jekyll serve
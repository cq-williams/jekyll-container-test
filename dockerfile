# CREATING A JEKYLL CONTAINER FROM A RUBY ALPINE IMAGE

# AT A MINIMUM, USE RUBY 2.5 OR LATER
FROM ruby:2.7-alpine3.15

# ADD JEKYLL DEPENDENCIES TO ALPINE
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# UPDATE THE RUBY BUNDLER AND INSTAL JEKYLL
RUN gem update bundler && gem install bundler jekyll
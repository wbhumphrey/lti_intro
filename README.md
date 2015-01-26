How to get started

```
# initialize the rails app
rails new lti_intro

# start the server
# use port 3001 so it doesn't conflict with local canvas
bundle exec rails s -p 3001

# verify the server is running on http://localhost:3001

# create a controller to handle lti launches
rails generate controller lti launch

# verify the controller exists at http://localhost:3001/lti/launch

# modify routes from GET to POST
post 'lti/launch'

# verify routing error  at http://localhost:3001/lti/launch
# the routing error should contain info about the new lti_launch_path POST route

# remove the X-Frame-Options header so that the application can be embedded
config.action_dispatch.default_headers['X-Frame-Options'] = ''

# reboot the server so the header gets updated
```

Try launching the tool in  a course

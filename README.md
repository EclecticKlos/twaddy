# twaddy
Adell, Dan, Dave, and Yukio's Twitter clone

#### User Stories
* A user can log in
* A user can retweet others' status updates
* A user can see others' profile pages with all their updates
* A user can only post status updates of 140 characters or less
* A user can post status updates
* A user can follow other users
* A user sees a styled site
* A user has followers
* A user can see a list of their followers
* A user can see a list of who they are following
* A user can see updates from those they are following
* A user sees a responsively styled site
* A user can see others' profile pages
* A user can link a gravatar image
* A user has a profile page
Add your own user stories

#### follower table
<img src="imgs/follower_table.png">
#### user stories
<img src="imgs/schema.png">

#### Quickstart

1.  `bundle install`
2.  `shotgun config.ru`

As needed, create models & migrations with the `rake` tasks:

```
rake generate:migration  # Create an empty migration in db/migrate, e.g., rake generate:migration NAME=create_tasks
rake generate:model      # Create an empty model in app/models, e.g., rake generate:model NAME=User
```

#### Mockup
<img src="imgs/twaddy-mockup.png" alt="">
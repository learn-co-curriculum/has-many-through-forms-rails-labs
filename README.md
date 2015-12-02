
# Has Many Through Forms Rails Labs

## Objectives

1. construct a bi-directional has many through.
2. identify the join model in a has many through.
3. Construct a nested params hash with data about the primary object and a has many through association.
4. Use the conventional key names for associated data (assoication_attributes).
5. Name form inputs correctly to create a nested params hash with has many through association data.
6. Define a conventional association writer for the primary model to properly instantiated associations based on the nested params association data.
7. Define a custom association writer for the primary model to properly instantiated associations with custom logic (like unique by name) on the nested params association data.
8. Use fields_for to generate the association fields.

## Notes

domain
  posts with many tags through post tags
  posts with many comments
  posts with many users through comments
  users with many posts through comments


posts#new
  a form to create a post with tags

posts#show
  a new comment form that has a user drop down (address that later we could populate this data when they are signed in)
  should also list all comments
  should also list all unique users involved in the comments conversation

tags#show
  should show all posts with the tag

users#show
  should show all posts they have commented on.

try to force them to use a custom writer in one place and accepts nested attributes for in another and fields_for

<a href='https://learn.co/lessons/has-many-through-forms-rails-labs' data-visibility='hidden'>View this lesson on Learn.co</a>

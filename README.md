
# Has Many Through Forms Rails Labs

## Objectives

1. Construct a bi-directional has many through.
2. Identify the join model in a has many through.
3. Construct a nested params hash with data about the primary object and a has many through association.
4. Use the conventional key names for associated data (assoication_attributes).
5. Name form inputs correctly to create a nested params hash with has many through association data.
6. Define a conventional association writer for the primary model to properly instantiated associations based on the nested params association data.
7. Define a custom association writer for the primary model to properly instantiated associations with custom logic (like unique by name) on the nested params association data.
8. Use fields_for to generate the association fields.

## Overview

We've looked at the schema behind associating posts with comments, categories, and users - let's build that out so that we can actually create new records with forms! For this one, your models are already stubbed out, but you may need to update them to make your forms work properly.

## Instructions

1. Create a form at `posts#new` to create a new post. The form should include text boxes for us to select categories as well as a text field to create a new category. You should do this with a nested form. Also, typing in a Category name that already exists should not create a new category.

2. Create a posts show page with four sections.
  1. The title and content of the post.
  2. All of the comments associated with the post.
  3. A list of all the unique users who have commented on the post. A user's name should only show up once in this section, even if they've commented multiple times.
  4. A form to add a new comment. The form should have a drop down menu to select a user (we'll change this in future lessons to automatically associate the comment with a logged-in user). We should also be able to create a new user here and automatically associate it with the post.

3. Create a users show page that displays all of the posts a user has commented on.

4. Create a categories show page that shows all of the posts associated with a given category.


<a href='https://learn.co/lessons/has-many-through-forms-rails-labs' data-visibility='hidden'>View this lesson on Learn.co</a>

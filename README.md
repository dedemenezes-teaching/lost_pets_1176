follow the same

1. route
2. controller action
3. view


As a user I can see all found pets
As a user I can see details about one found pet (when and where it was found)
As a user I can add a pet I found
As a user I can update a pet
As a user I can delete a pet

<%= form_with model: pet do |f| %>
  <%= f.label :name, class: 'input' %>
  <%= f.text_field :name %>
  <%= f.label :address %>
  <%= f.text_field :address %>
  <%= f.label :species %>
  <%= f.select :species, Pet::SPECIES %>
  <%= f.label :date %>
  <%= f.date_field :date %>
  <%= f.submit %>
<% end %>

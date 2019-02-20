
#from create user in UsersController

respond_to do |format|
if @user.save
  format.html { redirect_to @user, notice: 'User was successfully created.' }
  format.json { render :show, status: :created, location: @user }
else
  format.html { render :new }
  format.json { render json: @user.errors, status: :unprocessable_entity }
end
end



  <strong>Book this island:</strong>
  <%= form_for(@island) do |f| %>
  <%= f.collection_select :island_id, Rent.all, :id, :month_array %>
  <%= f.submit %>
  <% end %>

  <strong>Book this island:</strong>
  <%= form_for(@rent) do |f| %>
  <%= f.collection_select :island_id, Rent.all, :id, :month %>
  <%= f.submit %>
  <% end %>


<%= link_to 'Back', users_path %>

<%= link_to 'New User', new_user_path %>

<%= render 'form', user: @user %>

respond_to do |format|
  if @review.save
    format.html { redirect_to @review, notice: 'Review was successfully created.' }
    format.json { render :show, status: :created, location: @review }
  else
    format.html { render :new }
    format.json { render json: @review.errors, status: :unprocessable_entity }
  end

  <td><%= link_to 'Edit', edit_island_path(island) %></td>
  <td><%= link_to 'Destroy', island, method: :delete, data: { confirm: 'Are you sure?' } %></td>

  <%= link_to 'Edit', edit_island_path(@island) %> |

  <%= link_to 'Book', edit_island_path(@island) %>

<%= link_to 'New Island', new_island_path %>

<td><%= link_to 'Show', review %></td>
<td><%= link_to 'Edit', edit_review_path(review) %></td>
<td><%= link_to 'Destroy', review, method: :delete, data: { confirm: 'Are you sure?' } %></td>

<%


<div class="field">
  <%= form.label :user_id %>
  <%= form.text_area :user_id %>
</div>

<div class="actions">
  <%= form.submit %>
</div>


  <td><%= link_to 'Show island', island %></td>

  <td><%= link_to 'Show', user %></td>
  <td><%= link_to 'Edit', edit_user_path(user) %></td>
  <td><%= link_to 'Destroy', user, method: :delete, data: { confirm: 'Are you sure?' } %></td>

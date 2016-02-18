<% if @infra.valid? %>

$('.tabs li').removeClass 'last'
$('.tabs').append '<li class=\"last\"><%= j(render @infra) %></li>'
notice $('.infra-<%= @infra.id %>'), '#eaeaae'
$('.tabs input').val ''

<% else %>

notice $('.tabs input'), '#ff6666'
$('.tabs input').val ''
$('.tabs input').attr 'placeholder', '<%= @infra.errors[:name].first %>'

<% end %>

<% if !@deleted.nil? %>

notice $('.infra-<%= @deleted.id %>'), '#ff6666'
$('.infra-<%= @deleted.id %>').hide 'slow'
$('.tabs li:last-child').prev('li').addClass 'last'
notice $('.infra-<%= @infra.id %>'), '#fff68f'

<% end %>

$('.fittingpane').replaceWith '<div class="fittingpane"><%= j(render @infra.fittings) %></div>'
$('.tabs li').removeClass 'active'
$('.infra-<%= @infra.id %>').parents('li:first').addClass 'active'
$('.fitting-create #infra_id').val '<%= @infra.id %>'
$('.infra-delete').attr 'href', '<%= infra_path(id: @infra.id, format: 'js') %>'
$('.infra-time').html '<%= j(format_logged(@infra.logged)) %>'

toggable $('.fitting')

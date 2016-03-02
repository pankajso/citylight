<% if @inst.valid? %>
newrow = '<%= j(render @inst) %>'
lastrow = $( ".tbl" ).last()
tble = lastrow.parent()
tble.append(newrow)
<% else %>
notice $('.fitting-create #name'), '#ff6666'
$('.fitting-create #typo').val ''
$('.fitting-create #typo').attr 'placeholder', '<%= @inst.errors[:typo].first %>'
<% end %>

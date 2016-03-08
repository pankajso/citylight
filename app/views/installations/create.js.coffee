<% if @inst.valid? %>
newrow = '<%= j(render @inst) %>'
tblfind = '<%= @inst.fitting_id %>'
findrow = $( ".tbl" ).hasClass("tbl-<%= @inst.fitting_id %>")
if findrow is true
  $( ".tbl tbl-<%= @inst.fitting_id %>" ).css( "background-color", "red" )
  row = $( ".tbl.tbl-<%= @inst.fitting_id %>" ).last()
  row.remove()

lastrow = $( ".tbl" ).last()
tble = lastrow.parent()
tble.append(newrow)
lastrow = $( ".tbl" ).last()
lastrow.css( "color", "red" )
<% else %>
notice $('.fitting-create #name'), '#ff6666'
$('.fitting-create #typo').val ''
$('.fitting-create #typo').attr 'placeholder', '<%= @inst.errors[:typo].first %>'
<% end %>

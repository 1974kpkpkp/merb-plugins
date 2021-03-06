# For details on Sequel migrations see 
# http://sequel.rubyforge.org/
# http://sequel.rubyforge.org/rdoc/classes/Sequel/Database.html#M000607

class <%= class_name %> < Sequel::Migration

  def up
<% if model -%>
    create_table :<%= table_name -%> do
      primary_key :id
<% attributes.each do |name, type| -%>
      <%= type %> :<%= name %>
<% end -%>
    end
<% end -%>
  end

  def down
<% if model -%>
    drop_table :<%= table_name %>
<% end -%>
  end

end

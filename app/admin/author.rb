ActiveAdmin.register Author do

  sidebar 'Books by this Author', :only => :show do
    table_for Book.joins(:author).where(:author_id => author.id) do |t|
      t.column("Title") { |book| book.name }
    end
  end
  # Formate la sortie du ficher CSV pour sortir que les colone first name et lastname
  csv do
    column :first_name
    column :last_name
  end

  active_admin_importable

end

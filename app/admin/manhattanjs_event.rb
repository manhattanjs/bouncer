ActiveAdmin.register ManhattanjsEvent do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :name, :event_date
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


  show do |mjs|
    attributes_table do
      row :name
      row "Event Date" do
        mjs.event_date.strftime("%A -- %B %d, %Y at  %l:%M%P")
      end
    end
  end

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :event_date, as: :datetime_select
    end
    f.actions
  end
  
end

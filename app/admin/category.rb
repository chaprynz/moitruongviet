ActiveAdmin.register Category do

    permit_params :name, :content

	show do |t|
		attributes_table do
			row :name
			row :content
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :name
			f.input :content,  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
		end
		f.actions
	end	

end

ActiveAdmin.register Post do

    permit_params :title, :content, :category_id, :image

	index do 
		column :title
		column :category

		actions
	end

	form do |f|
		f.inputs do
			input :category, label: "Category"
			input :title, label: "Title"
			input :content, label: "content",  as: :wysihtml5, commands: [:bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :video, :source ], blocks: [:h1, :h2, :h3, :h4, :h5, :h6, :p]
			input :image, hint: f.post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")

		end

		actions
	end

end

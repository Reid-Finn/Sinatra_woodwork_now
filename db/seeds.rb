User.destroy_all
Plan.destroy_all


puts "seeding database..."


Plan.create(title: "Chair", instructions: "Carefully assemble pieces with glue, let dry and enjoy.", image: "https://images-na.ssl-images-amazon.com/images/I/81J5r9dANGL._SL1500_.jpg")
Plan.create(title: "Table", instructions: "Take four wooden legs and nail them to the top. Works best with a chair.", image: "https://www.renderhub.com/arq-lugo/wooden-table-bjursnas-ikea-low-poly/wooden-table-bjursnas-ikea-low-poly-01.jpg")
Plan.create(title: "Bookshelf", instructions: "Attach two long pieces of wood with two smaller pieces of wood with nails. Attach even smaller pieces of wood between the two long pieces to make shelves. Books sold seperately.", image: "https://fourcornerfurniture.com/wp/wp-content/uploads/2018/08/Rustic-Wooden-Bookshelf-With-Adjustable-Shelves-1.jpg")
Plan.create(title: "End Table", instructions: "See Table instructions, just less wood.", image: "https://www.enasco.com/medias/Z40996-main-530Wx530H?context=bWFzdGVyfHJvb3R8MjY1NjJ8aW1hZ2UvanBlZ3xoZDIvaDMwLzg4MzA5NjMwODk0MzguanBnfDI5ZjhiODQ3Y2ZkMzE4NTNkZjYyYThkYWZkNTQxOGE5MjVmNzYyYWFjZjdiYjM4ZmMxYTM2YzkwOGNlMjk0NTI")
Plan.create(title: "Coffee Table", instructions: "Make a table, but cut the wood for the legs shorter.", image: "https://images-na.ssl-images-amazon.com/images/I/51u1nUcwCUL._AC_SX522_.jpg")
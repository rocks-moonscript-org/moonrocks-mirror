package = "h5tk"
version = "2.3-1"
source = {
	url = "git://github.com/forflo/h5tk",
	tag = "v4.3"
}

description = {
	summary = "H5tk - An erector like html5 code generation toolkit for lua",
	detailed = [[
		This module can be used to generate (formatted and unformatted) html5 code.
		It is very similar to the erector framework:
		(http://erector.rubyforge.org/).

		Just imagine you would want to emit html code
		that represents a table. 
		With h5tk it's as simple as the following snippet:

	    h5tk.table{
            h5tk.tr{
				h5tk.th{"First"},
				h5tk.th{"Second"},
                h5tk.th{"3"},
                h5tk.th{"4"}
            },
    
            h5tk.tr{
                h5tk.td{"foo1"},
                h5tk.td{"foo2"},
                h5tk.td{"boo3"},
                h5tk.td{"foo4"}
            }
        }

		This would genreate the following code:
		<table>
			<tr>
				<th> First <th> <th> Second <th> <th> 3 <th> <th> 4 <th>
			</tr>
			<tr>
				<th> foo1 <th> <th> foo2 <th> <th> boo3 <th> <th> foo4 <th>
			</tr>
		</table>

		For a more complex example, consider this:

		io.write("<!DOCTYPE html>")
		io.write(h5tk.html{
			h5tk.head{
				h5tk.style{
					"table, th, td { border: 1px solid black; }"
				},
		
				h5tk.title{
					"Geiler ",
					"Titel!!"
				}
			},
			
			h5tk.body{
				h5tk.p{
					style = "bold!"
				},
				
				h5tk.table{
					h5tk.tr{
						(function () 
							local t = {}
							for i=1,2 do
								t[i] = h5tk.th{"foo" .. i}
							end
							return t
						end),
						h5tk.th{"foo"},
						h5tk.th{"boo"}
					},
					
					h5tk.tr{
						h5tk.td{"foo1"},
						h5tk.th{"foo2"},
						h5tk.th{"boo3"},
						h5tk.td{"boo4"}
					}
				}
			}
		})

		The above code emits a valid html5 page and could be used
		as cgi script for dynamic webcontent.
		
	]],
	homepage = "http://www.github.com/forflo/h5tk",
	license = "GPL"
}

dependencies = {
	"lua ~> 5"
}

build = {
	type = "builtin",
	modules = {
		h5tk = "h5tk.lua"
	}
}

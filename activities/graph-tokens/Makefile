all:
	openscad -o out/hollow_token_frame.stl -D 'make="token_frame"; is_inner_hollow=true;' token.scad
	openscad -o out/hollow_token_plate.stl -D 'make="token_plate"; is_inner_hollow=true;' token.scad
	openscad -o out/token_frame.stl -D 'make="token_frame"; is_inner_hollow=false;' token.scad
	openscad -o out/token_plate.stl -D 'make="token_plate"; is_inner_hollow=false;' token.scad

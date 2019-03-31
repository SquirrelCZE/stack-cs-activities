# Graph tokens

This guide describes how to construct physical tokens that represent vertices of a graph or nodes of trees. The tokens are two-sided and contain magnets that allow them to be pinned on a whiteboard, instead of drawing them. They are applicable to many different educational activities.

The tokens allow practicing Red-black trees. One side has a black ring, the other red. This allows easier, more explicit visualization of the tree and faster swapping of nodes or changing their colors. The edges between nodes must be drawn on the whiteboard, but they are usually not redrawn often.

Example task:
"Build a Red-black tree, with a postupny insertion of nodes with values: 12,55,9,18,2,15,13,19 and 17. After that, remove nodes 9,5, 15 and twelve. Finally, try to execute 'search' for nodes 17 and 9." 

| Parameters:        |                                     |
| -----------------: | :---------------------------------- |
| **Duration:**      | 15 minutes                          |
| **Participants:**  | not limited                         |
| **Instructors:**   | 1 teachers                          |
| **Class:**         | whiteboard required                 |
| **Resources:**     | tokens                              |
| **Prerequisites:** | basic theory about Red-black trees  |

## Learning outcomes
* Goal of example task:
    * Practice insertion and removal of nodes from RB-Tree.
    * It is expected that students have basic knowledge, goal is to practice it.
    * Activity expects that entire class solves the problem on whiteboard (where instructor follows instructions from the class)
        * Of course alternative is, that students solve this in groups, but that is more time consuming.
* Goal of tokens itself:
    * Provided much more explicit visualization of the nodes/vertexes of trees/graphs.
    * Based on predpoklad, that key step to understand these topics is the abillity to visualize it
    * Reduces time required to draw things on the whiteboard.

## Setup and preparation

* Nodes must be 3D printed (any 3D printer will suffice). It is easier to buy fillament with colors you need, however steps to color the tokens are provided below. For one token:
    * 2x token.stl (rims of the tokens that contains magnets)
    * 2x token_plate.stl (plates on which user draws)
    * TODO aren't these missing files or something?
* Token plates can alternatively be made from plexisklo, which simplifies the task a lot. However you need a way to cut the plates!
    * 2x 60mm diameter tokens, out of white plexisklo.
    * Cutted on laser...
* Model is designed for magnets of dimensions: 10x2x3 mm
* The model is designed in OpenSCAD, configuration parameters should be documented, feel free to modify the file and customize the tokens. (token.scad)
    * TODO: find good basic scad tutorial
* Assembly guide:
    * Glue the magnets inside the 3D models.
        * There are more positions for magnets, that is necessary. Do not use all of them, just what is necessary in your case.
    * In case you need it, paint the tokens itself, use these layers (used canned sprays):
        * base for plastic
        * filler 
            * 3D printed parts have visible layers on the surface, this reduces the effect a lot.
        * color
        * lacquer (if you want the color to be durable)
    * Paint the token plates (this is necessary for the surface to work same way as whiteboard):
        * **This is not necessary if you have token plates from pelixsklo!**
        * base for plastic
        * 4-5 thin layers of filler
        * use sandpaper to make the surface perfectly level
        * 4-5 thin layers of filler
        * sandpaper again
        * color
        * lacquer 
    * Glue the halfs together (or you can heat the edges of the halfs, so they melt together)
    * Glue the token plates.

## Activity overview
( This is relevant to the example task )
* Explain the task to the students
* Do 1-3 insertions of the nodes. (To give example of what is expected)
* Let the students give you next steps
    * They do it automatically, in that case only make sure that multiple students do so.
    * You can vyvolat je in some way.
        *Note: I like to learn some interesting sequences of numbers and use that, ie. Fibonacci sequence
* Repeat the same with removal and search, always do an example of the operation!

## Tips and tricks

* When visualizing the tree or graph, slow down if the students need to redraw the tree on their papers.
* When students are writing something down, they are not paying attention.
* Students will avoid writing every sinhle change done on the table, usually they prefer to write only changes necessary for correct result.
    * This implies, that if you know, that changes done on the tree do not result in correct result, you do not need to wait. 

## Related material

* There are no known relevant sources, however they are welcome.

## Other use cases

### BFS/DFS

Prepare a graph and use only the black side of the tokens to show the graph:

* With BFS: flip tokens which are _in the queue_ to the red side.
* With DFS: flip tokens which are _in the stack_ to the red side.

### Dijsktra's algorithm

You can use the tokens for Dijsktra's algorithm of shortest path between vertices 's' and 't'. Use the black side of the nodes to represent the graph and draw the distance 'g' in the nodes. Once you find the path, flip all vertices on the path to the red side. This should give a nice explicit visualization of the path.

## Gallery

![Render of token](token.png?raw=true)
![Pic1](pics/token-construction.JPG?raw=true)
![Pic2](pics/token-red.JPG?raw=true)
![Pic3](pics/token-black.JPG?raw=true)
![Pic4](pics/token-marked.JPG?raw=true)

## Author

Jan Koniarik, 2019

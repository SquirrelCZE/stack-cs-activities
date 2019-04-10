# Graph tokens

This guide describes how to construct physical tokens that represent vertices of a graph or nodes of a tree.
The tokens are plastic _circles_, with an area to draw on in the middle, magnets in the outter ring and symmetric design. (They are double-sided.)
The outter rings can be made with different colors which gives them specific meaning.
Because of the magnets, they are attacheable to the whiteboard.

The tokens were designed to practice red-black trees.
For that case, one side has a black ring, the other red.
This allows for easier, more explicit visualization of the tree and faster swapping of nodes or changing their colors. (As you only move the tokens on the whiteboard.)
The edges between nodes must be drawn on the whiteboard, but they are usually not redrawn often.

Example task:
_Build a Red-black tree, with a gradual insertion of nodes with values: 12,55,9,18,2,15,13,19 and 17. After that, remove nodes 9,5, 15 and 12. Finally, try to execute 'search' for nodes 17 and 9._

| Parameters:        |                                     |
| -----------------: | :---------------------------------- |
| **Duration:**      | 15 minutes                          |
| **Participants:**  | not limited                         |
| **Instructors:**   | 1 instructor                        |
| **Class:**         | whiteboard required                 |
| **Resources:**     | tokens                              |
| **Prerequisites:** | basic theory about red-black trees  |

## Learning outcomes

* Goal of example task:
    * Practice insertion and removal of nodes from red-black tree.
    * It is expected that students have basic knowledge, goal is to practice it.
    * Activity expects that entire class solves the problem on whiteboard. (Where instructor follows instructions from the class.)
        * Of course alternative is, that students solve this in groups, but that is more time consuming and without a need for the tokens.

* Goal of tokens itself:
    * Provided much more explicit visualization of the nodes/vertexes of trees/graphs.
    * Based on an assumption, that key step to understand these topics is the abillity to visualize it.
    * Reduces time required to draw things on the whiteboard.

## Setup and preparation

* Token must be 3D printed. (Any 3D printer will suffice.) It is easier to buy fillament with colors you need, however steps to color the tokens are provided below. For one token:
    * 2x out/token_frame.stl (Rims of the tokens that contains magnets.)
    * 2x out/token_plate.stl (Plates on which user draws.)
* Token plates can be made from plexiglass, which simplifies the task a lot.
    * 2x 60mm diameter tokens, out of 1mm white plexiglass. (Not transparent plexiglass!)
        * Laser cutter can do this.
* Alternative to basic design, is a version where frames are hollow, and the middle part of token is either 3mm thick printed token_plate or 3mm plexiglass.
    * Use stl parts with hollow prefix.
* Model is designed for cube magnets of dimensions: 10x2x3 mm
* It is designed in OpenSCAD, configuration parameters should be documented. Feel free to modify the file and customize the tokens. (token.scad)
    * Basic OpenSCAD tutorial: <https://en.wikibooks.org/wiki/OpenSCAD_User_Manual>
* Assembly guide:
    * Glue the magnets inside the token frame.
        * There are more positions for magnets, that is necessary. Do not use all of them, try how many you need for the token to hold on the whiteboard.
        * The strength of the magnets can wary, hence you need to adjust this.
    * In case you need it, paint the tokens itself, use these layers (used canned sprays):
        * Base for plastic.
        * Filler.
            * 3D printed parts have visible layers on the surface, this reduces the effect a lot.
        * Color.
        * Lacquer. (If you want the color to be durable.)
    * Paint the printed token plates (this is necessary for the surface to work same way as whiteboard):
        * **This is not necessary if you have token plates from plexiglass!**
        * base for plastic
        * 4-5 thin layers of filler
        * use sandpaper to make the surface perfectly level
        * 4-5 thin layers of filler
        * sandpaper again
        * color
        * lacquer 
    * In case of plexiglass token plates, postprocessing is not necessary.
    * Glue the halfs together. (Alternatively, you can heat the edges of the halfs, so they melt together.)
    * Glue the token plates.

## Activity overview
( This is relevant only to the example task. )

* Explain the task to the students
* Do 1-3 insertions of the nodes. (To give example of what is expected.)
* Let the students give you next steps.
* Repeat the same with removal and search, always do an example of the operation!

## Tips and tricks

* When visualizing the tree or graph, slow down if the students need to redraw the tree on their papers.
    * When students are writing something down, they are not paying attention.
* Students will avoid writing every single change done on the table. They prefer to write only changes necessary for correct result.
    * This implies, that if you know, that changes done on the tree do not result in correct result, you do not need to wait. 

## Related material

* There are no known relevant sources, however they are welcome.

## Other use cases

### BFS/DFS

Prepare a graph and use only the black side of the tokens to show the graph:

* With BFS: flip tokens which are _in the queue_ to the red side.
* With DFS: flip tokens which are _in the stack_ to the red side.

### Dijsktra's algorithm

You can use the tokens for Dijsktra's algorithm of shortest path between vertices 's' and 't'.
Use the black side of the nodes to represent the graph and draw the distance 'g' in the nodes.
Once you find the path, flip all vertices on the path to the red side.
This should give a nice explicit visualization of the path.

## Gallery

![Render of token](token.png?raw=true)
![Pic2](pics/token-red.JPG?raw=true)
<figure>
  <img src="pics/token-tree.JPG?raw=true" alt="rb tree"/>
  <figcaption>Is this correct red-black tree?</figcaption>
</figure>
## Author

Jan Koniarik, 2019

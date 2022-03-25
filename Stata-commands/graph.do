*to make a graph
twoway (line price numcenter1distancen)
*to save
graph save "Graph" "/Users/malaikaaggarwal/Desktop/Graph.gph"
graph export "/Users/malaikaaggarwal/Desktop/Graph.pdf", as(pdf) name("Graph")

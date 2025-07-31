library(visNetwork)
library(tidyverse)

nodes <- read_csv("data/nodes_ESU_network_2025.csv")
edges <- read_csv("data/edges_ESU_network_2025.csv")

visNetwork(nodes, 
           edges,
           main = "Network of travellers",
           height = "500px", 
           width = "100%") %>% 
  visOptions(highlightNearest = TRUE, nodesIdSelection = TRUE) %>% 
  visIgraphLayout(layout = "layout_on_sphere") %>%
  visOptions(selectedBy = "group") 


# Menginstall packages
install.packages("igraph")
install.packages("igraphdata")

# Mengaktifkan packages
library(igraph)
library(igraphdata)

# Import data
data(karate)

# Tampilkan data
get.edgelist(karate, names = TRUE)

# Visualisasikan Jaringan
plot(karate, vertex.color = 'white')

# Menghitung Degree Centrality
degree_centrality <- degree(karate)
print(degree_centrality)

# Menghitung Betweenness Centrality
betweenness_centrality <- betweenness(karate)
print(betweenness_centrality)

# Menghitung Closeness Centrality
closeness_centrality <- closeness(karate)
print(closeness_centrality)

# Menghitung Eigenvector Centrality
eigenvector_centrality <- eigen_centrality(karate)
print(eigenvector_centrality)

# Visualisasikan Jaringan Berdasarkan Nilai Degree Centrality
plot(karate, vertex.color = 'white', vertex.size = degree_centrality)

# Mengukur Diameter
diameter(karate, directed = TRUE)

# Mengukur Average Path Length
average.path.length(karate, directed = TRUE)

# Mengukur Density
edge_density(karate)

# Mencari Komunitas
community <- cluster_walktrap(karate)
print(community)

# Menghitung Nilai Modularity
modularity <- modularity(karate, membership(community))
print(modularity)

# Visualisasikan Jaringan Berdasarkan Modularitas
plot(karate, vertex.color = community$groups, vertex.size = degree_centrality)



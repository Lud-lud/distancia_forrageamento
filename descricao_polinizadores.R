media_ITD <- round(mean(Tabela_dist_for_spp$ITD_mm),2)
dp_ITD <- round(sd(Tabela_dist_for_spp$ITD_mm),2)
mediana_ITD <- median(Tabela_dist_for_spp$ITD_mm)
min_ITD <- min(Tabela_dist_for_spp$ITD_mm)
max_ITD <- max(Tabela_dist_for_spp$ITD_mm)

media_dist_km <- round(mean(Tabela_dist_for_spp$fordist_km_GrMfd),3)
dp_dist_km <- round(sd(Tabela_dist_for_spp$fordist_km_GrMfd),3)
mediana_dist_km <- median(Tabela_dist_for_spp$fordist_km_GrMfd)
min_dist <- round(min(Tabela_dist_for_spp$fordist_km_GrMfd),3)
max_dist <- round(max(Tabela_dist_for_spp$fordist_km_GrMfd),3)


boxplot(Tabela_dist_for_spp$ITD_mm)
boxplot(Tabela_dist_for_spp$fordist_km_GrMfd)




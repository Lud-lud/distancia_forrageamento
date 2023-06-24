#install.packages("pollimetry")

library("pollimetry")
library(readr)

ITD_orange_pollin <- read_csv("ITD_orange_pollin.csv")

for_distances <- foragedist(ITD_orange_pollin$ITD_cm, type="GreenleafAll")
#a documentação deve ter errado ao dizer que o ITD deve estar em centímetros, pois os valores
#resultantes ficam muito pequenos

for_distances2 <- as.data.frame(foragedist(ITD_orange_pollin$ITD_mm, type="GreenleafAll"))
#usando o ITD em mm, conseguimos valores resultantes mais próximos da realidade

Tabela_dist_for_spp <- as.data.frame(cbind(ITD_orange_pollin$c("spp_name"), for_distances2$GrMfd))

Tabela_dist_for_spp <- cbind(Tabela_dist_for_spp, ITD_orange_pollin$ITD_mm)


Tabela_dist_for_spp$V2 <- round(as.numeric(Tabela_dist_for_spp$V2), 3)

colnames(Tabela_dist_for_spp)[1:3] <- c("orange_pollin", "fordist_km_GrMfd", "ITD_mm")

write.csv(Tabela_dist_for_spp, file="Tabela_dist_for_spp.csv", row.names = FALSE)

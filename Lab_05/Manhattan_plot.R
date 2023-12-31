
setwd("~/fall2023/Lab_05")
install.packages("qqman")
library("qqman")  
results_log <- read.table("logistic_results.assoc_2.logistic", head=TRUE)
jpeg("Logistic_manhattan.jpeg")
manhattan(results_log,chr="CHR",bp="BP",p="P",snp="SNP", main = "Manhattan plot: logistic")
dev.off()

results_as <- read.table("assoc_results.assoc", head=TRUE)
jpeg("assoc_manhattan.jpeg")
manhattan(results_as,chr="CHR",bp="BP",p="P",snp="SNP", main = "Manhattan plot: assoc")
dev.off()  





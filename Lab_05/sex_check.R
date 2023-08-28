sex_check <- read.table("plink.sexcheck", header=T,as.is=T)

pdf("sex_check.pdf")
hist(sex_check[,6],main="Homozygosity of X chromosome", xlab="F")
dev.off()

pdf("Y_check.pdf")
male=subset(sex_check, sex_check$PEDSEX==1)
hist(male[,6],main="Y",xlab="F")
dev.off()

pdf("X_check.pdf")
female=subset(sex_check, sex_check$PEDSEX==2)
hist(female[,6],main="X",xlab="F")
dev.off()


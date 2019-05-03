#' ---
#' title: "Class 5: R Graphics"
#' author: "Barry Grant"
#' date: "Fri Apr 19 13:25:25 2019"
#' output: github_document
#' ---

# Class 5 R graphics and plots

# get the data in
weight <- read.table("bimm143_05_rstats/weight_chart.txt",
                     header = TRUE)

# plot a scaterplot of age vs weight
plot(weight$Age, weight$Weight, xlab="Age (mounts)",
     ylab="Weight (kg)", pch=18, col="blue", type="o" )

# 2B. Barplot
feat <- read.table("bimm143_05_rstats/feature_counts.txt",
                   header=TRUE, sep="\t")

# I could also use read.delim() function here like this
read.delim("bimm143_05_rstats/feature_counts.txt")


barplot(feat$Count, names.arg = feat$Feature, las=2,
        horiz = TRUE)


# my labels are cliped I need to change the margins
old.par <- par()$mar

par(mar=c(5,11,1,1))
barplot(feat$Count, names.arg = feat$Feature, las=2,
        horiz = TRUE)

plot(1:10, typ="l")

par(mar=old.par)
plot(1:10, typ="l")


# Section 3

mf <- read.table("bimm143_05_rstats/male_female_counts.txt",
                 header=TRUE, sep="\t")

barplot(mf$Count, names.arg=mf$Sample, las=2,
        col=c("red","blue") )

barplot(mf$Count, names.arg=mf$Sample, las=2,
        col=4 )

colours()

barplot(mf$Count, names.arg=mf$Sample, las=2,
        col=1:4 )

barplot(mf$Count, names.arg=mf$Sample, las=2,
        col=rainbow(10) )

rainbow(3)


# Section 3B.

genes <- read.delim("bimm143_05_rstats/up_down_expression.txt")

# How many genes are there in this dataset
nrow(genes)
ncol(genes)

# How many up/down?
table(genes$State)

# Plot using default colors
plot(genes$Condition1, genes$Condition2, col=genes$State)

# Change the color palette
old.palette <- palette()
palette( c("blue", "gray", "red") )
plot(genes$Condition1, genes$Condition2, col=genes$State,
     xlab="Condition 1", ylab="Condition 2",
     main="Some title")










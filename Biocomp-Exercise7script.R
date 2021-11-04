#######Biocomp-Exercise7######
######Q1#####
#Write code that replicates the head function in bash
#To subset our vector, we need square brackets
#We are going to take the top 20 rows from a larger file named "data"
toptwenty<-data[1:20,]


#########Q2#####
#Load iris.csv file
iris<-read.table("iris.csv", header=TRUE, sep= ",")

###Print the last two rows in the last two columns. 
#150 total rows and 5 total columns. So print rows 149 and 150 from columns 4 and 5
iris[149:150,4:5]

###Get the number of observations for each species included in the data set
#First see how many different species we have and what they are
unique(iris$Species)

#We see that we have 3 different species (setosa, versicolor, and virginica)
nrow(iris[iris$Species=="setosa",])
nrow(iris[iris$Species=="versicolor",])
nrow(iris[iris$Species=="virginica",])

###Get rows with Sepal.Width >3.5
#Sepal.Width is our second column, so we want to sort by [,2]
orgSepalW<-iris[iris[,2]>3.5,]

###Write the data for the species setosa to a .csv file names "setosa.csv"
setosa<-iris[iris$Species=="setosa",]
write.table(x=setosa,file = "setosa.csv", row.names = FALSE, col.names=TRUE, sep =",")

###Calculate the mean, minimum, and maximum petal length from virginica
virginica<-iris[iris$Species=="virginica",]
#Petal length is the 3rd column
virginicaPetalLength<-virginica[,3]
mean(virginicaPetalLength)
min(virginicaPetalLength)
max(virginicaPetalLength)

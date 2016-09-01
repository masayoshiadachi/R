n <- 300
TestData <- data.frame(index1 = rep(c("Intern", "Group", "Career"), each = 9, length = n),
                       index2 = paste0("views", sample(1:10, 30, replace = TRUE)),
                       data = sample(5:30, n, replace = TRUE))


Ni <- 100
Ng <- 700
Nc <- 200

Si <- c(rep("A",Ni*0.4), rep("B", Ni*0.3), rep("C", Ni*0.2), rep("D", Ni*0.1))
Sg <- c(rep("A",Ng*0.2), rep("B", Ng*0.3), rep("C", Ng*0.3), rep("D", Ng*0.2))
Sc <- c(rep("A",Nc*0.2), rep("B", Nc*0.6), rep("C", Nc*0.2), rep("D", Nc*0.0))

TestData <- data.frame(index1=c(rep("Intern", Ni), rep("Group", Ng), rep("Career", Nc)),
                       index2=c(Si, Sg, Sc),
                       data=rep(1, Ni+Ng+Nc))

treemap(TestData, index = names(TestData)[1:(ncol(TestData)-1)], title = "",
        vSize = "data", align.labels = list(c("center", "top"), c("center", "center")), 
        position.legend = "bottom")

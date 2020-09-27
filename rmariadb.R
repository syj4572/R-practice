
library(rJava)
library(RJDBC)
library(DBI)

drv <- JDBC(driverClass = 'org.mariadb.jdbc.Driver', 
            'mariadb-java-client-2.6.2.jar')

conn <- dbConnect(drv, 'jdbc:mariadb://127.0.0.1:3306/work', 'scott', 'tiger')


# (1)
head(iris)
str(iris)
iris[1:6,]

# (2)
names(iris) <- c('slength', 'swidth', 'plength', 'pwidth', 'species')
print(iris)

# (3)

dbSendUpdate(conn, "drop table iris")

dbWriteTable(conn, "iris", iris)
dbReadTable(conn, "iris")

# (4)
iris_all <- dbGetQuery(conn, "SELECT * FROM iris")
dbWriteTable(conn, "iris_all", iris_all)
dbReadTable(conn, "iris_all")

# (5)
setosa = "select * from iris where species = 'setosa' "
iris_setosa <- dbGetQuery(conn,setosa)
dbWriteTable(conn, "iris_setosa", iris_setosa)
dbReadTable(conn, "iris_setosa")

# (6)
versicolor = "select * from iris where species = 'versicolor' "
iris_versicolor  <- dbGetQuery(conn,versicolor)
dbWriteTable(conn, "iris_versicolor", iris_versicolor)
dbReadTable(conn, "iris_versicolor")

# (7)
virginica = "select * from iris where species = 'virginica' "
iris_virginica  <- dbGetQuery(conn,virginica)
dbWriteTable(conn, "iris_virginica", iris_virginica)
dbReadTable(conn, "iris_virginica")

# (8)
move <- read.table("c:/Rexam/data/product_click.log")
productdf <- data.frame(move)
str(productdf)

# (9)
names(productdf)
names(productdf) <- c('clicktime', 'pid')

# (10)
str(productdf)
dbWriteTable(conn, "productlog", productdf)
dbReadTable(conn, "productlog")

# (11)
idselect = "select * from productlog where pid = 'p003' "
idselect  <- dbGetQuery(conn,idselect)
dbWriteTable(conn, "p003", idselect)
dbReadTable(conn, "p003")

# (12)
move2 <- read.csv("c:/Rexam/data/emp.csv")
emp <- data.frame(move2)
str(emp)

# (13)
dbWriteTable(conn, "emp", emp)
dbReadTable(conn, "emp")

# (14)
sallist = "SELECT * FROM emp order by sal desc"
result1 <- dbGetQuery(conn, sallist)
dbWriteTable(conn, "result1", result1)
dbReadTable(conn, "result1")

# (15)
hiredatelist = "SELECT * FROM emp order by hiredate asc"
result2 <- dbGetQuery(conn, hiredatelist)
dbWriteTable(conn, "result2", result2)
dbReadTable(conn, "result2")

# (16)
howsal = "SELECT * FROM emp where sal >= 2000"
result3 <- dbGetQuery(conn, howsal)
dbWriteTable(conn, "result3", result3)
dbReadTable(conn, "result3")

# (17)
howsal2 = "SELECT * FROM emp where sal >= 2000 and sal < 3000"
result4 <- dbGetQuery(conn, howsal)
dbWriteTable(conn, "result4", result4)
dbReadTable(conn, "result4")







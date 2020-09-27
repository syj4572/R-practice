library(dplyr)

library(rJava)
library(RJDBC)
library(DBI)

drv <- JDBC(driverClass = 'org.mariadb.jdbc.Driver', 
            'mariadb-java-client-2.6.2.jar')

conn <- dbConnect(drv, 'jdbc:mariadb://127.0.0.1:3306/work', 'scott', 'tiger')

# 문제 0

emp_table = "select * from emp"
emp_table <- dbGetQuery(conn, emp_table)
num <- as.numeric(nrow(emp_table))
str(num)

for (i in 1:num){
  if(emp_table$comm[i] < 0){
    emp_table$comm[i] <- NA
  }
}

emp_table$comm

# 문제 1

emp_table %>% filter(job == 'MANAGER')

# 문제 2

emp_table %>% select(empno, ename, sal)

# 문제 3

emp_table %>% select(-empno)

# 문제 4

emp_table %>% select(ename, sal)

# 문제 5

emp_table %>% select(job, deptno)

# 문제 6

sal_select <- emp_table %>% filter(sal <= 3000 & sal >= 1000)
sal_select %>% select(ename, sal, deptno)

# 문제 7

jot_select <- emp_table %>% filter(job != 'ANALYST')
jot_select %>% select(ename, job, sal)

# 문제 8

jot_select2 <- emp_table %>% filter(job == 'ANALYST' | job == 'SALESMAN')
jot_select2 <- emp_table %>% filter(job %in% c('ANALYST','SALESMAN'))
jot_select2 %>% select(ename, job)

# 문제 9

job_sal <- emp_table %>% select(job, sal)


ANALYST <- job_sal %>% filter(job == 'ANALYST')
CLERK <- job_sal %>% filter(job == 'CLERK')
MANAGER <- job_sal %>% filter(job == 'MANAGER')
PRESIDENT <- job_sal %>% filter(job == 'PRESIDENT')
SALESMAN <- job_sal %>% filter(job == 'SALESMAN')

sum(ANALYST$sal)   
sum(CLERK$sal)   
sum(MANAGER$sal)   
sum(PRESIDENT$sal)   
sum(SALESMAN$sal)   

# 문제 10 

emp_sal <- emp_table %>% select(ename, sal)
emp_sal <- emp_sal %>% arrange(sal)
emp_sal

# 문제 11

emp_sal <- emp_sal %>% arrange(desc(sal))
emp_sal <- emp_sal %>% select(ename, sal) %>% head(1)
emp_sal

# 문제 12 -> 질문

salary <- emp_table$sal
emp_table <- emp_table %>% select(-sal)
empnew <- emp_table %>% mutate(salary) 

commrate  <- empnew$comm
empnew <- empnew %>% select(-comm)
empnew <- empnew %>% mutate(commrate) 

# 문제 13 -> 질문

manywork <- arrange(empnew %>% group_by(deptno) %>% summarise(n = n()))
manywork %>% arrange(desc(n)) %>% head(1)

# 문제 14

count <- as.numeric(length(emp_table$ename))

enamelength <- c()

for (i in 1:count) {
  enamelength <- append(enamelength, (nchar(emp_table$ename[i])))
}

enamelength

emp_table <- emp_table %>% mutate(enamelength) 

emp_table <- emp_table %>% select(ename, enamelength)

emp_table <- emp_table %>% arrange(enamelength)

emp_table

# 문제 15

emp_table <- emp_table %>% filter(comm != 'NA')
emp_table %>% tally()



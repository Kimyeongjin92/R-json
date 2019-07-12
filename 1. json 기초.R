##                                                 
## ==============================================================================================
##                              *** JSON R에서 사용하기. ***
## ==============================================================================================


# 0. toJSON - fromJSON
install.packages('jsonlite')
library(jsonlite)

pi
json_pi <- toJSON(pi,digits=3)
fromJSON(json_pi)

city <- '대전'
json_city <- toJSON(city)
fromJSON(json_city)

subject <- c('국어','영어','수학')
json_subject <- toJSON(subject)
fromJSON(json_subject)

# 데이터프레임
name <- c("TEST")
age  <- c(25)
sex  <- c("F")
address <- c("Seoul")
hobby  <- c("Basketball")
person <- data.frame(name, age, sex, address, hobby)
names(person) <- c('Name','Age','sex','adress','hobby')
str(person)

json_person <- toJSON(person)
prettify(json_person)

# ====================================================
df_json_person <- fromJSON(json_person)
str(df_json_person)

# 두개의 데이터프레임의 데이터 값이 같은지 비교
all(person == df_json_person)

# cars 내장 데이터로 테스트
cars
json_cars    <- toJSON(cars)
df_json_cars <- fromJSON(json_cars)
all(cars == df_json_cars)

# 파일 읽기
wiki_person <- fromJSON('person.json')

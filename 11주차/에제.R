# iris 데이터를 불러오기
iris <- iris

# NA 값 생성
iris[c(2, 5), 1] <- NA  # 2, 5행의 1번째 변수 (Sepal.Length)
iris[c(1, 5, 10), 3] <- NA  # 1, 5, 10행의 3번째 변수 (Petal.Length)

# 결측치 확인
print("결측치 확인:")
print(is.na(iris))  # NA 여부 확인
print(colSums(is.na(iris)))  # 각 변수별 결측치 개수

# 결측치 제거 (Sepal.Length, Petal.Length에서 NA가 있는 관측치 삭제)
cleaned_iris <- iris[complete.cases(iris[, c("Sepal.Length", "Petal.Length")]), ]

# 결측치가 제거된 데이터 확인
print("결측치가 제거된 데이터:")
print(cleaned_iris)

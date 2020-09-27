
url<- "http://unico2013.dothome.co.kr/crawling/exercise_bs.html"
text <- read_html(url)
text

# 1번 문제

num1 <- html_nodes(text, "h1")
num1
show_num1 <- html_text(num1)
show_num1 # <h1> 태그의 컨텐츠

# 2번 문제

num2 <- html_nodes(text, "a")
num2
show_num2 <- html_text(num2)
show_num2 # <a> 태그의 컨텐츠
show_num2.1 <- html_attr(num2, "href")
show_num2.1 # href 속성값

# 3번 문제

num3 <- html_nodes(text, "img")
num3
show_num3 <- html_attr(num3, "src")
show_num3 # <img> 태그의 src 속성값

# 4번 문제

num4 <- html_nodes(text, "h2:nth-of-type(1)")
num4
show_num4 <- html_text(num4)
show_num4  # 첫번째 <h2> 태그의 컨텐츠

# 5번 문제

num5 <- html_nodes(text, "ul > [style$=green]")
num5
show_num5 <- html_text(num5)
show_num5
num5 <- html_nodes(text, "ul > * [style='color:green']")
num5
show_num5 <- html_text(num5)
show_num5 # green 으로 끝나는 태그의 컨텐츠

# 6번 문제

num6 <- html_nodes(text, "h2:nth-of-type(2)")
num6
show_num6 <- html_text(num6)
show_num6 # 두번째 <h2> 태그의 컨텐츠

# 7번 문제

num7 <- html_nodes(text, "ol > *")
num7
show_num7 <- html_text(num7)
show_num7 # <ol> 태그의 모든 자식 태그들의 컨텐츠

# 8번 문제

num8 <- html_nodes(text, "table *")
num8
show_num8 <- html_text(num8)
show_num8 # <table> 태그의 모든 자손 태그들의 컨텐츠 

# 9번 문제

#num9 <- html_nodes(text, ".name th") 
num9 <- html_nodes(text, "tr[class=name]")
num9
show_num9 <- html_text(num9)
show_num9 # name이라는 클래스 속성을 갖는 <tr> 태그의 컨텐츠

# 10번 문제

num10 <- html_nodes(text, "#target")
num10 <- html_nodes(text, "td#target")
num10
show_num10 <- html_text(num10)
show_num10 # target이라는 아이디 속성을 갖는 <td> 태그의 컨텐츠







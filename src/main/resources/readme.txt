

1、创建项目时注意选择Packaging 为 war 确保生成 ServletInitializer.java，可以用于外部容器运行（tomcat ...）。

2、测试访问路径
http://localhost:8180/springboot/test?name=hong
http://localhost:8180/springboot/api/city?cityName=%E5%85%B0%E6%BA%AA%E5%B8%82
http://localhost:8180/springboot/api/citylistmap?cityName=wanlin
http://134.175.38.196:8080/springboot2020003/test?name=hong
http://134.175.38.196:8080/springboot2020003/api/citylistmap?cityName=wanlin


3、出现 Push rejected: Push to origin/master was rejected 可能是远程创库与本地存在差异， 当前项目目录下 打开图形界面 git Bash Here 执行 git pull origin master --allow-unrelated-histories 再次push即可












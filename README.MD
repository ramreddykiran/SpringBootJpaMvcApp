Spring Boot Web application with Spring MVC

technologies : java 11, Gradle, Spring boot, JSP, Spring MVC, JPA, H2 inline DB

--Navigate to application location on command prompt:
Run "gradle clean eclipse" if you face any dependencies issues with tomcat-jasper jar

--application.properties under src/main/java takes care of views (JSP)

--Run the application and access on browser 
  http://localhost:8080/home

-- H2 DB : application.properties
	jdbc:h2:mem:local  here local is the DB name . 
	  
	After starting the application, login to H2 DB from browser
	
	http://localhost:8080/h2-console 
		JDBC URL : jdbc:h2:mem:local
		UserName : sa
	do not change username and password (no password needed) and connect
	
-- you can find product table. data.sql under src/main/resources loads the data in DB
	select * from product; 

-- 	 from  http://localhost:8080/home  , we can navigate to products page
	
	
	




	
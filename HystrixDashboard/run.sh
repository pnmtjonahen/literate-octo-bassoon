gnome-terminal -e "mvn spring-boot:run -Dserver.port=8085 -Dspring.profiles.active=diner"
gnome-terminal -e "mvn spring-boot:run -Dserver.port=8086 -Dspring.profiles.active=kitchen"
gnome-terminal -e "mvn spring-boot:run -Dserver.port=8087 -Dspring.profiles.active=bar"

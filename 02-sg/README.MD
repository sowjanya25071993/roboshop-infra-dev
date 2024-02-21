### sg explanation
* module for vpn using default vpc
* module for mongodb , redis , mysql , rabbitmq , catalogue , cart , shipping , user , payment , web , using roboshop vpc
### application load balancers
* module for app_alb using roboshop vpc and app_alb is private
* module for web_alb using roboshop vpc and web_alb is public
### port numbers
* app_alb --- http ---- private ----- 80
* web_alb ----- https ---- public 
* web_alb should accept traffic from 443 from internet
* application runs on port number 8080
* mongodb port number 27017
* redis port number 6379
* mysql port number 3306
* rabbitmq port number 5672
* catalogue port number 8080
### connections through app_alb
* cart can only connect catalogue through app_alb
* app_alb accepting connections from all components on port number 80
### security group rules
* app_alb should accept connections from vpn on port number 80
* app_alb should accept connections from web on port number 80
* app_alb should accept connections from cart on port number 80
* app_alb should accept connections from shipping on port number 80
* app_alb should accept connections from user on port number 80
* app_alb should accept connections from catalogue on port number 80
* app_alb should accept connections from payment on port number 80
* web_alb should accept connections from internet on port number 443
* home network should accept connections from vpn on  from port number 0 to port number 65535
* mongodb should accept connections from vpn on port number 22
* mongodb should accept connections from catalogue on port number 27017
* mongodb should accept connections from user on port number 27017
* redis should accept connections from vpn on port number 22
* redis should accept connections from user on port number 6379
* redis should accept connections from cart on port number 6379
* mysql should accept connections from vpn on port number 22
* mysql should accept connections from shipping on port number 3306
* rabbitmq should accept connections from vpn on port number 22
* rabbitmq should accept connections from payment on port number 5672
* catalogue should accept connections from vpn on port number 22
* catalogue should accept connections from vpn_http on port number 8080
* catalogue should accept connections from app_alb on port number 8080
* user should accept connections from vpn on port number 22
* user should accept connections from app_alb on port number 8080
* cart should accept connections from vpn on port number 22
* cart should accept connections from app_alb on port number 8080
* cart should accept connections from shipping on port number 8080
* cart should accept connections from payment on port number 8080
* shipping should accept connections from vpn on port number 22
* shipping  should accept connections from app_alb on port number 8080
* payment should accept connections from vpn on port number 22
* payment should accept connections from app_alb on port number 8080
* web should accept connections from vpn on port number 22
* web should accept connections from web_alb on port number 80
<h1>Window 10 server Restart By Specific Interval Of Time</h1>

1. Create a File With .bat Extension  
2. Write Script This .bat <br> <image src="./image/pic1.png" width='700' >  
3.`@echo off  
echo Restarting the server...  
shutdown /r /t 0`  
4. save this code 
5. open task Scheduler and click create basic task   <image src="./image/pic2.png" width='700' >  
6. name this task and description add task description    
7. next button click  
8. select task trigger for daily restart that why select daily trigger   <image src="./image/pic3.png" width='700'>
9. click next button  
10. select time setup in daily  
11. than select next button  
12. action page start a program   <image src="./image/pic4.png" width='700' >    
13. than click next button  
14. select .vat file in browse input box skip all the option  <image src="./image/pic5.png" width='700'>
15. then click next button  
16. summary page click finish button start this task  <image src="./image/pic6.png" width='700'>


after start this task window server automatically restart par day specific time



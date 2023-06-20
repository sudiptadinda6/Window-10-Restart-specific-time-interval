<h1>Window 10 server Restart By Specific Interval Of Time</h1>

<ol>
<li> Create a File With .bat Extension </li> 
<li> Write Script This .bat <image src="./image/pic1.png" width='700' ></li> <br>
<li>`@echo off  <br>
echo Restarting the server...  <br>
shutdown /r /t 0`  <br>
</li> 
<li> save this code </li>
<li>open task Scheduler and click create basic task <image src="./image/pic2.png" width='700' ></li>
<li>name this task and description add task description</li>
<li>next button click</li>
<li>select task trigger for daily restart that why select daily trigger <image src="./image/pic3.png" width='700' ></li>
<li>click next button</li>
<li>select time setup in daily </li>
<li>than select next button</li>
<li>action page start a program <image src="./image/pic4.png" width='700' ></li>
<li>than click next button</li>
<li>select .vat file in browse input box skip all the option <image src="./image/pic5.png" width='700' ></li>
<li>then click next button</li>
<li>summary page click finish button start this task <image src="./image/pic6.png" width='700' ></li>
</ol>

after start this task window server automatically restart par day specific time



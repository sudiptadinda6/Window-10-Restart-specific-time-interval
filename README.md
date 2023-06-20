<h1>Window 10 server Restart By Specific Interval Of Time</h1>

<ol>
<li> Create a File With .vat Extension </li> 
<li> Write Script This .bat <image src="./image/pic1.png" width='300' ></li>
<li>`@echo off  <br>
echo Restarting the server...  <br>
shutdown /r /t 0`  <br>
</li> 
<li> save this code </li>
<li>open task Scheduler and click create basic task </li>
<li>name this task and description add task description</li>
<li>next button click</li>
<li>select task trigger for daily restart that why select daily trigger</li>
<li>click next button</li>
<li>select time setup in daily </li>
<li>than select next button</li>
<li>action page start a program </li>
<li>than click next button</li>
<li>select .vat file in browse input box skip all the option</li>
<li>then click next button</li>
<li>summary page click finish button start this task</li>
</ol>

after start this task window server automatically restart par day specific time



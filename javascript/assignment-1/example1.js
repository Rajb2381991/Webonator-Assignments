/*
1. This assignment is an introduction to properties, and using document.write() to
output dynamic information in JavaScript.
 Create a basic page in HTML.
 Then, display the following items in the page using only one or more
document.write() statements:
 Information about the web browser that the user is viewing this page with (hint: use the
navigator.appName property).
 The height and width of the user's monitor, i.e. the resolution (hint: use
window.screen.availHeight and window.screen.availWidth)
 The date that the page was created or last modified (hint: use the document.lastModified
property).
*/

 <html>
 <body>
<p>First Assignment
<pre>
<script>
document.writeln("Name is " + navigator.appName + ". Code name is " + navigator.appCodeName);
</script>
</pre>

<p>Size of the monitor
<pre>
<script>
document.writeln("Height of screen is "+screen.availHeight +"\n");
document.writeln(" Width of the screen is "+ screen.availWidth);
</script>
<pre>
</p>

<p>Date last modified
<pre>
<script>
document.writeln(" Last modified at "+  document.lastModified );
</script>
<pre>
</p>
</body></html>

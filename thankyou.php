<?php
/**
 * Created by PhpStorm.
 * User: Bravo
 * Date: 1/25/17
 * Time: 6:49 AM
 */

print "<!DOCTYPE html>\n";
print "<html>\n";
print "<title>Rider Information</title>\n";
print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

print "<header class=\"w3-panel\">\n";
print "<H1>Rider Information:</H1>\n";
print "</header>\n";


print "<section class=\"w3-panel\">\n";
printf("<H1>Thank you %s!</H1><BR>\n", $modPName);
print "<P>For helping to keep your record up to date.  This helps the IKEqC run smoothly.<BR>\n";
print "All edit requests must be reviewed, please all up to 48 hours (longer during a large event weekend).<BR>";
print "Please direct all requests to [authority]</P></section></html>";
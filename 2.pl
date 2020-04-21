$x = 1;
sub subfunc1 {
return $x;
}
sub static {
my $x = 2;
return subfunc1();
}
$y = 3;
sub subfunc2 {
return $y;
}
sub dynamic {
local $y = 4;
return subfunc2();
}
print "static scope ", static(), "\n";
print "dynamic scope ", dynamic(), "\n";

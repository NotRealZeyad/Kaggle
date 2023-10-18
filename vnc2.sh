set password "lollipop"
set expect_path "/usr/bin/expect"  ;# Replace with the actual path to the 'expect' command

spawn vncserver
expect "Password:"
send "$password\r"
expect "Verify:"
send "$password\r"
expect "Would you like to enter a view-only password (y/n)?"
send "n\r"
interact

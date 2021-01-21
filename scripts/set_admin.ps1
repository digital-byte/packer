<powershell>
# Set administrator password
net user Administrator TestPass123
wmic useraccount where "name='Administrator'" set PasswordExpires=FALSE
</powershell>
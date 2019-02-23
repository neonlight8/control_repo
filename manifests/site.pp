node default {
}
#node 'ec2-52-64-37-217.ap-southeast-2.compute.amazonaws.com' {
 #include role::master_server
#}
node 'centossvr2.localdomain' {
 include role::master_server
}
node /^web/ {
 include role::app_server
}
node /^db/ {
 include role::db_server
}


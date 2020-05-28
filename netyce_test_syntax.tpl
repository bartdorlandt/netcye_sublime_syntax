##### NetYCE test template / scenario syntax

# Normal text
normal text

# Comments, starting with comment sign
### comment
-- comment
  !!  comment
  ! comment
  /// comment
  // comment
no ! no comment
no # no comment
!
#
# <voro> blaat
# TODO highlighting todo items
# todo highlighting todo items


# Keywords
# with/without space prefix
if <error>
if not <variable>
if <variable> == abc.com
if not <variable> == abc.com
if <variable> != 'abc.com'
if <variableA> == <variableB>
endif
else
foreach <abc> in <abcs>
	next
	last
	do something
	stop
	stop on-error
	stop default
endeach
<list> := push <item>
<list> := pop <item>
<list> := unshift <key.attribute@hash>
<list> := shift <key.attribute@hash>
<list> := null
<list> := reverse <list>
<list> := keys <%list>
task = abc 
task := abc 
end
description text <var> more text


# Special comments
#reload key key2 key3
#use key
#load key
#wait number

# text in quotes
"Something"
'Something'
"some <var@rel:filter=aap> some"
"some <var@rel:filter> some"
'some <var@rel:filter=aap> some'

# Scenario:
cmd_exec -a flag1 -b flag.cmd 
cmd_exec_basic -f <filename>.cmd 
cmd_exec -a flag1 -x <var> -b <<EOT

<var>
<var@rel>
[func(@rel:blaat)]
EOT
<%cmd> = parse_cmd -n <node> -t show_vni -r "show nve vni"
<vnis> = keys <%cmd>
ansible_exec -a flag1
clear_console -a flag1 
concat -s ' ' -l <list>
config_create -a flag1 
config_diff -a flag1 
config_restore -a flag1 
config_save -a flag1 
config_startup -a flag1 
csv_file -a flag1.abl  
csv_report -a flag1
db_query -a flag1 
db_update -a flag1 
dns_add_alias -a flag1 
dns_add_host -a flag1 
dns_clear_alias -a flag1 
dns_clear_host -a flag1 
dns_clear_ip -a flag1 
EOT -a flag1 
file_get -a flag1 
file_put -a flag1 
grep -a flag1 
hangup -a flag1 
log -a flag1 
log_action -a flag1 
lsp_path -a flag1
match -a flag1
os_activate -a flag1 
os_finish -a flag1 
os_inventory -a flag1 
os_strict -a flag1 
os_update -a flag1 
parse_nccm -a flag1 
parse_run -a flag1 
pingable -a flag1 
reachable -a flag1 
reboot_node -a flag1 
relation -a flag1 
resched_job -a flag1
script_exec -a flag1
send_email -a flag1 
shortest_path -a flag1@blaat.com
signal_dataminer -a flag1 -f blaat.cmd -x fghjk -f
signal_netshot -t name
signal_json -a flag1 
signal_lumos -a flag1 
sort -a flag1 
st_exec -a
trap_nms -a flag1 
trap_node -a flag1 
update_rev -a flag1 
wait -a flag1 
# continous parameters
 -p blaat -r blaat
 -a xyz

# Variables
abc <var> abc
abc <var@rel> abc
abc <var@rel:filter> abc
abc <var@rel:'filter'> abc
abc <var@rel:"filter"> abc
abc <var@rel:search=filter> abc
abc <var@rel:search="filter"> abc
abc <var@rel:search='filter'> abc

# tpl functions
# square brackets with round brackets
[Ipadd(value, value)]
[Count(@ipv6_service_per_vrf:PA)]
|[Count(@ipv6_service_per_vrf:PA)]|text
|[Count(@ipv6_service_per_vrf:PA)] != 0 |text
|[Ipadd([Count(<value@rel>)], value)]| text

# Curly brackets
# template calls
{template}
{word, relation}
{template, relation, Net_name=antiddos}
{<variable@relation>, relation, filter='name'}
{<variable@relation>, relation}
{<variable@relation>, relation, Net_name='uni', Net_name='uni'}
{<variable@relation>, relation, Net_name=uni, Net_name=uni}

# Conditions
|<UNI_PROTOCOL> = BGP|{template}
|<UNI_PROTOCOL> != BGP|{template}
|<Ipv6_subnet_name@Ipv46_customs_node_per_vrf:antiddos>|{template, relation}
|<variable> != 0||<variable@relation> != 0|config line
|<variable> != 'value'||<variable@relation> != 0| {tempalte, relation}
|| match blaat
|| ! comment in condition
|!| # another comment

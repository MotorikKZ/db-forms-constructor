SPOOL install.log
ACCEPT instance_name DEFAULT vm_xe PROMPT 'instance (default VM_XE): '
rem ACCEPT sys_pass DEFAULT simsim PROMPT 'SYS Password: ' HIDE	
ACCEPT fc_user DEFAULT FC22 PROMPT 'FC Username (default FC22): '
ACCEPT fc_user_pass DEFAULT FC PROMPT 'FC Password: ' HIDE

PROMPT Press Enter to start
PAUSE

CONN &fc_user/&fc_user_pass@&instance_name

PROMPT Create &fc_user Objects

@tables\_tables.sql
@views\_views.sql
@storedproc\_storedproc.sql
@data\_data.sql

@compile_invalids.sql
PROMPT Select invalid Objects....
Select o.object_name From user_objects o Where o.status = 'INVALID';

PROMPT Completed... Press Enter to exit
PAUSE
EXIT
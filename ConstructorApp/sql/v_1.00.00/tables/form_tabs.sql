-- Start of DDL Script for Table FC.FORM_TABS
-- Generated 10.04.2010 20:52:01 from FC@VM_XE

Create Table form_tabs
    (form_code                      Varchar2(255),
    tab_code                       Varchar2(255),
    child_form_code                Varchar2(255),
    tab_position                   Varchar2(1),
    tab_name                       Varchar2(255),
    number_of_columns              Number Default NULL,
    icon_id                        Number,
    tab_type                       Varchar2(2),
    tab_display_number             Number)
/





-- Constraints for FORM_TABS

Alter Table form_tabs
Add Constraint form_tabs_pk Unique (form_code, tab_code)
Using Index
/


-- Comments for FORM_TABS

Comment On Column form_tabs.form_code Is '������������� ����'
/
Comment On Column form_tabs.number_of_columns Is '��. com.smartgwt.client.widgets.form.DynamicForm   setNumCols'
/
Comment On Column form_tabs.tab_code Is '������������� ��������'
/
Comment On Column form_tabs.tab_display_number Is '������� ����������'
/
Comment On Column form_tabs.tab_name Is '���������������� ��� ��������'
/
Comment On Column form_tabs.tab_position Is 'Lookup FORMS.EDITOR_POSITION'
/

-- End of DDL Script for Table FC.FORM_TABS


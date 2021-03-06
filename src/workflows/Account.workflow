<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Showing_Mobile_Layout</fullName>
        <description>Test_description</description>
        <protected>false</protected>
        <recipients>
            <type>accountOwner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/ContactFollowUpSAMPLE</template>
    </alerts>
    <fieldUpdates>
        <fullName>test_field_update</fullName>
        <field>Name</field>
        <name>test_field_update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>test_message</fullName>
        <apiVersion>41.0</apiVersion>
        <endpointUrl>https://api.metamind.io</endpointUrl>
        <fields>AccountNumber</fields>
        <fields>Id</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>dev@pee-3.dev.welkinsuite.com</integrationUser>
        <name>test_message</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>TestName111</fullName>
        <actions>
            <name>Showing_Mobile_Layout</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>test_field_update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Follow_Up_on_Escalated_Case</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.test_field1__c</field>
            <operation>contains</operation>
            <value>a</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.AccountNumber</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.OwnerId</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Site</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.test_field27t__c</field>
            <operation>contains</operation>
            <value>a</value>
        </criteriaItems>
        <description>TestName_ruleTestName_ruleTestName_ruleTestName_ruleTestName_rule</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>test_rule_111</fullName>
        <active>true</active>
        <formula>OwnerId &lt;&gt; LastModifiedById</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>test_rule_for_acc</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Description</field>
            <operation>equals</operation>
            <value>text</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Follow_Up_on_Escalated_Case</fullName>
        <assignedTo>dev@pee-3.dev.welkinsuite.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Account.CreatedDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Follow Up on Escalated Case</subject>
    </tasks>
</Workflow>

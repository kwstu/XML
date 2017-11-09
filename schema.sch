<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    
    <!-- Actors country does not exist -->
    <sch:pattern>
        <sch:rule context="author">
            <sch:let name="iName" value="//iname/@value"/> 
            <sch:assert test="count(//country/name[@value = $iName]) >= 1">
                Authors country does not exist!
                </sch:assert>       
        </sch:rule>
    </sch:pattern>
    
    <!-- If an actor exists -->
    <sch:pattern>
        <sch:rule context="ausername">
            <sch:let name="aName" value="@value"/>
            <sch:assert test="count(//actor/username[@value = $aName]) = 1">
                Actor does not exist!
            </sch:assert>       
        </sch:rule>
    </sch:pattern>
    
    <!-- Film name already exists -->
    <sch:pattern>
        <sch:rule context="title">
            <sch:let name="tName" value="@value"/> 
            <sch:assert test="count(//title[@value = $tName]) = 1">
                Title already exists!
            </sch:assert>       
        </sch:rule>
    </sch:pattern>
    
    <!-- Username already exists -->
    <sch:pattern>
        <sch:rule context="username">
            <sch:let name="uName" value="@value"/> 
            <sch:assert test="count(//username[@value = $uName]) = 1">
                Username already exists!
            </sch:assert>       
        </sch:rule>
    </sch:pattern>
   
</sch:schema>
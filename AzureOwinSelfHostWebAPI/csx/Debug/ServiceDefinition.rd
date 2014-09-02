<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="AzureOwinSelfHostWebAPI" generation="1" functional="0" release="0" Id="e5d97d7e-6cf4-4465-ab97-2b2bb6e3c69b" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="AzureOwinSelfHostWebAPIGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="OwinServiceRole:httpEndpoint" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/AzureOwinSelfHostWebAPI/AzureOwinSelfHostWebAPIGroup/LB:OwinServiceRole:httpEndpoint" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="OwinServiceRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/AzureOwinSelfHostWebAPI/AzureOwinSelfHostWebAPIGroup/MapOwinServiceRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="OwinServiceRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/AzureOwinSelfHostWebAPI/AzureOwinSelfHostWebAPIGroup/MapOwinServiceRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:OwinServiceRole:httpEndpoint">
          <toPorts>
            <inPortMoniker name="/AzureOwinSelfHostWebAPI/AzureOwinSelfHostWebAPIGroup/OwinServiceRole/httpEndpoint" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapOwinServiceRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/AzureOwinSelfHostWebAPI/AzureOwinSelfHostWebAPIGroup/OwinServiceRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapOwinServiceRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/AzureOwinSelfHostWebAPI/AzureOwinSelfHostWebAPIGroup/OwinServiceRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="OwinServiceRole" generation="1" functional="0" release="0" software="C:\code\AzureOwinSelfHostWebAPI\AzureOwinSelfHostWebAPI\csx\Debug\roles\OwinServiceRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="1792" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="httpEndpoint" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;OwinServiceRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;OwinServiceRole&quot;&gt;&lt;e name=&quot;httpEndpoint&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/AzureOwinSelfHostWebAPI/AzureOwinSelfHostWebAPIGroup/OwinServiceRoleInstances" />
            <sCSPolicyUpdateDomainMoniker name="/AzureOwinSelfHostWebAPI/AzureOwinSelfHostWebAPIGroup/OwinServiceRoleUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/AzureOwinSelfHostWebAPI/AzureOwinSelfHostWebAPIGroup/OwinServiceRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="OwinServiceRoleUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="OwinServiceRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="OwinServiceRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="860d3115-b43c-4be9-85a6-7b54a63fe10a" ref="Microsoft.RedDog.Contract\ServiceContract\AzureOwinSelfHostWebAPIContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="71909181-4731-4e2d-94fa-eba7e64a87b5" ref="Microsoft.RedDog.Contract\Interface\OwinServiceRole:httpEndpoint@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/AzureOwinSelfHostWebAPI/AzureOwinSelfHostWebAPIGroup/OwinServiceRole:httpEndpoint" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>
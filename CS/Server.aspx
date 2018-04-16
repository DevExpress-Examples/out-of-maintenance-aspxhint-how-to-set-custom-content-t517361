<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Server.aspx.cs" Inherits="ASPxHint_PublicExamples_SetCustomContent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .target {
            width: 100px;
            border: 1px solid gray;
            margin: 50px;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Using server-side markup</h1>
          <hr />
        <h3>The Showing event handler returns a content string</h3>

        <div class="target target1">target 1</div>

        <dx:ASPxHint ID="ASPxHint1" runat="server" TargetSelector=".target1" ClientInstanceName="ASPxHint1" Position="Right" TriggerAction="None">
            <ClientSideEvents 
                Showing="function(s, e) { 
                    return 'custom content 1'; 
                }" 
            />
        </dx:ASPxHint>

        <script type="text/javascript">
            var target1 = document.querySelector(".target1");
            ASPxHint1.Show(target1);
        </script>

        <hr />

        <h3>The Showing event handler returns a hash with 'title' and 'content' strings</h3>

        <div class="target target2">target 2</div>

        <dx:ASPxHint ID="ASPxHint2" runat="server" TargetSelector=".target2" ClientInstanceName="ASPxHint2" Position="Right" TriggerAction="None" Title=" ">
            <ClientSideEvents 
                Showing="function(s, e) { 
                    return { 
                            title: 'custom content 2',
                            content: 'custom content 2'
                        };
                }" 
            />
        </dx:ASPxHint>

        <script type="text/javascript">
            var target2 = document.querySelector(".target2");
            ASPxHint2.Show(target2);
        </script>

        <hr />

        <h3>The Showing event handler sets the innerHTML propertyof the 'titleElement' and 'contentElement' using a timeout</h3>

        <div class="target target3">target 3</div>

        <dx:ASPxHint ID="ASPxHint3" runat="server" TargetSelector=".target3" ClientInstanceName="ASPxHint3" Position="Right" TriggerAction="None" Content="Loading..." Title="Loading...">
            <ClientSideEvents 
                Showing="function(s, e) { 
                    window.setTimeout(function() {
                        e.titleElement.innerHTML = 'custom content 3';
                        e.contentElement.innerHTML = 'custom content 3';
                        s.UpdatePosition();
                    }, 2000);
                }" 
            />
        </dx:ASPxHint>

        <script type="text/javascript">
            var target3 = document.querySelector(".target3");
            ASPxHint3.Show(target3);
        </script>

        <hr />

        <h3>The Showing event handler sends a callback to get content data</h3>

        <div class="target target4">target 4</div>

        <dx:ASPxCallback ID="ASPxCallback1" runat="server" OnCallback="ASPxCallback1_Callback"></dx:ASPxCallback>

        <dx:ASPxHint ID="ASPxHint4" runat="server" TargetSelector=".target3" ClientInstanceName="ASPxHint4" Position="Right" TriggerAction="None" Content="Loading..." Title="Get Content via ASPxCallback">
            <ClientSideEvents
                Showing="function(s, e) { 
                    ASPxCallback1.PerformCallback('', function(result) { 
                        e.contentElement.innerHTML = 'the server\'s time is: ' + result; 
                        s.UpdatePosition();
                    } );
                }" 
            />
        </dx:ASPxHint>

        <script type="text/javascript">
            var target4 = document.querySelector(".target4");
            ASPxHint4.Show(target4);
        </script>

        <hr />
        
    </form>
</body>
</html>

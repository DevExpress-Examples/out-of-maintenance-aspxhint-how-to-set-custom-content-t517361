<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Client.aspx.cs" Inherits="ASPxHint_PublicExamples_SetCustomContent" %>

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
        <h1>Using client-side API</h1>

         <hr />

        <dx:ASPxHint ID="ASPxHint1" runat="server"></dx:ASPxHint>

        <h3> OnShowing function returns a content string</h3>

        <div class="target target1">target 1</div>

        <script type="text/javascript">
            ASPxClientHint.Show(".target1", {
                    position: "right",
                    onShowing: function(s, e) { return 'custom content 1'; }
                }
            );
        </script>

        <hr />

        <h3> OnShowing function returns a hash with 'title' and 'content' strings</h3>
        
        <div class="target target2">target 2</div>

        <script type="text/javascript">
            ASPxClientHint.Show(".target2", {
                    position: "right",
                    title: " ",
                    onShowing: function(s, e) { 
                        return { 
                            title: 'custom content 2',
                            content: 'custom content 2'
                        };
                    }
                }
            );
        </script>

        <hr />

        <h3> OnShowing function sets the innerHTML property of the 'titleElement' and 'contentElement'using a timeout</h3>

        <div class="target target3">target 3</div>

        <script type="text/javascript">
            ASPxClientHint.Show(".target3", {
                    position: "right",
                    title: "loading...",
                    content: "loading...",
                    onShowing: function(s, e) { 
                        window.setTimeout(function() {
                            e.titleElement.innerHTML = 'custom content 3';
                            e.contentElement.innerHTML = 'custom content 3';
                            s.UpdatePosition();
                        }, 2000);
                    }
                }
            );
        </script>

        <hr />

        <h3> OnShowing function sends a callback to get content data</h3>

        <div class="target target4">target 4</div>

        <dx:ASPxCallback ID="ASPxCallback1" runat="server" OnCallback="ASPxCallback1_Callback"></dx:ASPxCallback>

        <script type="text/javascript">
            ASPxClientHint.Show(".target4", {
                    position: "right",
                    title: "Get Content via ASPxCallback",
                    onShowing: function(s, e) { 
                        ASPxCallback1.PerformCallback('', function(result) { 
                            e.contentElement.innerHTML = "the server's time is: " + result; 
                            s.UpdatePosition();
                        } );
                    }
                }
            );
        </script>
        
        <hr />

    </form>
</body>
</html>

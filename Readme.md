<!-- default file list -->
*Files to look at*:

* **[Client.aspx](./CS/Client.aspx) (VB: [Client.aspx](./VB/Client.aspx))**
* [Client.aspx.cs](./CS/Client.aspx.cs) (VB: [Client.aspx.vb](./VB/Client.aspx.vb))
* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [Server.aspx](./CS/Server.aspx) (VB: [Server.aspx](./VB/Server.aspx))
* [Server.aspx.cs](./CS/Server.aspx.cs) (VB: [Server.aspx.vb](./VB/Server.aspx.vb))
<!-- default file list end -->
# ASPxHint - How to set custom content


<p>This example demonstrates how to set custom ASPxHint content using the client-side API and server-side markup.</p>
<p><br><em>The following scenarios are covered in this example:</em><br><br> - using a string value to set ASPxHint content; <br><br> - using a pair of values to set the ASPxHint title and content;<br><br>- specifying the title and content elements using the innerHTML property;<br><br>- obtaining content from the server side using callbacks.<br><br><br>We recommend using the client-side "onShowing" delegate method to change ASPxHint content in such scenarios.<br><br>Also, when content is changed after ASPxHint has been shown, the ASPxHint position may be inconsistent because the content size is changed. Call the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebScriptsASPxClientHint_UpdatePositiontopic">ASPxClientHint.UpdatePosition</a> method to correct the ASPxHint position.</p>

<br/>



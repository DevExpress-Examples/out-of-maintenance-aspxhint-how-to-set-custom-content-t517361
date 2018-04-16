using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ASPxHint_PublicExamples_SetCustomContent : System.Web.UI.Page {
    
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void ASPxCallback1_Callback(object source, DevExpress.Web.CallbackEventArgs e) {
        e.Result = DateTime.Now.ToShortTimeString();
    }

}
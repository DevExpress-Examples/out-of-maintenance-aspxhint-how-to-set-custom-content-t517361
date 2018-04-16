Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class ASPxHint_PublicExamples_SetCustomContent
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub ASPxCallback1_Callback(ByVal source As Object, ByVal e As DevExpress.Web.CallbackEventArgs)
        e.Result = Date.Now.ToShortTimeString()
    End Sub

End Class
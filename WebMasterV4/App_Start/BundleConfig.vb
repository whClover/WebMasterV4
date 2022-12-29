Imports System.Web.Optimization

Public Class BundleConfig
    Public Shared Sub RegisterBundles(ByVal bundles As BundleCollection)
        bundles.Add(New StyleBundle("~/Css").Include(
            "~/assets/css/bootstrap.min.css",
            "~/assets/css/icons.min.css",
            "~/assets/css/app.min.css"
        ))

        bundles.Add(New ScriptBundle("~/Scripts").Include(
            "~/assets/libs/bootstrap/js/bootstrap.bundle.min.js",
            "~/assets/libs/metismenujs/metismenujs.min.js",
            "~/assets/libs/simplebar/simplebar.min.js",
            "~/assets/libs/feather-icons/feather.min.js",
            "~/assets/js/app.js"
        ))
    End Sub
End Class

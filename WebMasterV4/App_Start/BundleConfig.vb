Imports System.Web.Optimization

Public Class BundleConfig
    Public Shared Sub RegisterBundles(ByVal bundles As BundleCollection)
        bundles.Add(New StyleBundle("~/Css").Include(
            "~/assets/css/bootstrap.min.css",
            "~/assets/css/icons.min.css",
            "~/assets/css/app.min.css",
            "~/assets/costume/css/mycss.css",
            "~/assets/libs/choices.js/public/assets/styles/choices.min.css",
            "~/assets/libs/flatpickr/flatpickr.min.css"
        ))

        bundles.Add(New ScriptBundle("~/Scripts").Include(
            "~/assets/libs/bootstrap/js/bootstrap.bundle.min.js",
            "~/assets/costume/js/boostrap5-alpha.js",
            "~/assets/costume/js/jquery-3.6.3.min.js",
            "~/assets/costume/js/jquery-ui.min.js",
            "~/assets/libs/metismenujs/metismenujs.min.js",
            "~/assets/libs/simplebar/simplebar.min.js",
            "~/assets/libs/feather-icons/feather.min.js",
            "~/assets/js/app.js",
            "~/assets/costume/multiselect/chosen.jquery.min.js",
            "~/assets/libs/choices.js/public/assets/scripts/choices.min.js",
            "~/assets/libs/flatpickr/flatpickr.min.js",
            "~/assets/js/pages/form-advanced.init.js",
            "~/assets/costume/js/marquee.js",
            "~/assets/costume/js/myjs.js"
        ))

        bundles.Add(New ScriptBundle("~/buatmodal").Include(
            "~/assets/costume/js/jquery-3.6.3.min.js",
            "~/assets/costume/js/bootstrap4.5.0.js"
        ))
    End Sub
End Class

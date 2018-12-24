using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ASPTemplateWebFormSite.Startup))]
namespace ASPTemplateWebFormSite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(cictlms.Startup))]
namespace cictlms
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

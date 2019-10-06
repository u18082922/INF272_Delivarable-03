using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(INF272_18012133_DEL2.Startup))]
namespace INF272_18012133_DEL2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

using System.Web;
using System.Web.Mvc;

namespace INF272_18012133_DEL2
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}

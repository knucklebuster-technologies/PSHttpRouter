using System;
using System.Management.Automation;

namespace PSRouter
{
    public class Route {
        String Resource;
        ScriptBlock ScriptBlock;
    }
    public class Router
    {
        String Url = "http://localhost";
        Int32 Port = 8080;
        Route[] Routes;
    }
}
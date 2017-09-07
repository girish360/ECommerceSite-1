﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ECommerceWeb.Common;

namespace ECommerceWeb.Controllers
{
	public class HomeController : Controller
	{
		public ActionResult Index()
		{
			ActionResult            result                  = null;

			if (Common.Session.IsAdmin)
			{
				ViewBag.IsAdmin                             = true;
				result                                      = View();
			}
			else if (Common.Session.Authorized)
			{
				ViewBag.IsAdmin                             = false;
				result                                      = View();
			}
			else
			{
				result                                      = RedirectToAction(Constants.ACTION_LOGIN, Constants.CONTROLLER_ACCOUNT);
			}

			return result;
		}

		public ActionResult About()
		{
			ViewBag.Message = "Your application description page.";

			return View();
		}

		public ActionResult Contact()
		{
			ViewBag.Message = "Your contact page.";

			return View();
		}
	}
}
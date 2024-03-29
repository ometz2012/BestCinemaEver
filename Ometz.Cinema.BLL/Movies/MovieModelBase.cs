﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Ometz.Cinema.BLL.Movies
{
 public	class MovieModelBase
	{	
     public int MovieID { get; set; }
	 public string Title { get; set; }
     public string Description { get; set; }
     public string Year { get; set; }
     public byte[] Photo { get; set; }
     public string GenreName { get; set; }


	 public List<Performances.PerformanceModelDTO> Performance { get; set; }
	}
}

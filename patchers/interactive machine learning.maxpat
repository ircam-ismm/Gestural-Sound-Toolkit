{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 529.0, 100.0, 1644.0, 923.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Medium",
					"fontsize" : 24.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.0, 20.0, 346.0, 35.0 ],
					"text" : "Interactive Machine Learning"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Light",
					"fontsize" : 23.865383000000001,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 610.0, 103.0, 208.494384765625, 35.0 ],
					"presentation_linecount" : 2,
					"text" : "Temporal Models"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Light",
					"fontsize" : 23.865383000000001,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 301.0, 103.0, 148.0, 35.0 ],
					"text" : "Static Models"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Light",
					"fontsize" : 23.865383000000001,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 41.0, 523.0, 148.0, 35.0 ],
					"text" : "Regression"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue Light",
					"fontsize" : 23.865383000000001,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 31.0, 234.0, 148.0, 35.0 ],
					"text" : "Classification"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-2",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "ml.classification.hhmm.maxpat",
					"numinlets" : 8,
					"numoutlets" : 3,
					"offset" : [ 0.0, -3.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 561.0, 174.0, 307.494384765625, 188.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-18",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "ml.regression.xmm.maxpat",
					"numinlets" : 9,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 561.0, 456.0, 311.0, 188.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-8",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "ml.regression.gmr.maxpat",
					"numinlets" : 9,
					"numoutlets" : 3,
					"offset" : [ 0.0, 1.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 233.0, 456.0, 303.859992980957031, 188.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-14",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "ml.classification.gmm.maxpat",
					"numinlets" : 8,
					"numoutlets" : 2,
					"offset" : [ 0.0, -3.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 229.0, 174.0, 302.0, 188.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [  ],
		"originid" : "pat-3781",
		"dependency_cache" : [ 			{
				"name" : "helpstarter.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "imubu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "ml.classification.gmm.maxpat",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-analysis/machine-learning",
				"patcherrelativepath" : "./mod-analysis/machine-learning",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ml.classification.hhmm.maxpat",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-analysis/machine-learning",
				"patcherrelativepath" : "./mod-analysis/machine-learning",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ml.regression.gmr.maxpat",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-analysis/machine-learning",
				"patcherrelativepath" : "./mod-analysis/machine-learning",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ml.regression.xmm.maxpat",
				"bootpath" : "~/Repositories/Gestural-Sound-Toolkit/patchers/mod-analysis/machine-learning",
				"patcherrelativepath" : "./mod-analysis/machine-learning",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mubu.gmm.maxhelp",
				"bootpath" : "~/Documents/Max 9/Packages/MuBu For Max/help",
				"patcherrelativepath" : "../../../Documents/Max 9/Packages/MuBu For Max/help",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mubu.gmm.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.gmr.maxhelp",
				"bootpath" : "~/Documents/Max 9/Packages/MuBu For Max/help",
				"patcherrelativepath" : "../../../Documents/Max 9/Packages/MuBu For Max/help",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mubu.gmr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.hhmm.maxhelp",
				"bootpath" : "~/Documents/Max 9/Packages/MuBu For Max/help",
				"patcherrelativepath" : "../../../Documents/Max 9/Packages/MuBu For Max/help",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mubu.hhmm.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.record.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.setlabels.maxpat",
				"bootpath" : "~/Documents/Max 9/Packages/MuBu For Max/patchers",
				"patcherrelativepath" : "../../../Documents/Max 9/Packages/MuBu For Max/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mubu.track.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.xmm.maxhelp",
				"bootpath" : "~/Documents/Max 9/Packages/MuBu For Max/help",
				"patcherrelativepath" : "../../../Documents/Max 9/Packages/MuBu For Max/help",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mubu.xmm.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "pipo.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}

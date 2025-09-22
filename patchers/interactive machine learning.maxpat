{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 566.0, 359.0, 1040.0, 729.0 ],
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
					"name" : "gst.classification.hhmm.maxpat",
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
					"name" : "gst.regression.xmm.maxpat",
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
					"name" : "gst.regression.gmr.maxpat",
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
					"name" : "gst.classification.gmm.maxpat",
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
		"dependency_cache" : [ 			{
				"name" : "gst.classification.gmm.maxpat",
				"bootpath" : "~/Documents/projects/Gestural-Sound-Toolkit/patchers/mod-machine-learning",
				"patcherrelativepath" : "./mod-machine-learning",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "gst.classification.hhmm.maxpat",
				"bootpath" : "~/Documents/projects/Gestural-Sound-Toolkit/patchers/mod-machine-learning",
				"patcherrelativepath" : "./mod-machine-learning",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "gst.regression.gmr.maxpat",
				"bootpath" : "~/Documents/projects/Gestural-Sound-Toolkit/patchers/mod-machine-learning",
				"patcherrelativepath" : "./mod-machine-learning",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "gst.regression.xmm.maxpat",
				"bootpath" : "~/Documents/projects/Gestural-Sound-Toolkit/patchers/mod-machine-learning",
				"patcherrelativepath" : "./mod-machine-learning",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "imubu.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.gmm.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.gmr.mxo",
				"type" : "iLaX"
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
				"name" : "mubu.track.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "mubu.xmm.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}

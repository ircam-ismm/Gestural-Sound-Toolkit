{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 100.0, 100.0, 455.0, 831.0 ],
        "boxes": [
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 424.0, 271.0, 29.0, 17.0 ],
                    "text": "thru"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 341.0, 271.0, 49.0, 17.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 424.0, 210.0, 126.0, 17.0 ],
                    "text": "loadmess readall overview.mubu"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 459.0, 271.0, 39.0, 17.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-44",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 459.0, 250.0, 121.0, 17.0 ],
                    "text": "loadmess resizetowindowrect 4"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 442.0, 229.0, 90.0, 17.0 ],
                    "text": "loadmess windresize 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial Italic",
                    "fontsize": 14.0,
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 182.0, 585.0, 261.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 29.0, 231.0, 264.0, 22.0 ],
                    "text": "embeded <bpatcher> saves parameters."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 14.0,
                    "id": "obj-8",
                    "linecount": 12,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 94.0, 331.0, 194.0 ],
                    "presentation": 1,
                    "presentation_linecount": 12,
                    "presentation_rect": [ 5.0, 184.0, 247.0, 194.0 ],
                    "text": "Compute an intensity, based on the raw acceleremeter data\nDerivate and integrate.\n\n@input: \n    -accelerometer [list]\n\n@output: \n    - intensity\n    - intensity X axis\n    - intensity Y axis\n    - intensity Z axis"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Medium",
                    "fontsize": 30.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 72.0, 36.0, 235.0, 42.0 ],
                    "text": "gst.acc.intensity"
                }
            },
            {
                "box": {
                    "fontname": "Helvetica Neue Medium",
                    "fontsize": 20.0,
                    "id": "obj-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 3.0, 4.0, 259.0, 30.0 ],
                    "text": "Gestural Sound Toolkit V2 "
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.65045, 0.65045, 0.65045, 0.0 ],
                    "bgmode": 1,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-48",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.recorddata.maxpat",
                    "numinlets": 6,
                    "numoutlets": 3,
                    "offset": [ -2.0, -4.0 ],
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 9.0, 296.0, 434.0, 259.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.819608, 0.819608, 0.819608, 0.0 ],
                    "bgmode": 2,
                    "border": 1,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-31",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.acc.intensity.maxpat",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "float", "float", "float", "float" ],
                    "patching_rect": [ 9.0, 609.0, 435.0, 215.0 ],
                    "varname": "gst.acc.intensity",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-48", 4 ],
                    "hidden": 1,
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 5 ],
                    "hidden": 1,
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "hidden": 1,
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "hidden": 1,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "hidden": 1,
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "hidden": 1,
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "midpoints": [ 18.5, 584.0, 18.5, 584.0 ],
                    "source": [ "obj-48", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-31::obj-195::obj-125": [ "compexp", "compexp", 0 ],
            "obj-31::obj-195::obj-13": [ "minMonitor", "minMonitor", 0 ],
            "obj-31::obj-195::obj-136": [ "live.menu[1]", "live.menu", 0 ],
            "obj-31::obj-195::obj-139": [ "live.menu", "live.menu", 0 ],
            "obj-31::obj-195::obj-14": [ "maxMonitor", "maxMonitor", 0 ],
            "obj-31::obj-195::obj-142": [ "derivativewindow", "maveragewindow", 0 ],
            "obj-31::obj-195::obj-146": [ "maveragewindow", "maveragewindow", 0 ],
            "obj-31::obj-195::obj-150": [ "gateonoff", "gateonoff", 0 ],
            "obj-31::obj-195::obj-151": [ "cliponoff", "cliponoff", 0 ],
            "obj-31::obj-195::obj-154": [ "clipmax", "gain", 0 ],
            "obj-31::obj-195::obj-31": [ "gatethresh", "gatethresh", 0 ],
            "obj-31::obj-195::obj-42": [ "framerate", "framerate", 0 ],
            "obj-31::obj-195::obj-82": [ "fcut", "fcut", 0 ],
            "obj-31::obj-195::obj-86": [ "gain", "gain", 0 ],
            "obj-31::obj-37": [ "live.text[3]", "live.text", 0 ],
            "obj-48::obj-15": [ "live.text[4]", "live.text", 0 ],
            "obj-48::obj-18": [ "live.text[7]", "live.text", 0 ],
            "obj-48::obj-4": [ "live.text[5]", "live.text", 0 ],
            "obj-48::obj-40": [ "live.toggle", "live.toggle", 0 ],
            "obj-48::obj-50": [ "live.numbox", "live.numbox", 0 ],
            "obj-48::obj-57": [ "live.toggle[2]", "live.toggle", 0 ],
            "obj-48::obj-6": [ "live.text[6]", "live.text", 0 ],
            "obj-48::obj-71": [ "live.toggle[1]", "live.toggle", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys" ]
    }
}
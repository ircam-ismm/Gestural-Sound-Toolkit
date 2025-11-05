{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 87.0, 534.0, 788.0 ],
        "boxes": [
            {
                "box": {
                    "fontname": "Arial Italic",
                    "fontsize": 14.0,
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 220.0, 531.0, 261.0, 22.0 ],
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
                    "linecount": 8,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 97.0, 472.0, 132.0 ],
                    "presentation": 1,
                    "presentation_linecount": 9,
                    "presentation_rect": [ 14.0, 216.0, 264.0, 147.0 ],
                    "text": "It computes the First Derivativs along each axis of the incoming data, e.g. velocities from position data. Useful to capture time changes in continuous data.\n\ninput: \n     - data values [list]\noutput:\n     - [1]: 1st derivatives [list]"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 486.0, 572.0, 39.0, 17.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 486.0, 551.0, 121.0, 17.0 ],
                    "text": "loadmess resizetowindowrect 4"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 462.0, 529.0, 90.0, 17.0 ],
                    "text": "loadmess windresize 1"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 502.0, 296.0, 39.0, 17.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 502.0, 275.0, 121.0, 17.0 ],
                    "text": "loadmess resizetowindowrect 4"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 485.0, 254.0, 90.0, 17.0 ],
                    "text": "loadmess windresize 1"
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
                    "patching_rect": [ 99.0, 53.0, 195.0, 42.0 ],
                    "text": "gst.derivative"
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
                    "patching_rect": [ 30.0, 21.0, 259.0, 30.0 ],
                    "text": "Gestural Sound Toolkit V2 "
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 379.0, 234.0, 49.0, 17.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "fontsize": 8.0,
                    "hidden": 1,
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 449.0, 232.0, 126.0, 17.0 ],
                    "text": "loadmess readall overview.mubu"
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
                    "patching_rect": [ 47.0, 257.0, 434.0, 259.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.819608, 0.819608, 0.819608, 0.0 ],
                    "bgmode": 2,
                    "border": 1,
                    "clickthrough": 0,
                    "embed": 1,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-31",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "gst.derivative.maxpat",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 87.0, 134.0, 118.0 ],
                        "openinpresentation": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-157",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 63.0, 101.0, 98.0, 22.0 ],
                                    "text": "r #0-derivative"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-197",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 843.0, 50.5, 85.0, 22.0 ],
                                    "text": "getattr bounds"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 11.0,
                                    "id": "obj-195",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 0,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 238.0, 87.0, 221.0, 402.0 ],
                                        "openinpresentation": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-12",
                                                    "linecount": 2,
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 362.0, 231.0, 98.0, 20.0 ],
                                                    "text": "s #0-samplingrate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 473.0, 231.0, 101.0, 20.0 ],
                                                    "text": "s #0-scaling-factor"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontface": 2,
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-5",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 1.0, 475.0, 231.0, 27.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 2,
                                                    "presentation_rect": [ 9.5, 368.0, 207.0, 27.0 ],
                                                    "text": "Note: uses PiPo from ISMM team at IRCAM Centre Pompidou http://ismm.ircam.fr/pipo/"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-27",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 705.0, 190.0, 84.0, 22.0 ],
                                                    "text": "pak bounds f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-24",
                                                    "linecount": 2,
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 705.0, 231.0, 93.0, 20.0 ],
                                                    "text": "s #0-mubu-scroll"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 607.0, 5.0, 73.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "client_rect": [ 100, 178, 500, 678 ],
                                                        "parameter_enable": 0,
                                                        "parameter_mappable": 0,
                                                        "storage_rect": [ 583, 69, 1034, 197 ]
                                                    },
                                                    "text": "pattrstorage",
                                                    "varname": "u933006469[1]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 4,
                                                    "outlettype": [ "", "", "", "" ],
                                                    "patching_rect": [ 544.0, 5.0, 56.0, 22.0 ],
                                                    "restore": {
                                                        "deltaSize": [ 5 ],
                                                        "frame-rate": [ 100.0 ],
                                                        "maxMonitor": [ 7.0 ],
                                                        "minMonitor": [ -7.0 ],
                                                        "scalingFactor": [ 0.1 ]
                                                    },
                                                    "text": "autopattr",
                                                    "varname": "u933006469"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-28",
                                                    "index": 6,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 737.0, 32.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-202",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 898.0, 93.0, 41.0, 22.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-201",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 737.0, 93.0, 41.0, 22.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-198",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "float", "float" ],
                                                    "patching_rect": [ 737.0, 67.0, 180.0, 22.0 ],
                                                    "text": "unpack f f"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-10",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 247.0, 140.0, 61.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 62.5, 36.0, 61.0, 18.0 ],
                                                    "text": "Delta size"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-6",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 525.0, 141.0, 79.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 62.5, 84.0, 79.0, 18.0 ],
                                                    "text": "Scaling factor"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-2",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 368.0, 141.0, 92.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 62.5, 60.0, 92.0, 18.0 ],
                                                    "text": "Sampling rate (Hz)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.683403, 0.543763, 0.321212, 0.11 ],
                                                    "fontname": "Helvetica Light",
                                                    "fontsize": 14.0,
                                                    "id": "obj-9",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 90.5, 6.0, 239.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 7.0, 7.0, 209.0, 20.0 ],
                                                    "text": "Delta (Derivative)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-4",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 947.0, 127.0, 102.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 89.5, 144.0, 105.0, 18.0 ],
                                                    "text": "Max value for display"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "format": 6,
                                                    "id": "obj-14",
                                                    "maxclass": "flonum",
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 898.0, 127.0, 45.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 9.5, 142.0, 45.0, 20.0 ],
                                                    "varname": "maxMonitor"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "format": 6,
                                                    "id": "obj-13",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 737.0, 127.0, 45.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 9.5, 164.0, 45.0, 20.0 ],
                                                    "varname": "minMonitor"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 791.0, 128.0, 100.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 89.5, 165.0, 105.0, 18.0 ],
                                                    "text": "Min value for display"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.683403, 0.543763, 0.321212, 0.11 ],
                                                    "fontname": "Helvetica Light",
                                                    "fontsize": 14.0,
                                                    "id": "obj-8",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 27.0, 341.0, 230.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 7.0, 192.0, 210.0, 20.0 ],
                                                    "text": "Help [Derivative]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-3",
                                                    "linecount": 10,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 27.0, 373.0, 284.0, 141.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 11,
                                                    "presentation_rect": [ 7.0, 212.0, 214.0, 154.0 ],
                                                    "text": "It computes the First Derivativs along each axis of the incoming data, e.g. velocities from position data. Useful to capture time changes in continuous data.\n\ninput: \n     - data values [list]\n\noutput:\n     - [1]: 1st derivatives [list]",
                                                    "textcolor": [ 0.501859, 0.501859, 0.501859, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.683403, 0.543763, 0.321212, 0.11 ],
                                                    "fontname": "Helvetica Light",
                                                    "fontsize": 14.0,
                                                    "id": "obj-11",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 735.0, 6.0, 77.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 7.0, 111.0, 210.0, 20.0 ],
                                                    "text": "Monitoring"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-161",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 195.0, 170.0, 76.0, 22.0 ],
                                                    "text": "delta.size $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-159",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 316.0, 170.0, 77.0, 22.0 ],
                                                    "text": "framerate $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-157",
                                                    "linecount": 2,
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 195.0, 230.0, 99.0, 22.0 ],
                                                    "text": "s #0-derivative"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-86",
                                                    "maxclass": "number",
                                                    "maximum": 40,
                                                    "minimum": 0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 195.0, 138.0, 50.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 10.5, 34.0, 50.0, 22.0 ],
                                                    "varname": "deltaSize"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-97",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 195.0, 92.0, 41.0, 22.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-82",
                                                    "maxclass": "flonum",
                                                    "maximum": 1000.0,
                                                    "minimum": 0.1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 473.0, 139.0, 50.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 10.5, 82.0, 50.0, 22.0 ],
                                                    "varname": "scalingFactor"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-81",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 473.0, 92.0, 41.0, 22.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-74",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 316.0, 92.0, 41.0, 22.0 ],
                                                    "text": "set $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-42",
                                                    "maxclass": "flonum",
                                                    "maximum": 1000.0,
                                                    "minimum": 0.0,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 316.0, 139.0, 50.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 10.5, 58.0, 50.0, 22.0 ],
                                                    "varname": "frame-rate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-178",
                                                    "index": 4,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 316.0, 44.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-179",
                                                    "index": 5,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 473.0, 44.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-180",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 111.0, 44.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-184",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 195.0, 44.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-185",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 42.0, 44.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 1 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-27", 2 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-157", 0 ],
                                                    "midpoints": [ 325.5, 213.5, 204.5, 213.5 ],
                                                    "source": [ "obj-159", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-157", 0 ],
                                                    "midpoints": [ 204.5, 213.5, 204.5, 213.5 ],
                                                    "source": [ "obj-161", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-74", 0 ],
                                                    "source": [ "obj-178", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-81", 0 ],
                                                    "source": [ "obj-179", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-180", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-97", 0 ],
                                                    "source": [ "obj-184", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-86", 0 ],
                                                    "source": [ "obj-185", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-201", 0 ],
                                                    "source": [ "obj-198", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-202", 0 ],
                                                    "source": [ "obj-198", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-201", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-202", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-198", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-12", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-159", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "source": [ "obj-74", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-82", 0 ],
                                                    "source": [ "obj-81", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-82", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-161", 0 ],
                                                    "source": [ "obj-86", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-86", 0 ],
                                                    "source": [ "obj-97", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "s2n" ],
                                        "saved_attribute_attributes": {
                                            "editing_bgcolor": {
                                                "expression": "themecolor.theme_editing_bgcolor"
                                            },
                                            "locked_bgcolor": {
                                                "expression": "themecolor.theme_locked_bgcolor"
                                            }
                                        }
                                    },
                                    "patching_rect": [ 489.0, 260.0, 377.0, 21.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 84.0, 4.5, 47.0, 21.0 ],
                                    "saved_attribute_attributes": {
                                        "editing_bgcolor": {
                                            "expression": "themecolor.theme_editing_bgcolor"
                                        },
                                        "locked_bgcolor": {
                                            "expression": "themecolor.theme_locked_bgcolor"
                                        }
                                    },
                                    "text": "p more",
                                    "varname": "more"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-76",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 593.0, 50.5, 97.0, 22.0 ],
                                    "text": "getattr delta.size"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 695.0, 50.5, 97.0, 22.0 ],
                                    "text": "getattr framerate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 154.0, 508.0, 140.0, 22.0 ],
                                    "text": "t l l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "float", "float" ],
                                    "patching_rect": [ 154.0, 537.0, 70.0, 22.0 ],
                                    "text": "unpack s f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-27",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 154.0, 481.0, 54.0, 22.0 ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 154.0, 452.0, 109.0, 22.0 ],
                                    "text": "r #0-mubu-scroll"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 392.0, 555.0, 110.0, 33.0 ],
                                    "text": "hack waiting for autobounds bug fix"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 113.0, 566.0, 111.0, 22.0 ],
                                    "text": "clip -1. 1."
                                }
                            },
                            {
                                "box": {
                                    "autobounds": 0,
                                    "autoupdate": 120.0,
                                    "bgcolor": [ 1.0, 1.0, 1.0, 1.0 ],
                                    "bgcolordefault": 0,
                                    "bounds": [ -7.0, 7.0 ],
                                    "colormode": "pattern",
                                    "colorpattern": [ "black", "steelblue", "blue" ],
                                    "domainruler": 0,
                                    "domainruler_size": 17,
                                    "fgcolor": [ 0.129412, 0.129412, 0.129412, 1.0 ],
                                    "fgcolordefault": 1,
                                    "first_cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "first_cursor_size": 3,
                                    "first_cursor_value": 0.0,
                                    "first_cursor_visible": 0,
                                    "id": "obj-101",
                                    "inversed": 0,
                                    "layout": "juxtaposed",
                                    "length": 256,
                                    "matrix": 0,
                                    "maxclass": "mubu.scroll",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 298.0, 593.0, 132.0, 10.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 2.0, 28.0, 428.0, 182.0 ],
                                    "rangeruler": 1,
                                    "rangeruler_size": 1,
                                    "sampleperiod": 10.0,
                                    "second_cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "second_cursor_size": 3,
                                    "second_cursor_value": 0.0,
                                    "second_cursor_visible": 0,
                                    "shape": "lines",
                                    "windresize": 1
                                }
                            },
                            {
                                "box": {
                                    "attr": "bounds",
                                    "id": "obj-35",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 338.0, 525.0, 218.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "bubble": 1,
                                    "id": "obj-31",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 489.0, 49.5, 90.0, 37.0 ],
                                    "text": "mubu.scroll config"
                                }
                            },
                            {
                                "box": {
                                    "comment": "mubu.scroll configuration",
                                    "id": "obj-9",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 455.0, 55.5, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-11",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 213.0, 386.0, 94.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 38.0, 422.0, 194.0, 22.0 ],
                                    "text": "vexpr $f1 * $f2 @scalarmode 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-18",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 213.0, 358.0, 116.0, 20.0 ],
                                    "text": "r #0-scaling-factor"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-29",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 213.0, 284.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 38.0, 320.0, 194.0, 22.0 ],
                                    "text": "vexpr $f1 * $f2 @scalarmode 1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Sampling Rate (Hz)",
                                    "id": "obj-3",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 269.0, 55.5, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 10.0,
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 213.0, 256.0, 114.0, 20.0 ],
                                    "text": "r #0-samplingrate"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Delta.size",
                                    "id": "obj-10",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 182.0, 55.5, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "delta.normalize",
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-15",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 104.0, 174.0, 218.0, 21.0 ],
                                    "text_width": 160.0
                                }
                            },
                            {
                                "box": {
                                    "attr": "delta.size",
                                    "fontname": "Arial",
                                    "fontsize": 11.0,
                                    "id": "obj-26",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 104.0, 141.0, 218.0, 21.0 ],
                                    "text_width": 160.0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "float", "" ],
                                    "patching_rect": [ 38.0, 212.0, 334.0, 22.0 ],
                                    "text": "pipo delta @delta.size 5 @delta.normalize 1 @framerate 100"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Helvetica Light",
                                    "fontsize": 11.0,
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 0,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 1059.0, 88.0, 807.0, 530.0 ],
                                        "openinpresentation": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-4",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 496.5, 134.0, 148.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 70.0, 124.0, 148.0, 18.0 ],
                                                    "text": "Max value for display"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 447.5, 164.0, 115.0, 20.0 ],
                                                    "text": "s #0-upper-value"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 447.5, 80.0, 113.0, 20.0 ],
                                                    "text": "s #0-lower-value"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 447.5, 32.0, 93.0, 22.0 ],
                                                    "text": "loadmess -1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 447.5, 106.0, 89.0, 22.0 ],
                                                    "text": "loadmess 1."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "format": 6,
                                                    "id": "obj-14",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 447.5, 134.0, 45.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 12.0, 122.0, 45.0, 20.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "format": 6,
                                                    "id": "obj-13",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 447.5, 59.0, 45.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 12.0, 144.0, 45.0, 20.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-8",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 496.5, 59.0, 148.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 70.0, 145.0, 148.0, 18.0 ],
                                                    "text": "Min value for display"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-9",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 369.0, 73.0, 70.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 60.0, 71.0, 148.0, 18.0 ],
                                                    "text": "Scaling factor"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-24",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 320.5, 112.0, 118.0, 20.0 ],
                                                    "text": "s #0-scaling-factor"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 334.5, 41.0, 76.0, 20.0 ],
                                                    "text": "loadmess 0.1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "format": 6,
                                                    "id": "obj-26",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 320.5, 73.0, 46.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 12.0, 71.0, 45.0, 19.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-27",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 320.5, 6.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-11",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 217.5, 73.0, 97.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 60.0, 50.0, 148.0, 18.0 ],
                                                    "text": "Sampling rate (Hz)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-17",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 169.5, 112.0, 116.0, 20.0 ],
                                                    "text": "s #0-samplingrate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 183.5, 41.0, 76.0, 20.0 ],
                                                    "text": "loadmess 100."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "format": 6,
                                                    "id": "obj-21",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 169.5, 73.0, 46.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 11.0, 50.0, 45.0, 19.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-15",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 169.5, 6.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-12",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 2.5, 6.0, 25.0, 25.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-16",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.5, 73.0, 110.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 60.0, 29.0, 157.0, 18.0 ],
                                                    "text": "Delta size"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.683403, 0.543763, 0.321212, 0.11 ],
                                                    "fontname": "Helvetica Light",
                                                    "fontsize": 14.0,
                                                    "id": "obj-22",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 29.5, 6.0, 131.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 11.0, 7.0, 209.0, 20.0 ],
                                                    "text": "Delta (Derivative)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-23",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 2.5, 112.0, 101.0, 20.0 ],
                                                    "text": "s #0-delta.size"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-51",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 17.5, 41.0, 70.0, 20.0 ],
                                                    "text": "loadmess 5"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 9.0,
                                                    "id": "obj-48",
                                                    "maxclass": "number",
                                                    "minimum": 1,
                                                    "mousefilter": 1,
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 2.5, 73.0, 46.0, 19.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 11.0, 29.0, 45.0, 19.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-5",
                                                    "linecount": 9,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 5.0, 210.0, 310.0, 107.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 10,
                                                    "presentation_rect": [ 14.0, 216.0, 211.0, 118.0 ],
                                                    "text": "It computes the First Derivativs along each axis of the incoming data, e.g. velocities from position data. Useful to capture time changes in continuous data.\n\ninput: \n     - data values [list]\n\noutput:\n     - [1]: 1st derivatives [list]",
                                                    "textcolor": [ 0.501859, 0.501859, 0.501859, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.683403, 0.543763, 0.321212, 0.11 ],
                                                    "fontname": "Helvetica Light",
                                                    "fontsize": 14.0,
                                                    "id": "obj-1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 5.0, 180.0, 120.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 14.0, 196.0, 209.0, 20.0 ],
                                                    "text": "Help [Derivative]"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.683403, 0.543763, 0.321212, 0.11 ],
                                                    "fontname": "Helvetica Light",
                                                    "fontsize": 14.0,
                                                    "id": "obj-6",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 447.5, 2.0, 120.0, 20.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 11.0, 97.0, 209.0, 20.0 ],
                                                    "text": "Monitoring"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-48", 0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-2", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-14", 0 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-13", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-17", 0 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "source": [ "obj-27", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "source": [ "obj-48", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-48", 0 ],
                                                    "source": [ "obj-51", 0 ]
                                                }
                                            }
                                        ],
                                        "toolbaradditions": [ "s2n" ]
                                    },
                                    "patching_rect": [ 576.0, 295.0, 43.0, 19.0 ],
                                    "text": "p more"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Helvetica Light",
                                    "fontsize": 11.0,
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 0,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 134.0, 159.0, 342.0, 193.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-2",
                                                    "linecount": 9,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 10.0, 25.0, 310.0, 107.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 11,
                                                    "presentation_rect": [ 80.0, 101.0, 157.0, 129.0 ],
                                                    "text": "It computes the First Derivativs along each axis of the incoming data, e.g. velocities from position data. Useful to capture time changes in continuous data.\n\ninput: \n     - data values [list]\n\noutput:\n     - [1]: 1st derivatives [list]",
                                                    "textcolor": [ 0.501859, 0.501859, 0.501859, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 14.0,
                                                    "id": "obj-1",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 10.0, 6.0, 309.0, 22.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 65.0, 86.0, 203.0, 22.0 ],
                                                    "text": "Derivative",
                                                    "textcolor": [ 0.501859, 0.501859, 0.501859, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-59",
                                                    "linecount": 3,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 507.0, 190.0, 146.0, 40.0 ],
                                                    "presentation": 1,
                                                    "presentation_linecount": 4,
                                                    "presentation_rect": [ 20.0, 53.0, 128.0, 51.0 ],
                                                    "text": "output: \n   - left: values [list] if open\n   - right: 0/1 close or open [int]",
                                                    "textcolor": [ 0.501859, 0.501859, 0.501859, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 10.0,
                                                    "id": "obj-58",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 507.0, 173.0, 153.0, 18.0 ],
                                                    "presentation": 1,
                                                    "presentation_rect": [ 20.0, 41.0, 153.0, 18.0 ],
                                                    "text": "input: data values [list]",
                                                    "textcolor": [ 0.501859, 0.501859, 0.501859, 1.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [],
                                        "toolbaradditions": [ "s2n" ]
                                    },
                                    "patching_rect": [ 115.5, 19.5, 44.0, 19.0 ],
                                    "text": "p help"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Helvetica Light",
                                    "fontsize": 14.0,
                                    "id": "obj-25",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 11.0, 15.0, 75.0, 20.0 ],
                                    "presentation": 1,
                                    "presentation_rect": [ 1.0, 5.0, 105.0, 20.0 ],
                                    "text": "Derivative"
                                }
                            },
                            {
                                "box": {
                                    "comment": "First derivative of the input data (along each axis) (list)",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 38.0, 559.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Input data (list)",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 38.0, 55.5, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "attr": "framerate",
                                    "id": "obj-37",
                                    "maxclass": "attrui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 338.0, 173.5, 150.0, 22.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 1 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-157", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "order": 1,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "order": 0,
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-19", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-197", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 5 ],
                                    "source": [ "obj-197", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 2 ],
                                    "source": [ "obj-21", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 1 ],
                                    "source": [ "obj-21", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-23", 1 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 1 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-27", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-36", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 3 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-76", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-195", 2 ],
                                    "source": [ "obj-76", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "midpoints": [ 464.5, 420.125, 307.5, 420.125 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "s2n" ]
                    },
                    "patching_rect": [ 47.0, 555.0, 434.0, 214.0 ],
                    "varname": "gst.derivative",
                    "viewvisibility": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-48", 5 ],
                    "hidden": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 4 ],
                    "hidden": 1,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 5 ],
                    "hidden": 1,
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "hidden": 1,
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 3 ],
                    "hidden": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-48", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 5 ],
                    "hidden": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 3 ],
                    "hidden": 1,
                    "source": [ "obj-7", 0 ]
                }
            }
        ],
        "autosave": 0,
        "toolbaradditions": [ "s2n" ]
    }
}
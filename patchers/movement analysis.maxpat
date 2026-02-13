{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 87.0, 883.0, 668.0 ],
        "showrootpatcherontab": 0,
        "showontab": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 883.0, 642.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bgcolor": [ 0.819608, 0.819608, 0.819608, 0.0 ],
                                    "bgmode": 2,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-25",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.gate.float.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 2,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 10.0, 73.0, 130.0, 115.0 ],
                                    "varname": "gst.gate.float",
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
                                    "id": "obj-3",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.kick.maxpat",
                                    "numinlets": 5,
                                    "numoutlets": 3,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "", "int", "" ],
                                    "patching_rect": [ 167.0, 74.0, 130.0, 115.0 ],
                                    "varname": "gst.kick",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpdetails.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "Gate and Trigger" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 363.0, 55.0 ]
                                }
                            }
                        ],
                        "lines": [],
                        "toolbaradditions": [ "s2n", "Modalys" ]
                    },
                    "patching_rect": [ 16.0, 159.0, 117.0, 22.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p \"Gate and Trigger\"",
                    "varname": "mess_tab[2]"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 883.0, 642.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 695.0, 240.0, 160.0, 21.0 ],
                                    "text": "It computes angles in deg."
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "linecount": 6,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 492.5, 240.0, 165.0, 94.0 ],
                                    "text": "It computes the orienation, projection on the gravitation axis, combining the acceleraometer and gyroscope data, suing the complementory filter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 232.5, 240.0, 155.0, 50.0 ],
                                    "text": "Compute the vector norm (normalized by the list lenght) "
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "linecount": 6,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 240.0, 155.0, 94.0 ],
                                    "text": "Compute an intensity, based on the raw acceleremeter data\n\nDerivate and integrate to remove DC component"
                                }
                            },
                            {
                                "box": {
                                    "autofit": 1,
                                    "data": [ 24744, "png", "IBkSG0fBZn....PCIgDQRA..APO..D.8HX....vxV+sh....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6ceGdUTs0F.+cOmR5gjPB8duH8h.BHH8hzCMwqnHpedsf8tH1annf8dGH.BH18JRuHfH8duFRumbNmY+8G6DHjLIj1ol2eOO4gjYlyjkH4rxdOq8dAPDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQDQD46P3tC.eXOF.t8xvq6o.vWUAGKDQD4iyr6N.7g0..T+xvqKjJ33fHhnJAzb2A.QDQDU9wQn673..4TLm2pAGKN.rXmS3PDQDQUzh..mF.xB7wXbmAEQDQDU5LeT3j4eoaMhHhHhnRkIiBmL+D.nJtyfhHhHhJ4pK.RDWdxbc.zO2YPQDQDQkbB.7GnviN+sbmAEQDQDU5LCT3j46E.A3NCJhHhHpjqU.HSb4IysAft3NCJhHhHpjyB.1FJ7nyeF2XLQDQDQkRu.Jbx7+FbS8gHhHxqQO.fcb4IyyD.szcFTDQDQTIWv.3PnviNeFtyfhHhHeSbZecddS.z3BbLa.nl.3kKlW2Z.vO5rBJhHhHpja.nviLuj9wa3FhWhHh7xw1mpyQqc2A.QDQUtvD5DQDQ9.3yP24Xo.33kwW6gpHCDhHhHhHhHh74UM2c.PDQDkGSt6.vK1GAfjAvQb2ABQDQDU1zR.3..q0cGHDQDQTY22hKstw6uaNVHhHhnxf7FcddIz4nzIhHh7Bk+QmyQoSDQD4EpfiNmiRmHhHxKjQiNmiRmHhHxKRQM5bNJchHhHuHE2ny4nzIhHh7BbkFcNGkNQDQjWfRxny4nzIhHh7fURGcNGkNQDQjGrRyny4nzIhHh7.UZGcNGkNQDQjGnxxny4nzIhHh7fTVGcNGkNQDQjGjxyny4nzIhHh7.TdGcNGkNQDQjGfJhQmyQoSDQD4F0b.jE.rUDeXzH2sWLW+JcsgOQDQDURrTT3D5izsFQDQDUoml6N.HhHhnxOlPmHhHxG.SnSDQD4CfIzIhHh7AvD5DQDQ9.XBchHhHe.LgNQDQjO.lPmHhHxG.SnSDQD4CfIzIhHh7AvD5DQDQ9.XBchHhHe.LgNQDQjO.lPmHhHxG.SnSDQD4CfIzIhHh7AvD5DQDQ9.XBchHhHe.LgNQDQjO.lPmHhHxG.SnSDQD4CfIzIhHh7AvD5DQDQ9.XBchHhHe.LgNQDQjO.lPmHhHxG.SnSDQD4CfIzIhHh7AvD5DQDQ9.XBchHhHe.LgNQDQjO.lPmHhHxG.SnSDQD4CfIzIhHh7AvD5DQDQ9.XBchHhHe.LgNQDQjO.lPmHhHxG.SnSDQD4CfIzIhHh7AvD5DQDQ9.XBchHhHe.LgNQDQjO.lPmHhHxG.SnSDQD4CfIzIhHh7AvD5DQDQ9.XBchHhHe.LgNQDQjO.lPmHhHxG.SnSDQD4CfIzIhHh7AvD5DQDQ9.XBchHhHe.LgNQDQjO.lPmHhHxG.SnSDQ9V9R.b0t6ffb8XBchHx2x6Afk.fV6tCDx0hIzIhHeKa..y..+I.5raNVHWHyt6.fHhnJbw.fpBUR8ok6WS93XBchHxyRCAP.U.2mj.PH.Xg.3CAviAfDp.tuD4yXo.PVfOFoaMhHh7krAT32ioh3ij.vc6B+uCxEiiPmHh7rbPTwLB8pAfZl6mKAvuAfesB39RjOCNBchHuAMAp2e5r.net4XgbA3HzIhHeOl.va.f0Cfw.fy6dCGxUfIzIhHeOeL.rBfA.fLbywB4hvD5DQjukY.f5AfgBfrcywB4BwMVFhHx2hM.LJvj4U5vQnSDQ9VdG2c.PtGLgNQD4Ypp.noEy42I.Ru.Gqd.nVFbsGB.wUAEWD4yfKaMhHWgtCfcfB+9MoAfeA.MvfWyT.vgKv0eF.zKme3Rj2GlPmHxUwD.VEt72uocWgWi..GM2q8H.HJmY.RdNXQwQDQdtb.fuIeesc.rqqvqILbooce5.3BNg3h7.wD5DQjmsMkuO2LLdp1yu6Gp0f97Av+yIESD4SfS4NQjqjUnVJZ489MCtXt1n.Pp.HEXbwwQ9v3HzIhHOa4.fCjuutYEy09b.HX.LSnJFNpRDlPmHh77sm784E0RYq8P8Ly2A.lqSOhHONLgNQD44K+IzKpQn+1PUg62ITEOWIUyAvVAPnksPyi2l.vM3tCBxyDeF5DQtZS.W58aNhAmeh4dtOqTdeGI.R.p0utuptCfj.vi5tCDxyCSnSD4p0Vbo2uwATEJWdBD.mDpDykl0b98l685lpfhQOYWM.RF.uj6NPHOKLgtyQ8Av0Bft.ffbywBQdZ7GpoQOu2yok46bOWtG6NJE2u1AUw1UZGQu2r6Fp+dZPt6.g7bvD5UrhFpMJi7+2mYAfuFp8kZhHkCfB+dNMD.YBf+Fk7ZhxB.1NTiXs5UvwnmLK.3f.3TPs46PDSnWAZdnv+cY9+HNnd9WDQ.KCW5mMdvbO1hgZZy6bo397H4dOd2qv0I.PUL33ACUxwxh.fZ1FJHWUA4cWP8e6OsK56G4giIzqXben3Slm2GwBfZ3lhQh7j7R3R+bwGBf9k6m+dkx6ydx80EcQb9IAfU.fLf5WV3Vy83VgZJ5c.0H7EkvueCGp227H.PG.Kr.m+1y83yqDd+xuH.v5JlOtlBb8sCp+a+vnjG+jOLlPu7KLnltuRRBcI3ZpkH.faDW5mIVCTOppXAP3kh6QKy28nn9EkGATyL1xy85xaqm8KgpksdbnVq6kTUM262Rx89Yu.euuSboG0VoMI63QQ+9FqFWdwCBnZ1Moj646co76E4ChIzK+lBJ4IykP0bI3dl.UYWmQg+YioVJuG48yd53Jm7bP4ds1fZpp2JTSYNJAuViDN.hO264cWfy8pP87sKs9X.7UPsY6XAp859oB0rADYQ7Z1ctwvCTF994Qyr6N.nJktpR40GITEuyYcBwh2r.Pg6y01AveVDWemfZzR429gZDWjmu8AUhn7RltN.7Ekx6QMy8OSM26UwY8PM85lgZVxZGTEfGJAuVijHTS29c.fqGW9LuEG.9wxv8bc.HFn5Q7..cC.uL.ttbumFIuqsAkguejOFNB8xuWGktQnKAPccKQpmsZC0avVv+tpKFbsAiB+XNzAPGcIQJA.fSe5gGX47VbLboQM21xvqOue16zkvqe6njU.ckT4Mp+rwkFsOf5wGz9x48ttPUA6Wokk1+K2XX4kyuedb3zXRtCGpTd8oCN5bibZXb8ETvoyD.3+fBWIweA.1VEcPQ.yblPKqXGSSkIF83bD+DdNGIE8OHSL5STC+C7QJm258l6eNWT5dN14I0b+yB9rkKJ6L2+rhpJzWMTOqbqPMZZ.fQC06Ir8xw8MHnRP+x.3WuBWadyvgd436mGINk6j6vJfZemtjtzWVAJc6M0Ul7RP0PNx+5pcBPsrlhMeG6NKvqKc.7DN2Pqxgyd11FTMrz313vr41aR5ncNDlZmIIZqTSDjD.BM0rjmV51s2v1shA.0FnTeJie61CTiLelkwW+wx8OKIInaFtzdfdAqV7xpLgZZx6GTEJ2pgZiwYBki6o.pmi95QIqR4CI2+zmaPBLgN4NbJnVpM2SI3ZyF.OqyMb7pkH.dEb4aokVAvsAfmO2utO.n0E308pfsWyRsziaz0IPMs16.ZsyDP6bng1K.ZrTHzz.fTXFp+rvu127cOn43hKmtix2HCmC.deboQZWZcrb+SqPMk2YVDWmE.7M.3yAvMC0yatNP8ytkWqBpD5cDpeQysAUgpUV87P8Hkt2R30mWB8SVN9d5QhqCuRukhB+LyGETa5CTIme.3mAPeKlqwNT6yzeqKIh7dE.TSYYsx2wNMTuIrcnJDo7uliOETcXqLbQwmWmcsqVYso0t0sxjDsSn4ncP2T60fncRSHhxx8SniTinQK0RhIlCfpPyBtBMfK4BFpQlFLTi5d8Ew08x.nq.n+.3nPsqMdC.36fZ4qMSnpj7NfKUU4yEkreYk9BUgalBTS+d2x86Qdr.0ZSu4PUE6+awbutA.7j3RMfkqDq4dcA.0+882kfWiWCNBcxcX3PUApCB.OC.lATMXh7amP8rfWkKMx7NkI.lE.9f7crZC0u34Zf5W3L+dbvj4EqVWql0ccA9eBMgI.y.lJak0cdzg84lXh43I7HNRC.K..SCpUHQdIzEPk7LKnVZY2LTEolNT+L3MBU0oeMPkTLuN912fKsuxGAJYOJfsj68MTnlotiVfym+JfepP0mGRvf6S2xMlOATqG8OFW4eght.Ux7Smab3SgEEG4p0KnVlI+O.zuYtRLyd8AMtWPkzYFPMUwcFpkHCSlWx8oPsWeme2ATyvQ9qUgs.09jOULDQrzUI0qX1dPE5xzRKc82nh3dUA4iy8OGd9NVHP8bruSnp+hwgK8Ll+pb+ydA0y++1Jh6aIsomjJTyRz9f5Wnu3DL.5gAGut.36gZajsYP8Ky9I467KBpJ5ufFPt+4yhx2uilGIlPmbkLA0Oz4OTiHe1Gzu1zxF0mf0gJYzlgZ4qbX3C9CaNY1QgKxs9A0zQle4sk6RWAliHlWR5P+JUwzWQ5PedUoNKMdn92848g6zFgZpy6I.FZtGKEnlQmG.pQlul7c8+A.FKT07ROfZ4Olm9B0zduVTzq66BJRnZyq2LTyHPAsDn92t2UtesQ225.fGFpc6sOFpGiwTAv8C06yLPnFoe9EETCZ3OgZqy0mCSnStRN.vvfpvbNaGty5cOlqZP4sVTeCnl9u0iKsbVnRmEgK+YBJvkWMyKBp23kJYjomYVSQnWhWy1EhPWld5Yj8rg58ZyL2ORuhJ.KGtCnl17WEWZIr8+f5mCK3L8HgJI6bgJwe9cdnVlXMAkrZcQ.09A+KA0uXQQ4OgZonc.X7TiuAnl4f0.0p7nUP8nDdUnVULI.fmp.ulWFpGy7sBeTLgN4JDAT+Vy.ps2wdz3ni5VZy8VqbqTW19yq.8nEwwyFptrEUJDZsWQbPJmnTV1V1j5R7NgV6UTRG4pqTJPME60BphlrrVOUMDpkg12.0n9uRdNn92hO+U35dXnl9+wiR1RV8..XhPMJ7mFpsB172DXdRnVu6iFE9Y16yfEEG4rEJTSY2If5G3xZJauW9qEfsKVjK1TiOXk3RE9BWNUkc+I.9Mnlxw76swkJjIpTPDQLq0dhi6IDBsWoT85zkYjVVW1ywMuoW1QEWzUtrEnpWkk.0nqmDJ8wVGfJI82TDmev.X9P8d.mEpZiYH3J+XeZLTEv1EJkwShnvUt9LgZUdzEndbd9rXBcxYxJTKmuNj6G+3H2bimpV.1hJ+Wj+1jBnlpLphwWgBmPeoti.wmgPOCoTnKDhR7rZpKkuan0ZQ4kPRGW9Vcpmhi.0yE+IgZojVZW8CK4Jb9ZBUOUerPULrCDF+byKnauTFGEGITOFuztRWn2NlPmblxApVuXe.fLn5YcYUoJQUyh+kPU.741RKcWtvE5QHQZp1ehTHJpdGtgD5xLROGyFUk0dhx.pkxnyvW.UQsUZa4pUjpzrwTwD5jy1iBfXsFg4fG6u2lhqHX5KtTmfZkvGbaYj7tjSRitKVzs7sRSnIk1Wqt.ueH0X9mu.GN+U2dIYTp9BzAvO3tChJKXBcxY3ofpPY9S.fgsi17YQEjeMQ2tYC2YByVji.phfYv4dng.lPmbirmvXmh.ZerzD7qz9ZE5HyLxI8Wq.GNupbGPkjyDHpBFSnSUztWnlhqrAvTdn817e8bV7uw51MwsYXxi24OezAWMK3iklDEYyBQJkeN.hPHDivnyqKjePvU+mNmyJFIpnvD5TEoffZic..vOng+SrVh5nBG1KIERDqxcxsJ6DFYaLogXjBQyM57BcjJD5SSKrEEShINxvBS2x+HMo0f7eMRoLqLywZQUfmdZU4N4igIzoJRoC0tO0uAAhezqnMunzg8R5TKxpbmbarmzXlfIo4OSJLtRz0cH2tMsrhNfv9gCA.Dd3KKobRZzi2jTasBQ96s3hOL3p8MF83h7TqxcxGB2XYnJBsBWZ2l5jA1p.6a++3l8ngz3fJQUasYQ.b53qXkBTUVb9+vSX2IyiyoO8vCzQRQ+EZByyWpYbBWoDe8QhK0tkWx77XMru+ukP+Auz0IyNKaYUpVq5DUQhiPmJuZETa+haC.idlqDYc1Zz4nxRKmbJk2GVk6UbVAT6XVTwPF2DZoCyxEIDnUFcdgtLMGBbalCKlhbGPybXKZtNRH5dKLIFmlCwGETTKu3dbQUFqxcxEhiPmJOBGp8w4HfpuIufST6d1rrzxorL0hOLT61TeCT6lTD4zHSbLiElz2hVQjLWWG6La6nyEWx77jnt0ooKwdxPl9KWLWlm1d4N4ChIzoxiDAv6l6mmZSGcU9XGR6A6NCHhJNm3DcK.YBi6SjZlWjTSDnQWivgbAmI0Sb09GUL6ujbOiLxuIkjrao6AE4OVlahKDUQfS4NUd8R.3B0oWglY2e4VVldCMS1xV.Vk6jSVVwNplY1h0EI0PaL57BcYFNjx+OyQrnurzduiLxuofcgLCCgb+SVk6jSASnSkVVgZOY9iQt6.T2z+b0+gLPQ0Jq2PaV..qxcxIRlPzi.B7MRMX3LHoK02qIG4LNyQt783jBAVk6jSGmxcpzPC.eI.FATMkgodq+aWqS4IYNQNSG3.C1OYBQ+9RShkI0DFlLW5Pt3ymdVcV37RlSjKAGgNUZDI.5Ttet4.B2Ryxwesx8aBpaWJ.qxcpBVlIMpFaQ2xhjlDs2nyKzQlNf7tLGQLepKJjXUtSNULgNUZDKTabL+r0.E+czarsUHsjybqLItWtW9UenZUjmvcGHtaxDidbPJ+DoIQnFcdco7.Nj4LN+hXY6zEERbubmb53TtSkDCGWLuKNeGdnpN7Iuo18w.VbmwDcI0..y..uF.RxMGKtU6ZWsxpiDh9UjZhXjZZFlLWJkKO9rQmbgIyIxkfiPmtRhF.yGp9Z9vFwdat8pXIzZo6nhqYqjsPxpburIB.Ld.bcPMhucB0tDWkRYl302PKR+WnvjnyFcdoTlsDx60bXK5Cb0wVtXUtSNULgNUbZH.9ZnlImtKLId6fQPyQ3vjyXlcXUtWxEJ.FMTOZh7OMIEW+l2mlLwwOJHkelzjHLiNuvANjMAh1uvWz1c0wVtXUtSNcbJ2ohyQAvC.0aFsuANmF8Il0rxm8m6S..XBPsY9LBb4IykPMKJUprksbaVbjXzOuTCeeQkLW5Ptn30szI+BOF2UxbhbI3HzIiXA.1x8ymmUq37c6IZXRUefQkgy6aGqx8hgEnFM9X.PHEw0rOn149pzHiDhtdV0RbgBg3pM57RIxQJ0eJyQrHOkY+gU4N4TwD5TAUK.7W.Xl.36VnDlV9d67d0LY1vsIyJPrJ2KLS.nePUGCQbEt1JUS2tLgwNb.wWHEF+2KBG3n10zFu0vW3Vb0wVQfU4N4zwD5T9kWyVooP0jTB+mOX6+KWPxb5xI.PufZ50qQI70ToHg9JWIL261F8SJMIlYQcMRG5KMYgsaN7vVVk5J9mp7gIzo7K+SIn8Z0yPxzgzeWUyVgU4tRW.vjAP8JEulCBUOO2mV5wMrZ6m4.VfPHtFiNuTpaSpKlk4HVzK3pisRHVk6jSESnS42YAPuAvxi7pBJl9+Isd2tpuwRIdMg.RW02OOPsA.2.TyNRo0FpfiEON1RZzCVCl+JgPDoQmWnKOgvgb7hHWjmZgAxpbmb5XBcR.fGB.uOTqg4DG5Va4ThL3pTc2aXUoQSgJQd96.XB.z..bZ.jSI3d3olDqbagKLZSio+3QE.OmPHLbuOPJkqHEQx2TXQ9aIXz4IpxBlPmdc.b+.XR.XvQ+Ocyb.ABWdxbg.8EW54EWYnJ2qGT+cdWM3bMA.UE.gAf8hhuhnOJ.NWEdz4AHsXugZ5ukrmullVuM57RIrKg9yaNrEMKWcrUFwpbmbpXB8J25J.tub+71aIBKOX.AhXbSwxCgJWU4dXv3kfVifJYN.fe.n0PsjzRuHtO9jS2tsjFe+0fsuQHzLrS9IzwoE5XBhptn04pisxHVk6jSG2XYpbay.Xp.vtvBV1X+ylrH2b7TYxN.vSB0xCbW4drF.fBl.yB.ZIJ5D.9TU29LmIzrmzXeDMH+UgnP+cA..j53WRMiLZunpKzaIYNQtDbD5UNUMn5bZ..eYnMvuyOjOoIoZMfPbeEklF9KnWorJ22Ute7..nEFbdI.NFLtxnOETOmceBodtIV8.s53aEBw0Yz4kRoCHwKaJ7XdJ.uxBnjU4N4TwD5U9za.7SP8by+vn200FbHlxHd6ZNk8m8Rt4G8qiwGSk02naP.nGPM05ACfZC0dB..vwQQujz7YltcYhisO5B8uSHDFtt6kR4Y0zcLQQDKY0t5XqBBqxcxoiIzqboM.X4.HH.7AlC.9Y0uzVmccKt+G8RztqGcuaWu.vzy2WmF.1OT++nK.URfhpy14KjPWHiO56SWfWUHL9wJHcn+GYjcx2PH072i0nySDo39eibxU5r.3.494m4ptuZeHS5V7H9k5L4O5CTanJSFWZOc2WWmAvcCiSX+U.3FgpnEWKJ7TLeVnF8tWqTN8vizQBQ+KRyhYKDhBkLWJk5RG3Ud12ZQCxGIYt+46Chpv4Q7l4jKSb.35f.eVSukZ7cs8lpa7t6.JONxFODTS8LPkipbu0.3AgwE61JAv2l6meR.7l.XA.XbPMhdM3kWLbxDhtmPHluTC01vyK0OutTLYKQrv+zUGaNIrJ2ImNlP22Wn.XNP07ShCKL5Lukq5nyxN2e1cmZL.dLb4s+z7rInZOpEbD4mA.uM.VHTccs06LCPmHg8DF6cqqg2nnmhc4ekosLlTvU+m7IWe8D4rvD5917GpmY90BUQWMno0xCEnMS94wkLWSC+ktNxaFC7kqx8ZC0xUynBjZG.3MfZDbEkyAUBeuNIkz.iHDTkuRHDC0nyKkRI.dym8sh4gl0rJ1+NvaEqxcxohIz8scsPMEs..MKx1EvnsY0OOxQ10gMiYu0NewdvtupnfZcmGpAm6..3kAfcWZD4hHiazcCRyKTpIpqgmWJiSGZ2fkvVvu4piMWDVk6jSGKJNea+JT8R6rCoNA7RCcgsyiLYdkDgAUx7pZv4NA.dA.jsKMhbQrmTz+e5lsrlhJYttTt1rrmQ68gSlSjKAGgtuoN.f+I2OeIMaR0r+c6YpeIoIe31rqqAWKtztjlu1d4dP.3ofwUu+4.vrfZ4p4SIwDGYXgJr94BgXjFcd0TrKl6R9Mb+ie7+Xkgogl6k6jSESn66YFP8bXeH.L6aYqcnV1C1OO5j4..YmCdP3aVk69Afm.ps00BJAnRlmjqLfbExIoQ2EK5lVnTSz.iNuvARPHcbihptjex0FYtMrJ2ImNlP22xHgJYt..ud.0xuLsGreawMGSUlYFpUWPyM3boAUxbeg0W8kwdhic5BXZdRSvpQmWWJ2XNxbFefUcYmzUGaD4KiIz8s7W.X0.3Z0LI1vv+hFuC2b7TxYRaUvttuTUtKfZ1RZuAmKK.7bPsWr6yHt3tgPCWKmOUnIFaQcMBc46slsGy8z295aV7eWArJ2ImJlP22Rx.Xvl7W7J8+iZ02GP8Bwiep1ySzauEyNlqZOdMwaIv+G.5tAG2F.dI.bHWa33bkchinCVkYGizjViM57BGxj.zlpHhEtLWcr4gfU4N4zwD5d+ZMTqK4IAfy7.ae.lhK3L+RoC6dUOit+wZNE09Ut2n+C.5mAGWGpGIxtL3bdsrmXzSUHv6K0D9Yz40cn+21DlFe.gufi4hCMhpTgIz8tUOnVZZ0F.qOn5DzvOWPIX0jCKdUIyA.NYmO50BfHy8K8lqx8IBUsLTPR.LOn5A89DtvE5QHQZp1ejTSLgh5ZDNvGsuyrm65p7sl8kxJVk6jSESn6cqC3RK0qvqWeCt0lzsbT2Y.UVkcpNte38Wk6CBp08uQ9T.rJWXr3TkcBisslzzhQJDMynyKz0SAP+VDQrjE6piMOTrJ2ImNtwx3caY.35AP7MbvQdec4IanWYxbfht+f5EofsA07a9P0C58IXOgwNEyZZaRqHRlq6P9OYIr2QQ3LYNQtRbD5derBfgAfuG..KL5+ne56YH0tCg3UmSzjEsUaOGu1pbu3ZCpeO.7IZ16m8rsMnpEPKdeg.SontFoT94GItTuil0rewmbWuqbhU4N4TwD5dWzfpOYOd.7rRIdlotyS0Toed2IyA.tg82q23KZ3p7FethWo1f523ZCGmiriehs1jI6wHDnkFcdgNR0gv9zMG1RVfqN17Rvpbmb53Tt6cYFPkLG.3oipmU4Vj9IMpQePtFkk1fpWG6IMlIXUywl0DZFlLWWWtirskSmYxbhbu3Hz8t79PsbnFZ.U0zmMzOsk6zcGPUT95NswdCuqpbu71FT83chSzs.pcn08cEBwTkEwb.Ik3qOYRwN8F5cN6JtZrJ2ImJlP26fU.jC.x..iL355+Cd8+bq+S2bLUgROwre..Lvb+RO8pbu3ZCpGD9.sAU4EFSKbXVKFgPbUFcdgtLcGR86vbDK9qc0wlWJVk6jSGSn64a7PsMgNX.bzQumNEUHlr3SkLG.PJf2xjSekZCpOO7xaCpxDGyXAL8EZZhfL575R4tM4PKZyQFydc0wFQTQiIz8r0enJBNq.Xc0rmAGcHlrXyMGSNEZVwpzyBwk6W5oVk6EWaP87vKuMndzids92fpT82VpUjK+NHbHWv4yLyao10dEY3JiMeDrJ2ImJlP2yl+H2e3Wngja2zpl+PsWf6y4VWam1q+8H6...H.jDQAQkyG14s5Imj3J0FTeF3E2FTyJ1wzTyVLEiTCsynyKzQlNf7NMGQLetKNz7Uvpbmb5XUt6YaE.XfBA1U2e9F8.UqGUKU2c.UIkOcaP0dRQOd+rXdqZZBCSlqKw9xQ2VWMGNSlSjmLNBcOO0F.iA.yE.X.au5+ST9U6oZVypOcQz70CXW8BW54R6IUk6B.buvGrMndfCLX+Zb0B4EEBw8WjUwtC4huP16+lpYM2Q5t1nymDqxcxohIz8rDNTMakVCfFU+UV+GqZAEYyMo680rUJsxH4rue3YVk62A.5gAG2qtMnlYRStQVzyIFgPzQiNuTJyRJ0uGyQr3OxUGa9nXUtSNcbJ28r7DPkLG.3NC5Kx95Moaoxxuzkm3tc2+ApBSrf7paCpxDG6X7WZeaZlzLLYttTdP6516l4vYxbh7lTYIYg2hGGpVh5XqQWC4I57i0fi6tCHWEyVwprmEtPteomPUt6y0FT2xVtMKcnQI97RMwCWTWivg9BSzwYt0nhZ8rdMp3wpbmbp7DGUjmtkhB+F8iBpNeVYg.pcHMUxrngo5lTDSouyqYUpViuQkYH6d1s+28TdNsCB.2VQbtOAdgcNsLRXn02JBdgZlPWM57RoLaMG3wEUMl2vUGaDQUL3Hzc+lMT8P6AJkXeSae8nI10zqTkLG.37U2cGAWjOWaPUlPzi..etzDB2nyKbHOhMgHZ+p5B2lKNzHhp.wmgt60i.f6C.0A.qo02b85qcM8p3liI2hkzg+rW.Xx49gQabKtBcB9PsA0UtRX1QhQ+7RShkIMILLYtzgbIIhD6negyj4t.9muOHpBGGgt60eCfTAPHVBVaiscFQ4oLkytbYDq98CfAj6W5Npx8VAfGB9HsA0Lhej00pIqKPHDc2nyKk51jR7jliXQupqN1pjhU4N4zwD5tW+I.5q4.0dpQrrN9pVCvr2wtYtumFCUAI5SzFTkwO1gnaR6qDBgQ627PniiaWXe7VCeodcE1GQTQiIzc8tVnVJTOE.vMsqq8zRKY+ht2Px8yr+hUaOCo6nJ2uRsA02DdIsA0EtvnMM19gmR2DdZgPXXAuJkxkmhHioFVX+Xht53iXUtSNWLgtqU6AvxgpsaVyA7qA83RKoUOiGXXkKCcqM8sVdK2uqdoRURZCpdE6c9oegQTK+rf4KDhdYz4kRXWpKeFyQDyK3piMB.bubmbAXQw4Z8eQdIODXnN1Q06DSlqXzljtSlOSaP0VRid.9awusqUDIyE5xSp4P1alLmHeaLgtq0c.fOE.I15+acuu5LhpEu6Nf7T798+Ptxpb+J0FTeV3EzFTm4Lgl8Dh9Izf4eUHDQYz0HkxeNkzs0AQUiYCt53iJDVk6jSEmxcmup.0FGygAfiaaKc5t21xhcosZJ097t43xiRpmWeFv0Tk6kj1fpG+yWNsyOzZDfkf9VgIQeM57RozgDxmybXK5YgWTA84CiU4N4zwD5NW9C0yLuE.XH28AZxtSGVaNSl61XBEeaP8YgWPaPUl3X5qtP66DBggaGORo9YzzMMQQDKXMt5XiHx8gS4ty0mBfdCfpAf+7.KS1c6RIen4Fvr+h0.fuM2ObFU4t..y.EcaP84AvIcBeeqvLyYBM6IM1GQWX5ODBMiSl6P96omgn8LYtGorx8iLuRWHQkEbD5NWuMT6K3QDVyB3Cq9HhJC2c.4oZz+0081wz4+HYm32hhqMn9xPUU6drR4LQGUP9iuQHDCvnyKkRcHwKYJhXdJvoX2SDqxcxoiIzct1HrfdGVsC7VFwOz1E4tClJwtRsA0c5ZCmRGYBio25ZxuSHzpkgmWhyoIcLYQ3KYkt5XiHxyASnWw69gZmG6tgDxaXGswtI+CZAt6fxS2uLxU2SnJfP.0VsZEUQw4M2FTEx3i99z0vqJDBCKhJoC4elQNllbH0XIrtL77k+paOqh7pHpLhIzqXci.30QtsD0w7CMallZdPFsokPEP5m21LvkFEcEUUtOHn5jcF4SAvpp.9d3Tj7oFUUCNXKekTHFhQa4aRoTG5hW6YeqXd7YMKuicxtJ4XUtSNcLgdEq9gb6TWZ9oUeSADRj.HG2aHUoUOQQ2FT+Z3A2FTkwO1d.MsEHEh5X34kxKnC62fkH99e2UGaDQdtprjPen.3GKgWaSAvgJieetY.jjvrn+8+KZ4iEP8rvj4kPl8WrlbRSl2RFq7Vk6cB.2CLtMntBnZEpdjrmvXuGcMSyVHL9mM000Wc11yYRAE0xck628TECtWtSNUUVRnOnR30MGT1RlW+b+S4D2wU8RIsOyee0Zm+booTJLoc1l29KZ3+lTEvs5J0FT+7JfuGU3RJogEdHHfuPHztdiNuTJk.3MWxuKd3wO9kyDBdeXUtSNcUVRnOPnl56kCUB67uGc2JndNq+D.dvx38+E.v19u6oK6MUS50uZsyBSlWJEWp5F1cvJkZD7BaCp4jzn5pEo0EJ0t3uX3kQJkwq4P+FEUcw+rqN1Hh7dTYHgd8fZmZaT.XYE3bUEp2neWPUMzk0Q9DLDXQwdrzGW.MNTNM6kAqbj6+Zvk55Ykkpbu1Ps+raznf1I7PaCp1SJ5+OAjukTy3tzitTt9rsaeBAE42eJWcrQU3XUtSNUUFRnaFp8m6BlL2B.VDTIQ5O.JOstybZ7Hi7oYx7xtrNos6Ek8pb+J0FTeI3g0FTSHg9WkpfH9Lg.i13G0OfTh2dM+SLOPe6Kr6hCOphGqxcxoqxPB8i.fYYvweG.zc.bc.3XkmuAgUe++7q4UZx1KO2CpLqJvKqMnlSRipSVzsrPoIzHiNuvgLQ.wMoEwB+AWcrQD48pxPBcibuPsjltQ.r9x6MKzlFjG81Fp2.yAaZs4jj8RaUtGD.dZ3E0FTsm3Xmt.llmzDrZz40cfMmCRe7AFwOcbWcrQNcrJ2ImpJiMmkACfYCfWDp0iL4A3FWammK.tgb+XGkfWhePU.bMvfy4w0FTuvE5QHxDF2BzzL8gBgwIyE5x2a6GIrdxj49jxqJ2C..A6liExGUksQn2R.Le.rT.7jt4XgJ6xqMn1BCNmGWaPM6Dit8VkhXjlPSL57BcjLfsaVD926wt93Ih77UYJgdUAvO.0xV6+.OvkuTkYKdT+60.fPx8KKtpb2qpMnZOwnmpPf2SpcYU37Eo6.a0ll4wGPXK7Ht5Xib4XUtSNUUVRnmWEsG.T8mb1FS8vjxwy5dgZqyEn3qxcuh1f54OezAWMqhOPpgIWTWivA9n8clccWW0UsGt5H78wpbmb5prjP+c.PWgJYN2xL8d4UzFTyN9QeUlLgEIEn4FcdgNREB8oIhXQw3piMhHeWUFRnmWEsuVT9Vq4jSjk.Mu1rS1Vds.Ti9ktl.J51f56.Oj1fp8DF6TLIL8gRgwaym5Nja2lVVQGPX+PYseAPduXUtSNU95U4ddUzNfp6asO.79nv+hL9AiW5SjAtvlRI3s7bmnUGc4wGkQmOqTyQaKO2IZ8Q+ijBqjdOu0Mz9hqJ2GD.FeQ7R+T.7WkzuONKm9zCOPGIMtOWyjouRpYbxboT94mL4X6NSlWoDqxcxoyWdD54UQ64+YUI.vsC0yTeZ4drf.vd.PcAv3.vRbgwnWg32VlAtlG+.2bVIXuY1R2dik1kQA.XZIZ6pginpSqfW+R62NeibR1V2w2blbN23p1c08muQ+6U56QBZIWT6k6d7sAUYbSnkNLKWjPfVYz4E5xzbHbb6lCaIeqqN1Hhp7vWdD5WO.9Nn1C2eZb4U97s.UwUAnZnG0Cpj8WsqL.8VXOibLKb.ylCP67He+aFGYneU6X1mpPKEK6oYWsbxjv5oWSxCqj7832F4w5A.lbtej2rkTbsA0eDd.sAU6IMlI.S5+sVQjLWWWeWYaGclIyInpx879fnJb9xIzeU.7+A0d39yAUeN+9.vEx87yCpQoeLn5Da..q10FhdGpdOqRJi72a2aMtU0gWr2ePKlnvr3hqw6i9KwWnD1UqiA+dHumSnVI64El3QrcO.3ax8i1gqbaP8yJs+2QEoSbhtEfLgw+wZByyWpIBxnqQJwWelTOUW8OpX1uqN9HON4Uk6YBfzcywB4ixWNgdAkMT867FA0H1iG.eL.RApjOOFTi5iJF0umUIkHaUHeSdecZmM69UvqYfecqWVs6dUdd.fPhxuxx5qtFvCtMnlUripY0Jj5tQoITnG2..fPWlgtC4TME1Buw5UuMxVoKQjKQkoD54IMnFwd0gJ4daAPDPsFloRfVL8Z9qH2Qf6vld0+2W6TMsfWiI+MmN.PCFTjanjbOsDp15.v2B0znOJ3g1FTsmz3mneVrrUMMQaM575R88BGY2EyQDyW3piMxil+PMnhbx8OMrvIIp7nxXB876nPkjf6ZSkBMbfgmn0PL8O480GaMIdME7ZtvdR45rFroc17oUsRTe7dxan6yCpc.t3fwKqG2ZaP8.GXv94How+VZB7cRMggUorvgbAWHyCzEQjKeOt53i7XUE.71P8uq8C.VgJYdbP8KmFRQ+RIpzoxdBcpLJj5625x6yy7LY007eti9aIFdlwZ65BuUAWvdPeQZGexgC.dnsA0LSZTMtQQFxFDBbOFcdgNxTW29sJhHlIVyZtC97Qo7TKndDQ2MJ7HxCDpeA1MB0rERT4FSnSkI0p2UYS4844jliVmYRYewhW6ed0S7eLYVKwdO2FUhVRYma8okxVekyduvCrMnJSL5w4uz71zLI5fQmWWJOPNRGcyb3K4Sb0wF4QS.fECX7tEX9zJ.DCLdkbPToBSnSkIc3dq+gElEwA..I7eWu84aI.vAh47UOsSk43hrUA+UADleWwJbOmijY5+1MuqaDdXsA0csqVY0QRQOaolHFolVnFcMBc47iOazI+hXwkj18JU4x3.P2JgWaufw6BhDUp3KuwxPNY9Gg4skYr1FH.P76IkV.fc8uu8otCgIQh890a5Ub510xxVly+524XQgaCpZPMh7WBWpMnJf5YPBnJJtbbVGe2aaX0s40JvuUHDc1n3VJkYK00eXyQr3OL2CY0YFO73dkGun1YCKJiGp15LQkYbD5TYVP0Nvsk2mm1Ys0rMMyidUYFqsgT6tTk2If5YoX6fXR6YX6qu5sNDXWucE3TACUUtOEb4KivliKsNd+Wm0wG4PqSl0NJy6UyjwIyENzOrcY1c2bDK92bEwCOtW6wMbiFpXzxR40STgvD5TYVstlP2ddedNIaukGZ4w8flBTaO85iZ7uVbuNgIyNVv0tudYOqBuy74uYKWbIoYVSyTpezFpdpuvFp9HacuhH+GW9IaKJ4mr5nt91bMWb+hWSnoIm6lpZxy82q5.ZYmpxkc72cMgKe20D900z1E5kNtPS9AaoJxO32qx.5TmpxK8LsEe+20CDZn9YXqs7m9kykJNXW6o0O9YOPaqU8uXQNIfPHW35CPN60GPChp19coiCg7sNfeG3sNfe0I7pcYqo9cMyEZU9AawR0CJ7KaVxjKbgljKbglrZ05k8ylyblyTSJk74r58nz9+q3+ukJ2XBcpLqU2Z0NlPSsqWYOSGMyQFNZQiGUTuoEKFsevn3mztbw8cqcNm3x4ZKz4LaA2ZOG4F0DhbzDhbB1u.MGrMb0AGNt5Q2gd2t7ebjc1cGYao6isc8oC4c7P8OPKvj90DpofulanSCtiW1wg4dAXtW+mqd3c5RGOHKvgsqEUOowtjE0hu6QtuBNy+J4jiC4C8j6v9Tl51hCasWcEAkY+t+qaJcKu6SUBHHqHNw.P.hA7LCZp83RGOXqvR7CpoVhePO+vldOy63gEPv905pW2ACG1FxqL56rW4+3Ht5NLDWcG1GN9G5Zy+welpO3gi2aiW+mOkmnu4+3x2cCiP9taXDe1jep9bYGetaZ31l6lF9mOkmp24ONku2eOTay6uG5mdCy7hwSU7OHqx4s9AKm25G76M4G6Zx2wsHemMNP46rwA9QS5g69E+6e+Czh7c2b+ku6l6+6MgGraBgHGwEO9VtN4auwq6cF+C107cbyx2aC8w16sg97VQ+.cQHDYKDhrC1+.MKe+s1a47VWumaz2WGu3wsFfY471ROkyaK87MG6c0gKdb+Bvj7c1bOjuyl6wqM56o84c7f7K.Sx2cicS9tarau10ems8RG2eSx26u6p7sWeWesQbmW0EuOV7WS9NqqKx2eSc9kF9czZADYKfH6.s3ulbtquix4t9NNqgc6s7xN9astNHm2lZ+yOzau44c7.r3mP91arcY+NansO0fmVSu3wM6mHh.Csz1ll4tIHUtweqvRukhBT.K0q+U8g5y6zzJkaaryuy+86lSpN5D.PH0xuEO5U1gWs3t9eYb6pswtyzFRAOtEMy3kG8+cU2e+l3wbRgpw5756LZxVlgzjCCWOvxb767ZauWuJNXaXGRiJwlxmNqd+Ma4WdfRwKY7PUs6DUlwQnSkK9Ep0i..nYQ6rWybZ4bKtq8ut8C1TiRlqooIdrAL0M5RSlaxlFF3huA8lswmrnRlKRKrMp86S99Xxbpz5CugGesgGXvGtDd4aFpk3FQkKLgNUtXyl8PA.pyvi5EpV67uH22x2vScnFch+J9QWviaVHDOT+uwMOqQNMW2TNVySGgiQ8ounLpSLdgPTnYoRJgcwYa7WfkcyuDRJLtQwPkZA5mE8a9pu9u.W4so3CCfwVBtNhth3xViJy16md1Zm8Er06fpkeeeed4F92E00si4bl5enXhaLn.OhGADXZWyn18KOp6v0sUo1wMzAzzMc+ZlkFu1xsY4Bhc2yWE6t8GvkESjOoUri01OboAMIwk+u+sAfu..OBT62BDUtwD5TYRZGylk+4sO0KZxeSGeveRqeyh55122d1ZsyO5jiUJKbaPcxcYHG58m3irEWRiSSZSCCb4iWOpiOQiFUN.fHsv9ar5QNGjXDt7ckte6PQDw.aRB7M18gr96+Ce6t9FSSbj3OS6AvPAPX.HRnZgyqC.I6NiOx2CmxcpL4Wuwc8nNroGUWdp58PA0HqFtGqereLtpusW6zSvgcYgJ68wz99bhu9ld50CMoyOadTmMbL1u74jU6DSxnj4BGvg3bM5qwxt4m2cjLO1TBv7vVRydwmc0Mx3xrm7ZjQ11zVyd2QU..pRvU015usub7.nqPk.+GgZT4+DXxbxIvv0aKUrlHJvNaVUZTf+dCFVUOtaJdbpxJ0bz9q+6AGvt+7y0C+qh+mJrl3WlKcn+6cj1oyZLMaBU69Z2cVWC624mb0IG4Fd5iLIaoX2+BdtA1ptctEL0WZkVrp47etgs6uaK5xu9rR+xpdFcZgMywicesOK1TebaqRgf7ytttz5gdl0UsGM.gXW8rdovQp6kpMO2jt62YsK5+DYHg8OcsNs3uB4I58YAP7t63hpbfKasRuJUKasUdaGnembUI7h..BMQZVBT6n1R2QSaP+i7w607Zx5L50D61xLr0d+6cJoc1bBpfmqOMoSw+825q7agEZPE6NIW4ltPfArzwoW8COYgPX3LQIROrsg0Np2.wEdpN0XoD51+wVz0ObGgcuORWuvK8x86v6xcGOToSuesaehq4n6XR..ZBQJ5RY6.vwbuQEUYBmxcpXkcJ4DddetTWFr8L0qaKugZcmEUx7D2WNAuwm7.Sxnj4csdsI4u6le9+vomLOxKTEL1OdVxZbjoXTxboDNDw1fuCK8lmkmRxb.fOXX6ay8odYrnWYiQMqA7sscDt63gJc5bCa89LoYJC..coLFvj4jKFKJNpX0wGqI+35lwdaX1oXuoAWa+WWquq5r7FNvvMr6mk1wx1+M8zGdxIc3LKTEj29Z0zL95a8Y+iZDdXY4TC31rkViVtgGTZwdDFcZgMyIH1a2ecryNu6JpukYjsEsgsnVVgzsr9myEXWAf4+3nANspMmt0wmtmm4ytqNeBexGmiul2Xb2y1kR4MOmUN+g.f6vcGOTkObJ2K8pTMk6kTYdFo008n6eJmYyIEUAKZ8VWiFj8Bu0W6mZUspSJN0f35V9n0qwguQgv3ZCQjQn+KVyHlMhKpJzBR5rIa0RslWGWTE48Lezuk1kxq7ICeOazIc+oxg4sxXZ3h11e1k+5AduEB6xyg6o6+s.BWvx1fnBiiPmJ2bjkIsM+76aBmaqIWMHu7z4MJp533i+OOyu6TSlGYhgfdtz6WFTRczneCUoTpqEW8WD9kw8sNippuJ9Kcz4ZaagUD2qCFuk1jbVpNuUn9i8OiNG6mMqq8H6sh3dSUrVwNVcjOz2OumJK64T058jiJ7PRnpidOXOLYN41vD5T4htcoXCO9AF+IWWB0Q2t7xpZ8FT0pK+3I83+Q2ZPycdU4aa9mVhVt1GRZwdUM5zB6lRRrutOa7ucYGPy47dsA5mM8+dpa8apHtW84q6vXW0w8q4cs1YEyJmztmef9Yi6fXdndxe3SFcV1yop..mLgy2CfyWWn142HxsfEEGUtroYdzQe50jXi0y5xSlWqPiRLmw9.qrusnCmyo8MuOqXjn0+0KTjIyyLzcg+L5Yf+sK6voECUfdnU1z1rpS52Xu8NlzKtoot8ukIy8rs9G7i+jlTs59S.HG.LJvj4jaFSnSkY+8ydzgd5UkbqxNE61y+wiJnvM85i89V8HaeuNoS4ab3IDLF4m8jxZevaQZpvOuboTJkwW6kfE+edJbgZZXA74oYdaod0+02bUu+G8pi8Ed+gruhbazkbyxFHuMNl.M6WlG7g93wCfNBfU4dCLh3TtSkQa4kNY+N4pStKYbgrurpVO7fB0zKNx6X8SpK80vMblxsVu8lgVu1GVZwVTFcZgcQJhC1s2.aq6+i2RIedpTBz58+W05Au+Neg47RW2Qpvp9dphWWmysdi+6oOP+e1gd6y7QF1H+BwcOnzA.++YjGAuj2xyiRk9pbeGu4Y51I9iKLjDNTlYj+iGp+AYdVC8196Yz+w6blh6q8mGlds22sHDF+KhJxL38fMLzWCms1dc6zZex+T65LsNb5S4tiCpnM52+QGzR2wptyb+xzAPO.fWwiygpbfiPmJU10Gct1cp0kvvR3PYdY644g3m+ldzAbSa2ojLOrjBJmqY426gRHhqdG+xfw12e8PRoEHdumbN.PME6ZITmkgeezeAbXwq74Nyj4d9ZWcaxw+wcutTs4vdH.3OAGYN4ggIzoRr88UWnEm9uhebws6zurdDdfV7S6t5yDN3iMjabqUDeeV2ICOzue+Qzf+M1fZP7vdaxvZ1cX+Owfsf7s+x8tOiZUhIbXJUwg57bvV5wVpH9dWdc6+XK551tPPM0nyUU+xN4eYR6ZEE73CagsYvwlg0Kqv9LIfiEM58tj5DZFN2cUOpD6YF1stuSl3EF4mt9keG.3lAfC2cLQT9wD5TIxgVbBM7D+d7S9B6L8Lf9kVK29Y1h1z60nN4Kd8+eqsz1FTiMk.L+c6qp0cMmtJM3fI3eCNapVp+ExBM.NP3E2qqZ0JcLsQubnmYf62zFG1qhyTm3Ji+mUEt5DZVI+SGIr5bpTPOx+waX35+Y8qh7LF8ZpQfNRZawZoimKYb04dH8NVCaKk4Kb+VxlWc0d8U8U8e0286+clsps6Oc8K+P.Xkt63hHivmgdoWktmg9w94jp8QVbrS+7aKobrkt9EyxXQyrXZ8XDm+8l3C+KWoMrkUr+pF4Oc3p1fclPP0+DIaoAmMSsFXKaTaTF53eu+rV.ld+1vJz9kw8oPZ1yKqW1.ldqt8A51PM..BvObrLdvMduE2K4ONbDgOf42rOG.3Zqe1e4eMk+YwtfHkJFa83GH39Nm+uWI0rynNUMvp76wmQxi..N2stXhJG3Hzoh0YVSZQcjkc9aIt8ll87mLWSSSLotL3Dm8nuueq3Rluh8WsHu9kznYCcDVEQ7T8Zlt9M0xy8JZ+7D8b2JT8CnEgYaK64BVFN.fl.F1u3yu2bq0pa..A3GN5OE8t9dmcHRWYyXQydXolcF0A.H9LRtW.nU.Xat2nhnhFWG5TQJ1skYXG36Nyslz9yPjUb1rk2wEBgX7sueo8VidF+bfAT7iPd3MO135W8yrBaeNePMHwux++8p8bSlmqVDVVGMuOO8bPsJtqM1TBv7ubzfGG.jOZWi884FJimg0bWevBZRT086.fN.lBXxbxCGSnSFJw8kSv68SN8zS93Y6WZmI6KNBSADXTs8Zy5MG68uhRZaP8Ol7+9C0nJXSk2XxjEb926ZN+RKu2GWgtV6TN1E+BcDxlOcXgTTW6MrhlNTc6HxFGg9+6o68Q1mqH9nhVdabLvOKIdv2Y12HTabL7QfPd7XBcpPR6XY6+Ne2SdKoetrBM4Ckdl4+bCt0c2waLp6cEk11f5uNt89VBy3Bkm355aRpKvaYzq2Pah+DHeUI3udjvLbT5q6jgG5eb7.m.zPZe6HNvm6phOxXCat22vut28+9t2+BeqFr6yejMIF+3c.f+0cGWDURvD5zkIyyHs9Oy4z2bVWHmpG+tS6xVdZ8q4cR75icF+PCpdMRqnd8Ek1VijSeV83buFJiktsYK3reyvNfWS0EWmPyHGMyH1795+MtfLLg9M+SMcJPGAe8MIsurq0NoTccQHUPS+qe4t8S6ciSytC6A+l+07e0qZVi+puxuJh7bvD5zE4HKSZa40OxTxJgrp642YxoIyWqPsmMpsld0QbOqnU0ntk4dI9S0qis+91fL9pxxqcjMN0E5sL577DYf3h6k8GOY+KTB82XC0qQGLNsADT.3fK4522u4ZiNpfZY0aTrVMaIob+xsB.tm5SdUXBcB.p1f5Fe5COorSxdSuvNSKMoMbwjmcs9Wkkma324uzwF1rx8589QF4lNlV.5kpDylsfy9kC+.+U486sqVMBz1ESne1LzJTB8mc8051..dltc12yr+1Yez1M6d5+DN3HaY26C.VF.3RTi75vD5D..96Yd7Qmc7Y2lD1SpoaOiKs7zZesZleO6Pm9u2mVzNC2TTJMd9SgoOzC74rCL...B.IQTPTM9ZmodlZkp+c2Hap2yyNO+ZT3YcwD5IjtoKKg9j+9V26jyBsrEQZ6Wevdbb11McSV2A+2P6wqbqSIkLb.y9acywryUuSnZEpw6tiMhJs35Pmve+rGenoetr6ZhGJyLxJQ6Wb4o0pp2X+exgey+4fZSWOd449ed61B5+tkndkE++ZQcKsuVSVwY9xgd.uxVSYmpVlmbo6UUb6YlCpYdG+nIGjee2ABYpPCIsfQdfxziffJ+NUbwYcDe3i7jIjdxMuFO10EUl1xwqoFMHxHbD5UxskW5j8K0imUuS8TYkU5mKqKt7zZR0pq+OV++OqarsuOGr7b++wTcz9qYQs5yKKIyA.htooNeuwQmC.LpFEe9a3JA7aGJhH..F+22hwA6npisEo94ssFoldQ7xImr6bAub+RH8jaN.Pl1xoW.fEAG4UiIzqDaGu4Y5VJGJiAjY74jSxGKyKt7zZPUqo+2+0cCaYJWy.2U449+LG0zsMhOp6OygObUsZz4qdMR2VDgYuH6a5lshS+IC4.qo7DCtSWUsRNCX9RSc6JOQX0bQ6olUeKm1xnqh+XOKZn6liHzMZ4+2W+maXj0Zt49k2M.9C2Y7PT4ESnWI0t9ny0t31UpixV51rmv9tT2SqNUoZVmw0Mg+8+q2irL24zNic8fFwZibty5a6xvzyTyv9EPe5xIhcUSbOSa4i3vyL+I8xuw0zj8Je144WD9coJce2wGPsum+r92B.zd9q8juO7yMFXUhs4CsuP..xQhicz3Ny8.fNCf2y8FUDU9wD5UBsuu5BsH1Mm7DrkiC8KryzSKuch8ZVkpZ8N58XN7812ITl2ZU+9Dks+ZVPK97eXUModFdAVf7dG0NV4JG3YldyCxQxWScSLkGsKwNaTf0mtIq3Te0fOnWeCuoFA63hIz+iiExPNaxnassFN9g6pymtbUWBTYyM8YOeO64bt0ObBezSVe+9ucem4d3Jj19KQtaLgdkLGZwIzvyrljlhC6RQ76H0zzsqRmGUPga4Vt5QcpmXPSsLOMvO1Asdai4S69ybriEggSwdMqcp195otoWYNsNi4j+i+RW2Q1c2qS1yO+GahMK046KrTtZbUx7hIzyLGzHXFwuvqeWyu3dMjywSsrOt0e8V9oYXS2QfK7e9euA.Fl6NlHphDSnWIxw94jp8I+s3mptCcyIrqzRydVRG..gGXnluotOrK77iX5Ww1fpQNYllBbn+U0m6KuvNNLjkwsj290siE6pmvtt0anZxMXz4W8D1YLQDjZK1zjUbxOeP6esk13vST6pZF4uv3vTZdxeZyqVlYVTWO47znHqUxVMYIu8RgC..eh+MFQ4gIzqjP0FTuvsHs6vuD2eFomcJ1sC.Dp+AYZJccHoLqgb6qnrjLe9m2T6ulXZ5W7yqqgFOE69A4COgstp+nema5MI.QRFdM.vr+1kKcjGZ1PCIMollrOwnyA.t9lmvIx6yiHHr8uZT6kIQbSt4tO7823pU2qF.+H.FB.Jx+8HQdiXB8JAxqMnBa5Ak5wyJyLuP14..Dhe9aZRcd.Y8rCd5K6J0FTMx8u6.usI8Uc4YN4ICyvoXut0KEaKbZq9UeklX6MJI2ud0v3Rd184Ly5yF7AWWoMV7T00ZmTpPCIC.auVeNwG5timJaN5YNq+83Ut0obtDRxArXZC69LG9j.X3.3DWoWKQda3FKiOt7ZCp5YKqRlwZKmjOYVYA.DnE+zFWGFn8mYH29RJosA07brTrF3z1TUek+by023QkCfgzyCE6620y8P0K.qkpQAc+c+DE4xXyaUjAfi1vvrs+ao8m4zt6XoxjLx1lVul6c7vmN4X6T8dpgUGaR8M.fLb2wEQNKLgtOLUaP8T2hirbT0rRwt83Onp6o4mYKZit88U7zC5lWRosMn90m1R6e3euIOwYOcnFNpb3OjO931zpeg5KeC9OuTtvL13Lc2wPkQ+24+xc+zIGam..rI06N.FH.XAIR9r3635iJu1fp8zsWK6Yn6Ht8jVZPBXVyrXjsoOVdhAM0EVZaCp2y+FxsM2eq0CE4Xbgu0fFjjs4L5s+FiLP+WeEy+UPTY2GM4mYs+xt2bZmKs3dF.7BfIyIebLgtOHUaP8.SwVp1qutcHicOojFrKklEZhQzld5+iz+ornVVq5WhmJ7Cmh0.m55h5UW61paQt8sd884.w9t8H1GpNB+YgFQtU63nGJnV0vljtYaX6mKs39A.7q.Xyt63hHmMlP2GSdsAUaIauY5RfD1UpoomkTWHDhA25dD3cesSbokl1f5mdb+Z+i++Z1Sb9yFjwSwd.P9rSXcq9opsINE6ja2Cu34114rxE7XcnNM+g27I1yxy8vLYNUo.eGXeL40FTAjHgCjUZYklc6BHv.aY2B9t5Uz+PooMndGaMra6C9esXnvlwSwdiZXB1m6319rGp0.4TrStcu6es35OmUtfGylti.27I1yaCfjAvW6tiKhbUXBceH40FTA.R53YkYVWHKa..8s4cNzo28Q7Kkz1f5tiyufm9FpwKugcTyhbJ1GS+2aruW2N8CUMYvbJ1IOB0HrploYMsyaS2QCAvY..a9MTkJbcn6iXKu7IutTOdV8F.HiykU1ok6xSq2MtcgNsqd3qbrcpj0FTe+8GbG66Ra9mUTIy0BPW9R29pV0hu5jmNSlSdRFSG5+NxztsNC0FGyPA.WlfTkJbD59.1wadltkxAyXf..YkrMaIbnLy..naMn0gLktLzML4tUxZCp25Fq1s8IqpQCE1MdJ1aZSiy96L9+9MF.B2mYieg7tkZZoaZvu2CL94Mw68SOTGBdqP0jeFt6NtHxcfIz8xkWaPE.vdF5Nha2pVgZmqWKCdJcdPaa589+u8tuiOpJSaii+aRHIjPHMHPnJghz6HKRQZV.EPk0xpnnhhMTQ4UEUrfcr.5pfETV005hkEQwBpnBh.RSpRS5I.IjdOYJu+wIYcbxIfPRlyTt994yHYNmYNyMEmq47bdlm6wrli2wXioFUzW+ZZ7LV0lZbUND6W5H1R5yY.obWMn33yplq5Eo5o2Oy0bK6L8CLrd8jS3TwnYqbXqtlDwpngb2OVEsAU.bTlCmGcS4kONc4p6Mss06h5wv29jF1EebmrZu3VaPOG5m2t2npByCMZGtl4j9tk9A8NuqqAEGiByEeFS8SdottyzOvvJ+t8B3Rrx5QDqlBz8SUQaPEmDhSW35naN+7sWlSmcrwsJpKnWCa+S8ruhu63cLthk0na71VX6dnLSORS+Jo0oNjl8uaJK5YmRb0al07+NPjpmm57m7ZhOxnuY.6.uFvKXwkjHVJMj69gpnMnhCm0AbQlaufBJq.mNZahsHxKr6C8HSeDSXQGqNm1ZOb8q+0u7FMi0ssDadU8XF2n1X5uX+O7cEeAMRmUtGrWbcLcNFTaJPo6yUSXyotun5RyZStDNqLqhx+qAVGvw8RKIRfNEn6mI0kmeC28ml9DvtyH.H6eunBK9nkUVqZPShXr8XHYOsyYBe5wJL+o1XC68L94VbOYmQDldV4gUeGtl00tje5VhLlYRAwnPDObMKpCm9a9qwcOd6W2o1uzm1LF9u+WZxMFHaVey7a8TW3K7nIV+Dt2Ckc5eQ4adUVZQIhOBEn6GIs0UTb63cSchTlq5AP9oTbw4enRJo4w1nvO+dLjht2geUeRU1FTKAtzeto237WUKGANLeVr20NeD6u7ksxme.E03kAJK2LgZCm.mPcmtZBgGhKmd6WSeMKbC+ThS6yl8CX2ginOT1o+h.1.dQqttDwWgBz8Sj01JM5e6ecvqyYIthEfhynrxxdOEUTRQ2vvN+tOXG2yvF+GVUsA0eIk3p+09yMZFadGITkCw9Dtf0l9y0+TmZL4z3Lps98PffW+b21pd8ykK1pqifQQEQ8r6vkqCCj.PV.eiEWRh3SQA59A9esA0hb1P.Jq.mNxXa4WPh0K9vN+teFgbmC8x+fppMn9Dqqg84oVYKmZtYEtoCwd3wZ20Kb8K9mtg5zfYRNIpSKW7YMn10kUTlC68C3sAlIv1r3RRDeJJP2Gm6sAU.bTpCmos4byOtHiIzwz8AE9jG5k7dl1FTKA96Kq42zmr5leN3z7gXuGcKU6y6xW0y2q7ZhFhcw2TIvPeoIcQ2wv9Gu54+p28NJeqWfkVSh3iRA59vbuMnBfCmtbk9lyO+5GZ8rMltbFQcyC3u+9l0FTW1dhO1abkM5I25tiuYU0w95une4n+y9bnoV27Zxe4NulHda8cVS3pV8A9sw9C6bc8AXj.+k5GAhDLReOz8Q4daPshsk0VxufHcDNipKCp9Wc+F0GaVaP8gWURm1H9hV+5UUXdTwUlq4ceKX4u5oVxDqadMVg4hOq478eTqV8A9sKr761QfIZk0iH95TftOp+nMnZHqcUXAgTXnNNuNMnXG+oMxE3YaP0dw0w1X9pS4lm920poUX1gY50Ku28HE6KcZezyMAaI8zXKrf9YMs3aaRC8xVeHgDxkATBvmB7fVbIIhOMMj69fbuMnBPdGr3hseTm1GSmGT7WTuF1m4YaP8G2WBwcCKqwOw12WrU4PrOoKakG8Y6WJ2ScSK4zqMqcQpt1dJGHx123Vl9VxX2qxoSmkBrafMCnODpHGCJP2Gy5exTGZEsAU.JJiRKsf8WVwioKCJgKn6Cdwd1FTuuU1r9Nqeoo2UI4EpomUdzITJu5s94K+xck3yRZMSugn3S6iV0213w8NOxLBylsmn.6ktjx27pszhRD+DJP2GxFetT6WV6Juyoh6WVdkYOmsWTgmaGGXBinS8aot2FTKrjvB4h9lVdSe4FS7rvk4yh8SuO6y9qN9kNmtdj1sDy1uT6a6oEYjO2ZNkNusLi7TJzdHQzyDKXWiuaGYaCnEYkqUWa9Z9kcss5eMu+i+fk5nrDJEdVfnAdXqttDwegBz8Q3daPEfxJ0gyL1ZgEbVc3uE+Y0gSaUt2FTW7tRHga5mS5w28AhooldvrASdbKKiY12CeOgdj1klWn7ESbkKniC7c1drWK1IgJ11pSINl6uFmqg1pBeqkLtM9esx5yWicaNbTj8RSAn4.EArXKtjDwuhlTb9.116ld6qnMnBFe8zxdi4m2Pa6oE6faau2zsL7KZ4Uru65GaQ+F0hZybqpv7XZXI79OxGthmuU1lXnGoEJL2hbUKrSC3c1Rr2E1o9IVOVecijcgQWAC.ae+di5pOu42kQZk0nOEGg4r+soiKwgSmCA3CAFGvJr1hRD+K5LzsX+9+MyVk5Ol8UhSiObkSfL2b94OfVzqXFTxceWFsAUWTXIgExn9pVdye+lS7LAyGh8A1285XdW8OL6SMkNngX2Bs3ckPB+6MEyjiKJ176NpcNqyscYjA.a7vwVuqYQs8hV2gCar.r7CD8Y.7kVZw5C3bl8TF8o2tNOmG9Se8J9.npulKxIAEnag16Wlcy1+Wkw0XzFTAvEYs8hJnuI10nN8V2sC9.mqQaP8y2dCZ3sthjdr8lR8ahoGnPf65pWZFOduR89BKkNbXu3uEDSLseJ4QV2H4.a5ZW+C27XJ4+s952sjxofUMtM7uC+e1mA4xNIlSwbp4keXgV+nKy7FpSPfyY1SYzKdqq35V7VWwvwXgiY6VcMIh+JMj6VjJZCptJuMnBPd6q3h5QTsMhAzltdz66rulEPHtbc6K8TN8K7KZyqTUg4wmXQ7IO46sxmtktt9vNTqTXtOfrJNz3e9gjxy6dXdEpScs6p90gLAfPIuf4v7EtgeJwEu0UbUke2jAtSqrdDwemNCcKfmsAU.JJsxJsstRtNCrccO2oNrw+wNbDIC9iS91V51RXXTECw9P5+tcL2q9Gdo1suN8sdshWNt10M9Kytp12AyMhvysXRFfjiw4F7dUkumwz4AsFLVW1mOv5AtUqshDw+lBz8x7rMnBPw4Z2dyKHINi10sRlxPux4+ColbrS5maxil5ghz7gXOT39t1kj4i26CeeruNcHuVwKUaOvxRt2.gSHj6bOmc8lVc8XE1ygSKhjabS1K21osQfM.LHLVi1MsiAJh7WiBz8h7rMnBPYEZ2QhGsgNG3o1Sm21f+Gevit1d2qWYCINEmESXlcLZXREx7tyO5WFSAs3oY+stLuW0KUW2421lt8l+ZbSlPH62cL6epmYaxLKqtl71V1uswXO6W9VehRsaetNwYEKXLq2RKJQBPn.cuDOaCp.3zNthO83sOjV2mPuh99O9OW1ONzqck6L1gUUGigOvc530t1k7pIuqt+0dmpVpIr4TiMpa7aa84s7CDwkBDFNIx69Ga136RCJXNcKobJvpqOukCdziF9nesobeEauzlC7H.MDXxVbYIR.CEn6E3YaPE.mtfnRMpROiV1mv6PqtgEO1uY.OwgRqtIY5AnNvCMwuIqo2qzmF6p6o30JboZaDueWF0Wu6nGOPDtu8TxJzAzu2oiM6H23ZmRvxDiK6BKt3bKovCBzA.GnENFQpQo.8ZYl0FTAWD0ghpzA27dGY90a56bxqnqOJUwPr2nlV.u0c+gqdDY0hml815JMqoEeaO8POv2OjVjv1SIuvh4GRo9ceyGIrQADJ.EUBsZrKrim22b4abgVbYV6yQHkzkjSdYtb45qAlKvJAVjEWUhDPQA50x7rMnBPDoEQY8uQ8Op0yyW20sklccU0y8bF51c75W82M2luid8U09UpTanaIkSAcKobpng5r1YshV9C2+xa5sUTIFyz8e5PQMDf.5.8K7Ut2gTpihdsuXKqpvx2z0XoEjHAnTfdsne4g2+HcuMnBPD4FgiNU+KNgurvmn0omQzIX5SLL3wtouNqo0iC8.ridc.uRwJdES4z2+t6cSye5C4cN02DvVwESynD7X.4CbLt48PCbAa7GtcfKE37.9UKtjDIfkVXYpkr9mL0gl+9KZvtusvJJBWIwC0hOKyWnmUUXdSZVd7MO27V6zZRX2.+dGTXd.nAeJYlcjgydJ+t0cOEWu.x370rqsWu2esK9lvXcTnonNmlH0pTfds.OaCp.TmRh2VH1+jtt7Ltw1SoFWCUOM5gsUmq8YdiW6LOTmeDxOpR7NUqXEZS7kYzJbCkrRN1BBH+659zx1rbWvn.xFXK.i2hKIQBnogbuFlmsAU.bTReiJuBd6tmSNIVWSeRgAO0stnru6dj9CxV5697JEpXoJxdnQBPB0k8a00RMsCdziFdySnA+psaeP6GX+.C.HOfbr1JSj.aJPuFjmsAU.JpvImTFY8PsmRMezPZdKyg249+f0N3izpmgs2gh7NUpXkxK+vBcO4FRWA3BZa1egUWO0j1SpGptcdFW1zKxdIeNvTAbArUKtrDInfBzqgTo1fpy3BofBesNlS5CuQU0y4BO6M6btSXw+qFto9+YduJUpscCKpC8861eL+st2fB9s2972wRhJhxb599Gym1ww3rLRJ15xVm2n11Jsp5rlVgkTVH8YViexEYujNBzQfl.bkVbYI0NhAHWqtHj+LEnWCnzhclv9+pLFdEsA0hJouQke9uY2KI2jLeH1CGl0crfbtiNk9zYS8e2d0hUp0M2MF2shSh42yr9m4W9h8dzWamy7e+nCXua3aOXCZvithlNxMd3vtv5WW9skNts7XVcsVS5vYdjLxrv7SysMsDKqXjZauEP9.OJvNpkesFKvs3w11KvDL4wNOL5bet60AduZ9xx2iocwK4XZA.mu6aH91G8pqWhgkO.4l6smTt47fsG6lOD6spUYw6e+u6u1uLZ2LH2X0PrG.pmyq2W0ud3vFqI6xQXQvAGcKyaglcl690bFVlzncuBaWxk3B34AxDX5VaQI0h9LLlviN.depcC1aBvNApmGaeH.+na2u+.K2iGS1.sC3n0R0lOEEnehqxA5sK5MEdhMJy7xadcrvLGRUND6W7H2nyWZhe0a0v0dFKnVuJEqSIvCsxV2w0bjnZUdEGV8ZVLEmd+aVA66Rae5GrQwTjcqt7pocwu9CzyeZGqa9GN+L+MqtVDulJBzqPscv9Cfw5+u69Ffy1s6+o.iwiGysC7OqEpGeRJP+DWkBzqaaG7NJsNyukNyqQlOD6Q.y9N+u4LoNk1ivV69t7FEoHdC25GLyNL6k9QOFFWO0QCrBKtjDuCOCzqPEA6OFv1qAe8hDiOnPy8X68EX0XLmM1B+4LseCna.AbeH5ph9dnWC3r52YjPUEl25VmIq7ke9MNo3h7lTXtDHIkLyx0bV5GMEfv.Z.vrr3RRrdgBbEXDt91.suF53VDv8Zx1uqx+0aiJeBp2AAQg4fBzOYTo+Lae66kSehWxxqTGy5xF85cttY9Ju0e6262CP1wEzzlLkf.1pi8lUuHWlKiyJOMfC.72s3pR7cTaDr+tXb13tar.8fJ+so3yAB5ZyzJP+DSn.s0yM5rfnBsmQ+Jasqc9vt.fHgW4g9vbeuKaUSM10LrOwaWjhTaJ0bxMTBunUa6NFZ1X7FrmNvH.R0ZqLwGTMYvtKfoXxw+63OOg4JC3+qZ7532xaeMzu.LlIh9q5CvoADs6aLw3hK83CKlUdySYDm568y2e6uqK8ENxblwmurzOZYUztSsY7epzjZ1i+7OT22nMr44iODrY1emEZE607cay4ebHM6ivY6O9Aa31pRqsp3gIAub5zgsMj5tNMmtbdTfuEi2jUB9LVf1bR77pItF6yG3hOF6el.24I4wVNALGLdCf.xa1rgqK+RZkkWG5ltoa5lO9M6.uCmbmwdx.EWEG2ifwhdSPIMj60fb4Bdu4uWqtLDQDecgBLNLFJ92A3TOAdt6A3Mph8MaBhWA6TftHhHVkRARmSrP3Pwng+XlwRPbtVP6uwEQDwxTDFqnfsFiudYG9D34NQftVE6qG.WW0qz7e4smnSmIPO8xulmrZEvfLY6sDHVO11ah5nThHAOtZfNcR77JB3UAdJNwBwqPrXrLvl3w3wjNFCge1mDGeI.TuvXlT9wlbacT4Ihw4a9gQDQBH8YbhMI3JD34.RpZ95NSONtN.dBSd8dtp4qieIMj6UVGwX0GJTS12O.reuZ0HhH9upNCstmZGvs5w1VHvCCbPO19s.zgpwqkeIEn+m0ZfoADtI66Wv3qcmHhHGa0jA4U3YwXYF1cyDnDLNKc2Umxe8Cpn.8+PSwni9DoI6aSXrNUG3ztKEwnsTNXfgdL1+HANEuVEI96pMBxAi4ekmcRsUA7Sk+yyiJO5omCl2.Yj.bMDiIpgYWy7Y.3diWYAnqgt3+psXLDkaf+7+F9V73w8.Xr3eTwh0gmSDTI3lmWC8ZpqQtYBEiSpxy22crd73tASdL6.yGw0.R5LzMdipGBiPcOc.LVhBK1qVQhT6YDXL6j+LLZujUv8upOOLF8d5JlGIMBiu0Gh3oZqyH2cSDnKdrscgwIW4t2fJeV5sCXx0B0jOo5X0EfEKJLNSjlZx9NBFuwV9d0JRjZWyt7a.7oXL2P.i9Fc7.mEvCB7LXrVsOZL9fsav6VlhOtBwHH+j8qe1IhivezlTqvpnxWBzRwnqq0WO19ApkpKwGRDXb12lML6uNPiqhmmFxcIPgMLZ8oU7uiuNfLAdKqrnD+BAMCis+jf0gbOTL5FOczj8kOFC23Q7pUjHdet3OlTQ.7Z.4.LIqobD+Hkd7eHh2VvXftMfaGiEOFOULFm0t9tlKAK9YOt+sftLSh3WJXLP+Fv7dxdYXLi12o2sbDwRsB294L.VjUUHhHUOAaA5WIFS5GO4DiuxEax6VNhX4Vma+bC.ZlUUHhHUOASA5iE3BLY6tvXEfaUd2xQDeBd1YpFnkTEhHUaAKA5mMv3ph88FXrFsKRvlNC7zdrMy5vfhH9ABFBzGHv0WE66+ftlgRvoH.dWfr3O++en.cQ7SEnGn2KfaCy666KBiVjpHAidBfthwHW8IXbomn7sEe4+bh.eEFqTbhH93BjCzOdsA02vqVMhXs5BFqLh.bo.SAiuhleOFyt8sT99rAbtXrvgLefnANpWsREQNoDnFnmLG+1fpKS1mHAhdLL9FbjFFKmquMFA4OhaOlu2se9wAVBvoAbUntLnH9EBDCzaJFqE0pMnJhgtU9uVOfgiwZa8k.3vsGi6M5hSA3zAtbfe2aTfhHUeAZA5MDiNmVLlruchwBGSYd0JRDq2yhwGlcOXz2nGHUdXzWBv8Craf0fQejdgdwZTDoZxrIKl+pXwXnEMqyoc.LdypZhkzxEPkaFKW.FctJQDQDKQfxYnerZCpogw0JTqO0hHhDvJPHPObf6CiIBmmxBX5XzRHEQDQBX4uGnGJFe0zTaPUDQjfZ9yA51.lLpMnJhHh3WGneC.Cvjsq1fpHhHAc7WCzUaPUDQDwM9iA5WHpMnJhHh7m3uEne1.WQUrO0FTEQDInk+Tf9wpMnNeTaPUDQjfX9KA5Gu1f5+w6VNhHhH9V7GBzUaPUDQD43veHPumn1fpHhHxwj+Pf96QkGRc0FTEQDQbi+PfNXLo29WXb13pMnJhHh3g5X0EvIfEAjAvlwXocUDQDQJm+TfN.qzpK.QDQDeQ9KC4tHhHhbLn.cQDQj..JPWDQDI.fBzEQDQB.n.cQDQj..JPWDQDI.fBzEQDQB.n.cQDQj..JPWDQDI.fBzEQDQB.n.cQDQj..JPWDQDI.fBzEQDQB.n.cQDQj..JPWDQDI.fBzEQDQB.n.cQDQj..JPWDQDI.fBzEQDQB.n.cQDQj..JPWDQDI.fBzEQDQB.n.cQDQj..JPWDQDI.fBzEQDQB.n.cQDQj..JPWDQDI.fBzEQDQB.XypK.+PMBHJO1VZ.EZA0hHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHLrt74....rSRDEDUhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHhHAP9+Az55F.aw+imi.....jTQNQjqBAlf" ],
                                    "embed": 1,
                                    "forceaspect": 1,
                                    "id": "obj-9",
                                    "maxclass": "fpic",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 210.5, 323.0, 200.0, 200.0 ],
                                    "pic": "/Users/naves/Documents/Pédagogie/_ISMM/picts/Cartesian.png"
                                }
                            },
                            {
                                "box": {
                                    "autofit": 1,
                                    "data": [ 4428, "png", "IBkSG0fBZn....PCIgDQRA..AnD...vXHX....P+8mzS....DLmPIQEBHf.B7g.YHB..QLPRDEDU3wY6cuGTTU9FG.+6ttrqrNABMLX1XS30REKQMDM0fvFTx7tilWFC0ovXxDaTPKQcXRaPvaMlZY33TioV3ER7FHJCloHpIJBXETZApffnBHrvyu+vYe+4FvdXucNK3ymYbl8b8847564gy02iJhHBLFiwZVpU5.fwXLmcbhRFiwj.mnjwXLIvIJYLFSBbhRFiwjfFknPKszRwidziLYbd5omvUWcUIBGFiwLKUJwiGjO93CJpnhj6hkwXL..Xoo8j8S8tvBKjSRxXrVUj8S89Tm5T..PsZ0H5niFpToB..u8a+1ve+8WtCGFiwjjrmnL0TSE..96u+H1XiUtKdFiwrXx5odWe80ijSNY..LpQMJ4rnYLFypIqIJyImbPkUVI..BJnfjyhlwXLqlrln7jm7j..PmNcXPCZPxYQyXLlUSVSTdricL.73S6VqVsxYQa0pnhJDGELywqt5pCkVZovfACJcnvZkwQ11Q1RTVUUUItQNu0a8VxUwZQHhvEtvEPLwDCFv.F.zqWO7vCOf6t6N5Tm5DVzhVDt0stkRGlsoTQEUfcsqcgIO4Iitzkt.c5zAu7xK3pqthgNzghe9m+YkNDYNoj01NjLI8zSm..A.J2byUtJVKRzQGsHF0pUKMsoMMJt3hiBLv.Eiuacqaz8u+8U5PsMgxJqLpcsqch51d26dSwDSLTTQEE0912dw32912tRGpLmLxcaGYKQ4xW9xI.PcpSchZngFjqh0hDYjQR.fznQCc0qdUw3qu95oILgIv63Zmc6aeaQc5rm8rMYZYkUVjJUpH.Pd3gGJTDxbVI2scjsS89HG4H..XLiYLhGxbmM93iOXvCdvXiabin28t2hwqVsZL24NWwvW6ZWSIBu1bzpUKBHf.PfAFHhO93MYZCbfCD94me..n7xKGkUVYJQHxbRI2scjkG37RKsTjUVYA.ffCNX4nHsJQDQDHhHhnImV6ae6E+ViFGW0VwEWLRO8zA.v.Fv.Pu5UubXkkRyc2cG+xu7KM6z0qWu32sqcsypKmmlpSaNs0pCjq1NFIKIJyLyLEuD5Ce3CWNJR6tie7iK98vF1vbXkSVYkEl9zmN..hO93a02f1Zc6aeab1ydV..3me9gN1wNZ0qKtN8oq5.6YaGijkS89Dm3D..ne8qenScpSxQQZWUPAEfDRHA..DXfAhPBIDENhZ6KlXhA0VasPkJUHt3hSoCGVqHNh1NxRhRi2l9PCMT4n3rqt28tGF+3GOdzidDdgW3Evt10tfZ0b+criThIlH1xV1B..V6ZWK+VbwZwbTscb36wWXgEhBKrP.z560VrpppBicriE4latvKu7BolZpvau8VoCq1zN3AOn3Fms3EuXDYjQpvQDq0BGYaGG90nzX2plFMZvPFxPZzzO3AOH15V2ZStriabiCyadyyry2bm6bw3G+3siQ7iUSM0fIMoIgScpSAO8zSjQFYfdzidX2KG4lyZ8Mvi6YolvDl.ZngFvBW3BwZVyZbHkCyx4L2tAvw21wgmnz3aiSPAEjI2IJi5PG5.NyYNCJu7xMY7d4kWXVyZVlLeW3BW.kTRIhw4pqthO7C+P6dLavfALyYNSb3CeX3gGdfLyLS7RuzKY2KGkfyX8M.voO8oQngFJpu95wBVvBP7wGuS6iQ1SibVa2.HSscrKOMlMCCFLPt4laD.n3iO9lc9twMtA0st0MwCPJZlGp6u5q9Jwz6ae6KUbwE6Ph64O+4S.fbyM2nbxIGGRYzbNvANfXazb0Y1Bms567xKORud8D.n4O+4a2egDji5Tmc1i5.ms1MD43a6XjCMQ4Eu3EEUXW3BWvryat4lqIu5QCcnCkLXvfX5FLXf72e+I.P93iOz+9u+qCIl+1u8aEuBim8rmsQSeoKcozblybbHkMQx2N0NK022+92m5YO6IA.ZpScplDCD83cDFwHFAkYlYZ0kAmnz9UG3rztgH4osiQNzDkqacqSbjY+2Mhlxd1ydL4uVEWbwIl1m9oeJA.Rud8T94muCId+y+7OIc5zQ.fBKrvnSdxSJ9WpolJkPBIPpUql72e+cHkOQx6N0Jc8MQD8QezGIJ+TRIEQ8c5omNkbxISCcnCk..czidTqtL3Dk125.mg1MDIOscLxg9UXbzidz3vG9vX5Se5369tuqEsLu+6+9Xaaaa.3wu5fYkUV3F23FXbiabPkJU3HG4HNrdenYLiYfu+6+dImuQO5QiCcnCYwq+jSNYb9yedyNOW9xWF6e+6G.O9AaOv.Czry+K9huHdu268r3XwHkr9N2byE8su8sE8Ew6W+0esI+lJ4LVmJ2Th5.krcCf8osiEwlS01Ld3CeH4hKtP.f1wN1QKd4dvCd.0qd0Kweovc2cWbTdN5iFvX7J0+lwLlgUs9CKrvZQqeK4eADP.1z1rRVeugMrgV71Yd4kWStNbFqSkaJQcfR1tgH6SaGKgCKQ4S1spUTQEYQK6ktzkHMZzXxF6Lm4LcZ60gZolybliS4N0slqucVqSkSJUcPq41MVJK9Tu+se62PCMz.5e+6uYmuXhIFrpUsJz8t2cb8qecKoH..vpW8pwRW5REC+ke4WZ0OhAF2DU5G2j6cu6IYukdJojB9fO3C..vRVxRjbaVud83Ye1m0liM6U8cEUTATqVMbyM2r4XpkvYtNUtnj0A1y8Scp0Rxl1PCMPolZpTHgDBA.xO+7Sxk40dsWi..8we7GawYuqs1Zo27MeSS9KUZ0pktxUthEsdLXv.kXhIRd6s2VUbnDTha7f0Ve2PCMPYmc1zxW9xI+7yOxUWcUr7d6s2TjQFIURIkHKaClCeybbL0A1q8SaMvrIJqs1Zoe3G9A5Ue0WsQGZ9oN0oZ1k6N24NhNNyjSNYKNnV3BWn35d3gGdHJyd26dSO3AOnEsNRIkTn9zm9HV1HiLRKNNTBJwN0Va8cqkdDdNQoioNvdreZqElMQ4JVwJDa793iOljnbbiabM6xsu8sOB.jZ0poxKubKJf14N2oXYO8oOMc5SeZRsZ0hxcdyadlc4yN6rofBJnFkXeIKYIVTbnTj6cpsk56VK8H7bhR6ecfsteZqMl8UXbhSbhHmbxAgGd3HnfBBuy67NhdBn8u+8i7yO+lresyX2pV.ADfE0Wvc9yedDVXgA.f0st0Id2vW4JWI9rO6y..vW+0eMBLv.wzl1zZzxmZpohQNxQh1291iXiMV77O+yKdDG3d7mFyVquM1ivOqYMqlrGgOojRB.s96Q3KojRPlYloX390u9gd1yd5TrLJAaocSAET.18t2MppppvCe3CA.vF23FQokVJ1912NN24NGzpUKdkW4Uv7m+7ksq0sjrjrpYjQFlbTZQDQDM47Y7nOiM1Xawq6+5u9Kxau8l..MoIMIStyY0UWczPFxPDkqNc5nKdwK1n0QUUUEsnEsH5e9m+gHhn6d26JVlniNZKYSUwHWG8i8n91bNwINgX4iJpnr2guEwVqSexkG.zm+4etSyxzRYuZWYqsaN+4OuIuFj50qmRO8zIO8zyFcVfcu6cmpolZr5X0dxhNLqgMrgg.BH.wvacqaE24N2wj4onhJRzspI0C0pQkTRIHzPCU7ofcMqYMlbGp0nQCV0pVkX3G8nGgPBID72+8eax5wUWcEqcsqEctycF.J+c41Yk8p91bjqdDdl7wdztY.CX.Hu7xC93iO..n5pqFibjiD95qu3m9oeB6cu6Ed4kW..32+8eG6YO6QN1zjjEe9nQEUTheWWc0gu4a9FSl9IO4IAviSZMnAMHIWeIkTRvO+7CW4JWQLtMsoMgRKsTwv4kWdMpqa5V25VvWe8U71FvZYji5atGgusG6Y6FMZzHtTMDQXJSYJHszRCSXBS.SZRSBaZSaRLu4jSNNpMIKhEmnLzPC0jqK4ZW6ZQ0UWsXXicqZiZTiBt3hKRt9V+5WOJt3hMYbaXCavj+Cw3eo4+pxJqrE8JGx9+bz02sE6Q30pUqIC2RZWKWKibwd2tQmNcheGWbwYxG.rAO3AK98Mu4Ms4X2tvZNe8cricXx0Rv3qn3S1spsksrE64kHvpTd4k2p6ZTdjibDxEWbgbwEWnMu4MqzgiE4gO7gzHFwHH.Pd4kWTAETfRGRDQstqSsWb1pCL9TQnVs5FMsJpnBw9sSdxSVAhtFypRTVSM0Htft.f5Se5CUe80aR2pl838qzV0ZLQYqUUWc0znF0nH.Pd5omz0t10T5Ph4DybIJqqt5b5RTZUmSjNc5PzQGsX3qd0qhzRKMw0mryctyso+bXxLUa4dDdl7yY7lvZ0W7nYO6Yaxm1g3iOdbricL..LlwLFaOxXsZrfEr.7i+3OB2byMjQFYfW9keYkNjXL6JqNQo6t6N9jO4SDCezidTb3CeX..DbvAa6QlcP80Wu32jiqa27oZIlXhXyadyPqVs33G+3nu8sulL8ksrkI9x3wX+WRseoyx9s1zGWrvCObr5UuZTWc0Yx3G9vGtMET1KO4yukSycOqMjBKrPDd3gCfG2oGWc0UK9paZvfAb4KeYrl0rlVziIF6oKFeqbHhPs0VqI2w+ZpoFwu+u4VTL15E4LhHhvj6.d+6e+s0UoMIiLxfRLwDoUtxURcoKcQDWpTohBO7vossssQ6d26lJqrxTz3rsfoO8o2n2lhl5eidziVoCUlSBCFLPojRJl7c2I1XiUzmPTd4kSqZUqRLsm4YdF5nG8nTc0UmhF21bhxqe8qK5of..srksL6QbY0F6XGaKZmWo9XmwjlitGgm01SgEVXS1FYcqacDQDs4Mu4lb54latJZbaW9l47tu66hcsqcA.fzRKMDTPAYqqRFiwbZXSWiRiV7hWLprxJgJUpL4opmwXr1BbneEFYLFqsfV2uDtLFiIC3DkLFiIANQIiwXRfSTxXLlD3DkLFiIAy93A4L1KdvXLlsxReXe3injwXLIX1injeDKYLFiOhRFiwjDmnjwXLIvIJYLFSBbhRFiwj.mnjwXLIvIJYLFSBbhRFiwj.mnjwXLIvIJYLFSBbhRFiwj.mnjwXLIvIJYLFSBbhRFiwj.mnjwXLIvIJYNMZngFT5PfwZRbhRlC2hVzhvq+5uN7yO+PO5QOPW5RWvJVwJ..PUUUERHgDv.G3.gNc5PG5PGvPFxPvd26dU1flwdBlsi6kwrG5XG6HtxUtBt28tmXb2+92G4me9HjPBAEUTQhwavfAblybFblybFr90udrfEr.EHhYLSoh3twblLn3hKFcsqcE0TSM..Hv.CDYmc1nxJqDScpSE95qu3bm6b3.G3.hkwEWbAkVZovM2bSoBaFC.bhRlLJ3fCFokVZhg0qWONzgNDdi23MDiKpnhBewW7EhgSJojv3G+3kyvjwZD9ZTxjMt6t6heqRkJbfCb.SRRBfFcp127l2TNBMFyr3DkLYiFM++KItu95KBN3faz77bO2yYRB0xJqLYI1XLygSTxTDCbfCrYmVW6ZWE+130zjwTRbhRlhncsqcM6zzqWuLFILlz3DkLmN5zoSoCAFyDbhRFiwj.mnjwXLIvIJYLFSBbhRlro95qW7ay0AXzRmOFStvIJYxlxKubwuqpppZ146t28tsn4iwjKbhRlrvfAC3RW5RhgO24NGLXvPiluG7fGf7yOewv4jSNxR7wXlCmnj4vkat4hoLkoXxQJ9G+wefoLkoXRhvryNaLwINQTas0JFWFYjABKrvPAETfrFyL1ShSTxb31291G1291WSN9jRJIwv6bm6DG6XGqQyWhIlHNzgNjCMFYLyg68fXLFSB7QTxXLlD3DkLFiIANQIiwXRfSTxXLlD3DkLFiIANQIiwXR3+goUcru52dRx.....jTQNQjqBAlf" ],
                                    "embed": 1,
                                    "forceaspect": 1,
                                    "id": "obj-4",
                                    "maxclass": "fpic",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "jit_matrix" ],
                                    "patching_rect": [ 235.5, 292.0, 150.0, 45.0 ],
                                    "pic": "/Users/naves/Documents/Pédagogie/_ISMM/picts/Norm.png"
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
                                    "id": "obj-63",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.angles.maxpat",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 710.0, 110.0, 130.0, 115.0 ],
                                    "varname": "gst.angles",
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
                                    "name": "gst.orientation.maxpat",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 510.0, 110.0, 130.0, 115.0 ],
                                    "varname": "gst.orientation",
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
                                    "id": "obj-30",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.norm.maxpat",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 245.0, 110.0, 130.0, 115.0 ],
                                    "varname": "gst.norm",
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
                                    "id": "obj-1",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.acc.intensity.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "float", "float", "float", "float" ],
                                    "patching_rect": [ 10.0, 110.0, 130.0, 115.0 ],
                                    "varname": "gst.acc.intensity",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpdetails.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "Continuous Motion Descriptors" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 679.0, 59.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "midpoints": [ 519.5, 234.83908091210938, 668.8093414306641, 234.83908091210938, 668.8093414306641, 105.36373911523438, 719.5, 105.36373911523438 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "s2n", "Modalys" ]
                    },
                    "patching_rect": [ 16.0, 133.0, 191.0, 22.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p \"Continuous Motion Descriptors\"",
                    "varname": "mess_tab[1]"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 484.0, 94.0, 57.0, 22.0 ],
                    "text": "compile"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 484.0, 128.0, 204.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "helpstarter.js",
                        "parameter_enable": 0
                    },
                    "text": "js helpstarter.js \"Movement Analysis\""
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 883.0, 642.0 ],
                        "showontab": 1,
                        "boxes": [],
                        "lines": [],
                        "toolbaradditions": [ "s2n", "Modalys" ]
                    },
                    "patching_rect": [ 16.0, 211.0, 50.0, 22.0 ],
                    "text": "p ?",
                    "varname": "q_tab"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 883.0, 642.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Helvetica",
                                    "id": "obj-1",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 430.0, 228.0, 126.0, 32.0 ],
                                    "text": "compute the speed of variations"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Helvetica",
                                    "id": "obj-11",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 570.0, 228.0, 130.0, 58.0 ],
                                    "text": "removes fast variations with soft amplitudes while keeping trancients"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Helvetica",
                                    "id": "obj-10",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 290.0, 228.0, 130.0, 32.0 ],
                                    "text": "removes fast and slow variations"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Helvetica",
                                    "id": "obj-9",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 150.0, 228.0, 130.0, 32.0 ],
                                    "text": "removes slow variations"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Helvetica",
                                    "id": "obj-8",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 228.0, 125.0, 32.0 ],
                                    "text": "removes fast variations"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 66.0, 315.0, 21.0 ],
                                    "text": "Pre-treatment section of incoming data from sensors"
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-85",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "sn.1euro.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 570.0, 110.0, 130.0, 115.0 ],
                                    "varname": "sn.1euro",
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
                                    "id": "obj-27",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.bandpass.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 290.0, 110.0, 130.0, 115.0 ],
                                    "varname": "gst.bandpass",
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
                                    "id": "obj-6",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.lowpass.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 10.0, 110.0, 130.0, 115.0 ],
                                    "varname": "gst.lowpass",
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
                                    "id": "obj-5",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.highpass.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 110.0, 130.0, 115.0 ],
                                    "varname": "gst.highpass",
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
                                    "id": "obj-4",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.derivative.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 430.0, 110.0, 130.0, 115.0 ],
                                    "varname": "gst.derivative",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpdetails.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "Filtering" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 204.0, 54.0 ]
                                }
                            }
                        ],
                        "lines": [],
                        "toolbaradditions": [ "s2n", "Modalys" ]
                    },
                    "patching_rect": [ 16.0, 107.0, 61.0, 22.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p Filtering",
                    "varname": "mess_tab"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 2,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 113.0, 883.0, 642.0 ],
                        "default_fontsize": 13.0,
                        "gridsize": [ 5.0, 5.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-7",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.gate.float.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 2,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 10.0, 485.0, 130.0, 115.0 ],
                                    "varname": "gst.gate.float[1]",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 1,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "obj-85",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "sn.1euro.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 570.0, 110.0, 130.0, 115.0 ],
                                    "varname": "sn.1euro",
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
                                    "id": "obj-63",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.angles.maxpat",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 440.0, 300.0, 130.0, 115.0 ],
                                    "varname": "gst.angles",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Helvetica Neue Light",
                                    "fontsize": 18.0,
                                    "id": "obj-49",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 150.0, 450.0, 129.0, 28.0 ],
                                    "text": "Trigger"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Helvetica Neue Light",
                                    "fontsize": 18.0,
                                    "id": "obj-34",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 450.0, 129.0, 28.0 ],
                                    "text": "Gate"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Helvetica Neue Light",
                                    "fontsize": 18.0,
                                    "id": "obj-33",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 265.0, 256.0, 28.0 ],
                                    "text": "Continuous Motion Descriptors"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Helvetica Neue Light",
                                    "fontsize": 18.0,
                                    "id": "obj-32",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 75.0, 73.0, 28.0 ],
                                    "text": "Filtering"
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
                                    "name": "gst.orientation.maxpat",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 290.0, 300.0, 130.0, 115.0 ],
                                    "varname": "gst.orientation",
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
                                    "id": "obj-30",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.norm.maxpat",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 300.0, 130.0, 115.0 ],
                                    "varname": "gst.norm",
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
                                    "id": "obj-27",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.bandpass.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 430.0, 110.0, 130.0, 115.0 ],
                                    "varname": "gst.bandpass",
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
                                    "id": "obj-6",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.lowpass.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 10.0, 110.0, 130.0, 115.0 ],
                                    "varname": "gst.lowpass",
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
                                    "id": "obj-5",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.highpass.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 290.0, 110.0, 130.0, 115.0 ],
                                    "varname": "gst.highpass",
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
                                    "id": "obj-4",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.derivative.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 110.0, 130.0, 115.0 ],
                                    "varname": "gst.derivative",
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
                                    "id": "obj-3",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.kick.maxpat",
                                    "numinlets": 5,
                                    "numoutlets": 3,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "", "int", "" ],
                                    "patching_rect": [ 150.0, 485.0, 130.0, 115.0 ],
                                    "varname": "gst.kick",
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
                                    "id": "obj-1",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "gst.acc.intensity.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "float", "float", "float", "float" ],
                                    "patching_rect": [ 10.0, 300.0, 130.0, 115.0 ],
                                    "varname": "gst.acc.intensity",
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "border": 0,
                                    "filename": "helpdetails.js",
                                    "id": "obj-2",
                                    "ignoreclick": 1,
                                    "jsarguments": [ "Movement Analysis" ],
                                    "maxclass": "jsui",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 10.0, 437.0, 54.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-63", 0 ],
                                    "midpoints": [ 299.5, 422.3826599121094, 431.82106018066406, 422.3826599121094, 431.82106018066406, 290.0323181152344, 449.5, 290.0323181152344 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            }
                        ],
                        "toolbaradditions": [ "s2n", "Modalys" ]
                    },
                    "patching_rect": [ 16.0, 82.0, 130.0, 22.0 ],
                    "saved_object_attributes": {
                        "fontsize": 13.0
                    },
                    "text": "p \"Movement Analysis\"",
                    "varname": "basic_tab"
                }
            },
            {
                "box": {
                    "border": 0,
                    "filename": "helpname.js",
                    "id": "obj-13",
                    "ignoreclick": 1,
                    "jsarguments": [ "Movement Analysis" ],
                    "maxclass": "jsui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 8.0, 8.0, 417.2240295410156, 57.599853515625 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-12::obj-3::obj-4": [ "live.button[2]", "live.button", 0 ],
            "obj-12::obj-7::obj-13": [ "live.toggle[4]", "live.toggle", 0 ],
            "obj-12::obj-7::obj-8::obj-17": [ "live.toggle[3]", "live.toggle[1]", 0 ],
            "obj-15::obj-25::obj-13": [ "live.toggle[2]", "live.toggle", 0 ],
            "obj-15::obj-25::obj-8::obj-17": [ "live.toggle[1]", "live.toggle[1]", 0 ],
            "obj-15::obj-3::obj-4": [ "live.button[3]", "live.button", 0 ],
            "parameter_overrides": {
                "obj-12::obj-7::obj-13": {
                    "parameter_longname": "live.toggle[4]"
                },
                "obj-12::obj-7::obj-8::obj-17": {
                    "parameter_longname": "live.toggle[3]"
                },
                "obj-15::obj-25::obj-13": {
                    "parameter_longname": "live.toggle[2]"
                },
                "obj-15::obj-25::obj-8::obj-17": {
                    "parameter_longname": "live.toggle[1]"
                },
                "obj-15::obj-3::obj-4": {
                    "parameter_longname": "live.button[3]"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "toolbaradditions": [ "s2n", "Modalys" ]
    }
}
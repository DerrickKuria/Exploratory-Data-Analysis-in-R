# ADVERTISING EXPLORATORY DATA ANALYSIS

# 1.Define the question
 This will help us the question , the dataset and the metrics of success.

## a. Specifying the question

A Kenyan entrepreneur has created an online cryptography course and would want to advertise it on her blog. She currently targets audiences originating from various countries. In the past, she ran ads to advertise a related course on the same blog and collected data in the process. She would now like to employ your services as a Data Science Consultant to help her identify which individuals are most likely to click on her ads. 


## b. Define Metrics of Success

 Our metrics of our success is finding Conclusive Conclusions from the Data to know which individuals are more likely to click on her ads.

## c. Understand context

The context is using the Data to to do Exploratory analysis to get meaningful insights and conclusions from the Advertising data.

## d. Record the experiment design 

This will involve:
i).Removing anomalies, Missing Data and Duplicates. 
ii).EDA -  Doing Univariate , Bivariate Analysis on the advertising data

## e. Data relevance

The data is very relevant to the experiment done.


# 2.Read Data

## We will start by importing the data


```R
advert <- read.csv("advertising.csv",header = TRUE)
advert

```


<table>
<thead><tr><th scope=col>Daily.Time.Spent.on.Site</th><th scope=col>Age</th><th scope=col>Area.Income</th><th scope=col>Daily.Internet.Usage</th><th scope=col>Ad.Topic.Line</th><th scope=col>City</th><th scope=col>Male</th><th scope=col>Country</th><th scope=col>Timestamp</th><th scope=col>Clicked.on.Ad</th></tr></thead>
<tbody>
	<tr><td>68.95                                              </td><td>35                                                 </td><td>61833.90                                           </td><td>256.09                                             </td><td>Cloned 5thgeneration orchestration                 </td><td>Wrightburgh                                        </td><td>0                                                  </td><td>Tunisia                                            </td><td>2016-03-27 00:53:11                                </td><td>0                                                  </td></tr>
	<tr><td>80.23                                              </td><td>31                                                 </td><td>68441.85                                           </td><td>193.77                                             </td><td>Monitored national standardization                 </td><td>West Jodi                                          </td><td>1                                                  </td><td>Nauru                                              </td><td>2016-04-04 01:39:02                                </td><td>0                                                  </td></tr>
	<tr><td>69.47                                              </td><td>26                                                 </td><td>59785.94                                           </td><td>236.50                                             </td><td>Organic bottom-line service-desk                   </td><td>Davidton                                           </td><td>0                                                  </td><td>San Marino                                         </td><td>2016-03-13 20:35:42                                </td><td>0                                                  </td></tr>
	<tr><td>74.15                                              </td><td>29                                                 </td><td>54806.18                                           </td><td>245.89                                             </td><td>Triple-buffered reciprocal time-frame              </td><td>West Terrifurt                                     </td><td>1                                                  </td><td>Italy                                              </td><td>2016-01-10 02:31:19                                </td><td>0                                                  </td></tr>
	<tr><td>68.37                                              </td><td>35                                                 </td><td>73889.99                                           </td><td>225.58                                             </td><td>Robust logistical utilization                      </td><td>South Manuel                                       </td><td>0                                                  </td><td>Iceland                                            </td><td>2016-06-03 03:36:18                                </td><td>0                                                  </td></tr>
	<tr><td>59.99                                              </td><td>23                                                 </td><td>59761.56                                           </td><td>226.74                                             </td><td>Sharable client-driven software                    </td><td>Jamieberg                                          </td><td>1                                                  </td><td>Norway                                             </td><td>2016-05-19 14:30:17                                </td><td>0                                                  </td></tr>
	<tr><td>88.91                                              </td><td>33                                                 </td><td>53852.85                                           </td><td>208.36                                             </td><td>Enhanced dedicated support                         </td><td>Brandonstad                                        </td><td>0                                                  </td><td>Myanmar                                            </td><td>2016-01-28 20:59:32                                </td><td>0                                                  </td></tr>
	<tr><td>66.00                                              </td><td>48                                                 </td><td>24593.33                                           </td><td>131.76                                             </td><td>Reactive local challenge                           </td><td>Port Jefferybury                                   </td><td>1                                                  </td><td>Australia                                          </td><td>2016-03-07 01:40:15                                </td><td>1                                                  </td></tr>
	<tr><td>74.53                                              </td><td>30                                                 </td><td>68862.00                                           </td><td>221.51                                             </td><td>Configurable coherent function                     </td><td>West Colin                                         </td><td>1                                                  </td><td>Grenada                                            </td><td>2016-04-18 09:33:42                                </td><td>0                                                  </td></tr>
	<tr><td>69.88                                              </td><td>20                                                 </td><td>55642.32                                           </td><td>183.82                                             </td><td>Mandatory homogeneous architecture                 </td><td>Ramirezton                                         </td><td>1                                                  </td><td>Ghana                                              </td><td>2016-07-11 01:42:51                                </td><td>0                                                  </td></tr>
	<tr><td>47.64                                              </td><td>49                                                 </td><td>45632.51                                           </td><td>122.02                                             </td><td>Centralized neutral neural-net                     </td><td>West Brandonton                                    </td><td>0                                                  </td><td>Qatar                                              </td><td>2016-03-16 20:19:01                                </td><td>1                                                  </td></tr>
	<tr><td>83.07                                              </td><td>37                                                 </td><td>62491.01                                           </td><td>230.87                                             </td><td>Team-oriented grid-enabled Local Area Network      </td><td>East Theresashire                                  </td><td>1                                                  </td><td>Burundi                                            </td><td>2016-05-08 08:10:10                                </td><td>0                                                  </td></tr>
	<tr><td>69.57                                              </td><td>48                                                 </td><td>51636.92                                           </td><td>113.12                                             </td><td>Centralized content-based focus group              </td><td>West Katiefurt                                     </td><td>1                                                  </td><td>Egypt                                              </td><td>2016-06-03 01:14:41                                </td><td>1                                                  </td></tr>
	<tr><td>79.52                                              </td><td>24                                                 </td><td>51739.63                                           </td><td>214.23                                             </td><td>Synergistic fresh-thinking array                   </td><td>North Tara                                         </td><td>0                                                  </td><td>Bosnia and Herzegovina                             </td><td>2016-04-20 21:49:22                                </td><td>0                                                  </td></tr>
	<tr><td>42.95                                              </td><td>33                                                 </td><td>30976.00                                           </td><td>143.56                                             </td><td>Grass-roots coherent extranet                      </td><td>West William                                       </td><td>0                                                  </td><td>Barbados                                           </td><td>2016-03-24 09:31:49                                </td><td>1                                                  </td></tr>
	<tr><td>63.45                                              </td><td>23                                                 </td><td>52182.23                                           </td><td>140.64                                             </td><td>Persistent demand-driven interface                 </td><td>New Travistown                                     </td><td>1                                                  </td><td>Spain                                              </td><td>2016-03-09 03:41:30                                </td><td>1                                                  </td></tr>
	<tr><td>55.39                                              </td><td>37                                                 </td><td>23936.86                                           </td><td>129.41                                             </td><td>Customizable multi-tasking website                 </td><td>West Dylanberg                                     </td><td>0                                                  </td><td>Palestinian Territory                              </td><td>2016-01-30 19:20:41                                </td><td>1                                                  </td></tr>
	<tr><td>82.03                                              </td><td>41                                                 </td><td>71511.08                                           </td><td>187.53                                             </td><td>Intuitive dynamic attitude                         </td><td>Pruittmouth                                        </td><td>0                                                  </td><td>Afghanistan                                        </td><td>2016-05-02 07:00:58                                </td><td>0                                                  </td></tr>
	<tr><td>54.70                                              </td><td>36                                                 </td><td>31087.54                                           </td><td>118.39                                             </td><td>Grass-roots solution-oriented conglomeration       </td><td>Jessicastad                                        </td><td>1                                                  </td><td>British Indian Ocean Territory (Chagos Archipelago)</td><td>2016-02-13 07:53:55                                </td><td>1                                                  </td></tr>
	<tr><td>74.58                                              </td><td>40                                                 </td><td>23821.72                                           </td><td>135.51                                             </td><td>Advanced 24/7 productivity                         </td><td>Millertown                                         </td><td>1                                                  </td><td>Russian Federation                                 </td><td>2016-02-27 04:43:07                                </td><td>1                                                  </td></tr>
	<tr><td>77.22                                              </td><td>30                                                 </td><td>64802.33                                           </td><td>224.44                                             </td><td>Object-based reciprocal knowledgebase              </td><td>Port Jacqueline                                    </td><td>1                                                  </td><td>Cameroon                                           </td><td>2016-01-05 07:52:48                                </td><td>0                                                  </td></tr>
	<tr><td>84.59                                              </td><td>35                                                 </td><td>60015.57                                           </td><td>226.54                                             </td><td>Streamlined non-volatile analyzer                  </td><td>Lake Nicole                                        </td><td>1                                                  </td><td>Cameroon                                           </td><td>2016-03-18 13:22:35                                </td><td>0                                                  </td></tr>
	<tr><td>41.49                                              </td><td>52                                                 </td><td>32635.70                                           </td><td>164.83                                             </td><td>Mandatory disintermediate utilization              </td><td>South John                                         </td><td>0                                                  </td><td>Burundi                                            </td><td>2016-05-20 08:49:33                                </td><td>1                                                  </td></tr>
	<tr><td>87.29                                              </td><td>36                                                 </td><td>61628.72                                           </td><td>209.93                                             </td><td>Future-proofed methodical protocol                 </td><td>Pamelamouth                                        </td><td>1                                                  </td><td>Korea                                              </td><td>2016-03-23 09:43:43                                </td><td>0                                                  </td></tr>
	<tr><td>41.39                                              </td><td>41                                                 </td><td>68962.32                                           </td><td>167.22                                             </td><td>Exclusive neutral parallelism                      </td><td>Harperborough                                      </td><td>0                                                  </td><td>Tokelau                                            </td><td>2016-06-13 17:27:09                                </td><td>1                                                  </td></tr>
	<tr><td>78.74                                              </td><td>28                                                 </td><td>64828.00                                           </td><td>204.79                                             </td><td>Public-key foreground groupware                    </td><td>Port Danielleberg                                  </td><td>1                                                  </td><td>Monaco                                             </td><td>2016-05-27 15:25:52                                </td><td>0                                                  </td></tr>
	<tr><td>48.53                                              </td><td>28                                                 </td><td>38067.08                                           </td><td>134.14                                             </td><td>Ameliorated client-driven forecast                 </td><td>West Jeremyside                                    </td><td>1                                                  </td><td>Tuvalu                                             </td><td>2016-02-08 10:46:14                                </td><td>1                                                  </td></tr>
	<tr><td>51.95                                              </td><td>52                                                 </td><td>58295.82                                           </td><td>129.23                                             </td><td>Monitored systematic hierarchy                     </td><td>South Cathyfurt                                    </td><td>0                                                  </td><td>Greece                                             </td><td>2016-07-19 08:32:10                                </td><td>1                                                  </td></tr>
	<tr><td>70.20                                              </td><td>34                                                 </td><td>32708.94                                           </td><td>119.20                                             </td><td>Open-architected impactful productivity            </td><td>Palmerside                                         </td><td>0                                                  </td><td>British Virgin Islands                             </td><td>2016-04-14 05:08:35                                </td><td>1                                                  </td></tr>
	<tr><td>76.02                                              </td><td>22                                                 </td><td>46179.97                                           </td><td>209.82                                             </td><td>Business-focused value-added definition            </td><td>West Guybury                                       </td><td>0                                                  </td><td>Bouvet Island (Bouvetoya)                          </td><td>2016-01-27 12:38:16                                </td><td>0                                                  </td></tr>
	<tr><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td><td>...</td></tr>
	<tr><td>40.18                                  </td><td>29                                     </td><td>50760.23                               </td><td>151.96                                 </td><td>Enhanced intangible portal             </td><td>Lake Tracy                             </td><td>0                                      </td><td>Hong Kong                              </td><td>2016-06-25 04:21:33                    </td><td>1                                      </td></tr>
	<tr><td>45.17                                  </td><td>48                                     </td><td>34418.09                               </td><td>132.07                                 </td><td>Down-sized background groupware        </td><td>Taylormouth                            </td><td>1                                      </td><td>Palau                                  </td><td>2016-01-27 14:41:10                    </td><td>1                                      </td></tr>
	<tr><td>50.48                                  </td><td>50                                     </td><td>20592.99                               </td><td>162.43                                 </td><td>Switchable real-time product           </td><td>Dianaville                             </td><td>0                                      </td><td>Malawi                                 </td><td>2016-05-16 18:51:59                    </td><td>1                                      </td></tr>
	<tr><td>80.87                                  </td><td>28                                     </td><td>63528.80                               </td><td>203.30                                 </td><td>Ameliorated local workforce            </td><td>Collinsburgh                           </td><td>0                                      </td><td>Uruguay                                </td><td>2016-02-27 20:20:25                    </td><td>0                                      </td></tr>
	<tr><td>41.88                                  </td><td>40                                     </td><td>44217.68                               </td><td>126.11                                 </td><td>Streamlined exuding adapter            </td><td>Port Rachel                            </td><td>1                                      </td><td>Cyprus                                 </td><td>2016-02-28 23:54:44                    </td><td>1                                      </td></tr>
	<tr><td>39.87                                  </td><td>48                                     </td><td>47929.83                               </td><td>139.34                                 </td><td>Business-focused user-facing benchmark </td><td>South Rebecca                          </td><td>1                                      </td><td>Mexico                                 </td><td>2016-06-13 06:11:33                    </td><td>1                                      </td></tr>
	<tr><td>61.84                                  </td><td>45                                     </td><td>46024.29                               </td><td>105.63                                 </td><td>Reactive bi-directional standardization</td><td>Port Joshuafort                        </td><td>1                                      </td><td>Niger                                  </td><td>2016-05-05 11:07:13                    </td><td>1                                      </td></tr>
	<tr><td>54.97                                  </td><td>31                                     </td><td>51900.03                               </td><td>116.38                                 </td><td>Virtual bifurcated portal              </td><td>Robinsontown                           </td><td>1                                      </td><td>France                                 </td><td>2016-07-07 12:17:33                    </td><td>1                                      </td></tr>
	<tr><td>71.40                                  </td><td>30                                     </td><td>72188.90                               </td><td>166.31                                 </td><td>Integrated 3rdgeneration monitoring    </td><td>Beckton                                </td><td>0                                      </td><td>Japan                                  </td><td>2016-05-24 17:07:08                    </td><td>0                                      </td></tr>
	<tr><td>70.29                                  </td><td>31                                     </td><td>56974.51                               </td><td>254.65                                 </td><td>Balanced responsive open system        </td><td>New Frankshire                         </td><td>1                                      </td><td>Norfolk Island                         </td><td>2016-03-30 14:36:55                    </td><td>0                                      </td></tr>
	<tr><td>67.26                                  </td><td>57                                     </td><td>25682.65                               </td><td>168.41                                 </td><td>Focused incremental Graphic Interface  </td><td>North Derekville                       </td><td>1                                      </td><td>Bulgaria                               </td><td>2016-05-27 05:54:03                    </td><td>1                                      </td></tr>
	<tr><td>76.58                                  </td><td>46                                     </td><td>41884.64                               </td><td>258.26                                 </td><td>Secured 24hour policy                  </td><td>West Sydney                            </td><td>0                                      </td><td>Uzbekistan                             </td><td>2016-01-03 16:30:51                    </td><td>0                                      </td></tr>
	<tr><td>54.37                                  </td><td>38                                     </td><td>72196.29                               </td><td>140.77                                 </td><td>Up-sized asymmetric firmware           </td><td>Lake Matthew                           </td><td>0                                      </td><td>Mexico                                 </td><td>2016-06-25 18:17:53                    </td><td>1                                      </td></tr>
	<tr><td>82.79                                  </td><td>32                                     </td><td>54429.17                               </td><td>234.81                                 </td><td>Distributed fault-tolerant service-desk</td><td>Lake Zacharyfurt                       </td><td>1                                      </td><td>Brunei Darussalam                      </td><td>2016-02-24 10:36:43                    </td><td>0                                      </td></tr>
	<tr><td>66.47                                  </td><td>31                                     </td><td>58037.66                               </td><td>256.39                                 </td><td>Vision-oriented human-resource synergy </td><td>Lindsaymouth                           </td><td>1                                      </td><td>France                                 </td><td>2016-03-03 03:13:48                    </td><td>0                                      </td></tr>
	<tr><td>72.88                                  </td><td>44                                     </td><td>64011.26                               </td><td>125.12                                 </td><td>Customer-focused explicit challenge    </td><td>Sarahland                              </td><td>0                                      </td><td>Yemen                                  </td><td>2016-04-21 19:56:24                    </td><td>1                                      </td></tr>
	<tr><td>76.44                                  </td><td>28                                     </td><td>59967.19                               </td><td>232.68                                 </td><td>Synchronized human-resource moderator  </td><td>Port Julie                             </td><td>1                                      </td><td>Northern Mariana Islands               </td><td>2016-04-06 17:26:37                    </td><td>0                                      </td></tr>
	<tr><td>63.37                                  </td><td>43                                     </td><td>43155.19                               </td><td>105.04                                 </td><td>Open-architected full-range projection </td><td>Michaelshire                           </td><td>1                                      </td><td>Poland                                 </td><td>2016-03-23 12:53:23                    </td><td>1                                      </td></tr>
	<tr><td>89.71                                  </td><td>48                                     </td><td>51501.38                               </td><td>204.40                                 </td><td>Versatile local forecast               </td><td>Sarafurt                               </td><td>1                                      </td><td>Bahrain                                </td><td>2016-02-17 07:00:38                    </td><td>0                                      </td></tr>
	<tr><td>70.96                                  </td><td>31                                     </td><td>55187.85                               </td><td>256.40                                 </td><td>Ameliorated user-facing help-desk      </td><td>South Denise                           </td><td>0                                      </td><td>Saint Pierre and Miquelon              </td><td>2016-06-26 07:01:47                    </td><td>0                                      </td></tr>
	<tr><td>35.79                                  </td><td>44                                     </td><td>33813.08                               </td><td>165.62                                 </td><td>Enterprise-wide tangible model         </td><td>North Katie                            </td><td>1                                      </td><td>Tonga                                  </td><td>2016-04-20 13:36:42                    </td><td>1                                      </td></tr>
	<tr><td>38.96                                  </td><td>38                                     </td><td>36497.22                               </td><td>140.67                                 </td><td>Versatile mission-critical application </td><td>Mauricefurt                            </td><td>1                                      </td><td>Comoros                                </td><td>2016-07-21 16:02:40                    </td><td>1                                      </td></tr>
	<tr><td>69.17                                  </td><td>40                                     </td><td>66193.81                               </td><td>123.62                                 </td><td>Extended leadingedge solution          </td><td>New Patrick                            </td><td>0                                      </td><td>Montenegro                             </td><td>2016-03-06 11:36:06                    </td><td>1                                      </td></tr>
	<tr><td>64.20                                  </td><td>27                                     </td><td>66200.96                               </td><td>227.63                                 </td><td>Phased zero tolerance extranet         </td><td>Edwardsmouth                           </td><td>1                                      </td><td>Isle of Man                            </td><td>2016-02-11 23:45:01                    </td><td>0                                      </td></tr>
	<tr><td>43.70                                  </td><td>28                                     </td><td>63126.96                               </td><td>173.01                                 </td><td>Front-line bifurcated ability          </td><td>Nicholasland                           </td><td>0                                      </td><td>Mayotte                                </td><td>2016-04-04 03:57:48                    </td><td>1                                      </td></tr>
	<tr><td>72.97                                  </td><td>30                                     </td><td>71384.57                               </td><td>208.58                                 </td><td>Fundamental modular algorithm          </td><td>Duffystad                              </td><td>1                                      </td><td>Lebanon                                </td><td>2016-02-11 21:49:00                    </td><td>1                                      </td></tr>
	<tr><td>51.30                                  </td><td>45                                     </td><td>67782.17                               </td><td>134.42                                 </td><td>Grass-roots cohesive monitoring        </td><td>New Darlene                            </td><td>1                                      </td><td>Bosnia and Herzegovina                 </td><td>2016-04-22 02:07:01                    </td><td>1                                      </td></tr>
	<tr><td>51.63                                  </td><td>51                                     </td><td>42415.72                               </td><td>120.37                                 </td><td>Expanded intangible solution           </td><td>South Jessica                          </td><td>1                                      </td><td>Mongolia                               </td><td>2016-02-01 17:24:57                    </td><td>1                                      </td></tr>
	<tr><td>55.55                                  </td><td>19                                     </td><td>41920.79                               </td><td>187.95                                 </td><td>Proactive bandwidth-monitored policy   </td><td>West Steven                            </td><td>0                                      </td><td>Guatemala                              </td><td>2016-03-24 02:35:54                    </td><td>0                                      </td></tr>
	<tr><td>45.01                                  </td><td>26                                     </td><td>29875.80                               </td><td>178.35                                 </td><td>Virtual 5thgeneration emulation        </td><td>Ronniemouth                            </td><td>0                                      </td><td>Brazil                                 </td><td>2016-06-03 21:43:21                    </td><td>1                                      </td></tr>
</tbody>
</table>




```R
head(advert)
```


<table>
<thead><tr><th scope=col>Daily.Time.Spent.on.Site</th><th scope=col>Age</th><th scope=col>Area.Income</th><th scope=col>Daily.Internet.Usage</th><th scope=col>Ad.Topic.Line</th><th scope=col>City</th><th scope=col>Male</th><th scope=col>Country</th><th scope=col>Timestamp</th><th scope=col>Clicked.on.Ad</th></tr></thead>
<tbody>
	<tr><td>68.95                                </td><td>35                                   </td><td>61833.90                             </td><td>256.09                               </td><td>Cloned 5thgeneration orchestration   </td><td>Wrightburgh                          </td><td>0                                    </td><td>Tunisia                              </td><td>2016-03-27 00:53:11                  </td><td>0                                    </td></tr>
	<tr><td>80.23                                </td><td>31                                   </td><td>68441.85                             </td><td>193.77                               </td><td>Monitored national standardization   </td><td>West Jodi                            </td><td>1                                    </td><td>Nauru                                </td><td>2016-04-04 01:39:02                  </td><td>0                                    </td></tr>
	<tr><td>69.47                                </td><td>26                                   </td><td>59785.94                             </td><td>236.50                               </td><td>Organic bottom-line service-desk     </td><td>Davidton                             </td><td>0                                    </td><td>San Marino                           </td><td>2016-03-13 20:35:42                  </td><td>0                                    </td></tr>
	<tr><td>74.15                                </td><td>29                                   </td><td>54806.18                             </td><td>245.89                               </td><td>Triple-buffered reciprocal time-frame</td><td>West Terrifurt                       </td><td>1                                    </td><td>Italy                                </td><td>2016-01-10 02:31:19                  </td><td>0                                    </td></tr>
	<tr><td>68.37                                </td><td>35                                   </td><td>73889.99                             </td><td>225.58                               </td><td>Robust logistical utilization        </td><td>South Manuel                         </td><td>0                                    </td><td>Iceland                              </td><td>2016-06-03 03:36:18                  </td><td>0                                    </td></tr>
	<tr><td>59.99                                </td><td>23                                   </td><td>59761.56                             </td><td>226.74                               </td><td>Sharable client-driven software      </td><td>Jamieberg                            </td><td>1                                    </td><td>Norway                               </td><td>2016-05-19 14:30:17                  </td><td>0                                    </td></tr>
</tbody>
</table>




```R
tail(advert)
```

 # 3.Check the data



### We will run a few R codes to get summaries about the advertising data.


```R
#i).view the advertise data
summary(advert)
```


     Daily.Time.Spent.on.Site      Age         Area.Income    Daily.Internet.Usage
     Min.   :32.60            Min.   :19.00   Min.   :13996   Min.   :104.8       
     1st Qu.:51.36            1st Qu.:29.00   1st Qu.:47032   1st Qu.:138.8       
     Median :68.22            Median :35.00   Median :57012   Median :183.1       
     Mean   :65.00            Mean   :36.01   Mean   :55000   Mean   :180.0       
     3rd Qu.:78.55            3rd Qu.:42.00   3rd Qu.:65471   3rd Qu.:218.8       
     Max.   :91.43            Max.   :61.00   Max.   :79485   Max.   :270.0       
                                                                                  
                                     Ad.Topic.Line              City    
     Adaptive 24hour Graphic Interface      :  1   Lisamouth      :  3  
     Adaptive asynchronous attitude         :  1   Williamsport   :  3  
     Adaptive context-sensitive application :  1   Benjaminchester:  2  
     Adaptive contextually-based methodology:  1   East John      :  2  
     Adaptive demand-driven knowledgebase   :  1   East Timothy   :  2  
     Adaptive uniform capability            :  1   Johnstad       :  2  
     (Other)                                :994   (Other)        :986  
          Male                 Country                  Timestamp   Clicked.on.Ad
     Min.   :0.000   Czech Republic:  9   2016-01-01 02:52:10:  1   Min.   :0.0  
     1st Qu.:0.000   France        :  9   2016-01-01 03:35:35:  1   1st Qu.:0.0  
     Median :0.000   Afghanistan   :  8   2016-01-01 05:31:22:  1   Median :0.5  
     Mean   :0.481   Australia     :  8   2016-01-01 08:27:06:  1   Mean   :0.5  
     3rd Qu.:1.000   Cyprus        :  8   2016-01-01 15:14:24:  1   3rd Qu.:1.0  
     Max.   :1.000   Greece        :  8   2016-01-01 20:17:49:  1   Max.   :1.0  
                     (Other)       :950   (Other)            :994                


### We realise these summaries are not well arranged hence we will do for each variable


```R
#Giving variables simple variable names
time <- advert$`Daily Time Spent on Site`
age <-  advert$Age
area_income <- advert$`Area Income`
daily_internet <-advert$`Daily Internet Usage`
click <- advert$`Clicked on Ad`
country <-advert$Country
male <- advert$Male
city <- advert$City
topic <- advert$`Ad Topic Line`
timestamp <- advert$Timestamp
```

#### Now we can check summaries of the specific Data variables of the advertising data


```R

#Summary Time
summary(time)

```

#### The maximum time spent on the site was 91.43 units and the least was 32.60 units. 
#### The averagetime on the site was 65 Units


```R
#Summary Age
summary(age)

```

     Min. 1st Qu. Median  Mean  3rd Qu.    Max. 
  19.00   29.00   35.00   36.01   42.00   61.00 
  
  #### The min age of those who visited the site is 19 years and themaximum is  61  years 


```R
#Summary Area Income
summary(area_income)

```


```R
#Summary Daily internet
summary(daily_internet)

```


```R
# Summary Click
summary(click)
```


```R
#ii).view the information and data types of the data
str(advert)
```


```R
#iii).check the dimension of the data   (data shape)
dim(advert)
```

##### We can observe that the data is 1000 rows and 10 columns


```R
#iv).Check the class
class(advert)
```


```R
#The rows
nrow(advert)
```


```R
#Check the levels in Categorical Variables(Factors)

levels(male)
```


```R
#we need to change the Feature column into a categorical one
#First we will check the levels
levels(advert$`Clicked on Ad`)
```


```R
#The results show that it is only 2 Levels "o" and "1".
#Now lets change the data types of categorical variables.

advert$`Clicked on Ad` <- as.factor(advert$`Clicked on Ad`)

```


```R
advert$Male <- as.factor(advert$Male)
#Lets inspect the data type again 
str(advert)
```


```R
#We may also split the Timestamp variable into Date and time variables.To effectively do this we will
# use the tidyr package to split the columns with our delimiter as the space and rename
#the columns as Date and Time. 

install.packages('tidyr')
library(tidyr)

advert %>% #pipe operator
  separate(Timestamp,c("Date", "Time")," ")

```


```R
advert
```

# 3.cleaning data


#### We  will look for inconsistencies in the dataset . Our Process will be as follows
#### 1. Missing Data
#### 2. Outliers
#### 3. Duplicates

## a. Find missing data


```R
# i).Number of missing data in area income variable

missing_data_area_income <- length(which(is.na(area_income)))
missing_data_area_income
```


```R

# ii).Number of missing data in click
missing_data_click <- length(which(is.na(click)))
missing_data_click


```


```R
# iii).Number of missing data in time variable
missing_data_time <- length(which(is.na(time)))
missing_data_time


```


```R
# iv).Number of missing data in daily internet variable
missing_data_daily_internet <- length(which(is.na(daily_internet)))
missing_data_daily_internet


```


```R
#v)Number of missing data in age variable
missing_data_age <- length(which(is.na(age)))
missing_data_age

```

#### From the Data, we can observe that there was no Missing data from the dataset

## b.Outliers


### Using Boxplots to show Ouliers in the numeric Variables. 


```R
boxplot(age)

```


```R
boxplot(area_income)

```


```R
boxplot(click)


```


```R
boxplot(daily_internet)

```


```R

boxplot(male)

```


```R
boxplot(advert$time)
```

## c. Dealing with Duplicates



```R

duplicated_age = advert[duplicated(advert),]
duplicated_age

```

#### the data does not have any duplicate values. 

# 4. Exploratory  Data Analysis

## 1. measures of Tendency


### a. Mean


```R
mean_age = mean(age)
mean_age


```


```R
mean_area_income = mean(area_income)
mean_area_income



```


```R
mean_daily_internet = mean(daily_internet)
mean_daily_internet


```


```R
mean_male = mean(male)
mean_male
```


```R
mean_area_income = mean(area_income)
mean_area_income


```


```R
###b. Median


```


```R
median_age = median(age)
median_age

```


```R
median_daily_internet = median(daily_internet)
median_daily_internet


```


```R
median_click = median(click)
median_click

```


```R
median_area_income = median(area_income)
median_area_income


```


```R
median_male = median(male)
median_male
```

### c. Mode


```R
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

mode_age <- getmode(age)
mode_age


```


```R
mode_daily_internet = getmode(daily_internet)
mode_daily_internet


```


```R
mode_area_income = getmode(area_income)
mode_area_income




```


```R
mode_time = getmode(time)
mode_time
```

### 4. Max & Min


```R
max(age)
min(age)


```


```R
max(time)
min(time)


```


```R
max(daily_internet)
min(daily_internet)


```


```R
max(area_income)
min(area_income)


```


```R
max(click)
min(click)


```


```R
#Range

```


```R
range(click)

```


```R
range(age)

```


```R
range(daily_internet)

```


```R
range(area_income)

```


```R
range(time)

```


```R
range(area_income)
```

## 2. Measures of Dispersion



### a. Variance



```R
var(click)

```


```R
var(time)
```


```R
var(age)

```


```R
var(daily_internet)

```


```R
var(area_income)
```


```R
###b. Standard deviation

```


```R
sd(click)

```


```R
sd(time)

```


```R
sd(age)

```


```R
sd(daily_internet)

```


```R
sd(area_income)
```


```R
#b. Bivariate


```


```R
#Correlation

```


```R
cor(age,time)

```


```R
cor(daily_internet,time)

```


```R
cor(area_income, click)

```


```R
cor(age, area_income)

```


```R
cor(time, daily_internet)
```


```R

```


```R

```


```R

```


```R

```


```R

```

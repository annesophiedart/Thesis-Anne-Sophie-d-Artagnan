* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.
FILTER OFF.
USE ALL.
SELECT IF (Finished = 1).
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (Q5 = 2 | Q5 = 3).
EXECUTE.

RECODE Virtual_influencerxc_1 (0 thru 40000=Copy) INTO quest1pi.
EXECUTE.

RECODE humanxcontrol_1 (0 thru 40000=Copy) INTO quest1pi.
EXECUTE.

RECODE virtualxdetailed_1 (0 thru 40000=Copy) INTO quest1pi.
EXECUTE.

RECODE virtualxsimple_1 (0 thru 40000=Copy) INTO quest1pi.
EXECUTE.

RECODE humanxsimple_1 (0 thru 40000=Copy) INTO quest1pi.
EXECUTE.

RECODE humanxdetailed_1 (0 thru 40000=Copy) INTO quest1pi.
EXECUTE.

RECODE Virtual_influencerxc_2 (0 thru 40000=Copy) INTO quest2pi.
EXECUTE.

RECODE humanxcontrol_2 (0 thru 40000=Copy) INTO quest2pi.
EXECUTE.

RECODE virtualxdetailed_2 (0 thru 40000=Copy) INTO quest2pi.
EXECUTE.

RECODE virtualxsimple_2 (0 thru 40000=Copy) INTO quest2pi.
EXECUTE.

RECODE humanxsimple_2 (0 thru 40000=Copy) INTO quest2pi.
EXECUTE.

RECODE humanxdetailed_2 (0 thru 40000=Copy) INTO quest2pi.
EXECUTE.

RECODE humanxcontrol_3 (0 thru 40000=Copy) INTO quest3pi.
EXECUTE.

RECODE Virtual_influencerxc_3 (0 thru 40000=Copy) INTO quest3pi.
EXECUTE.

RECODE virtualxdetailed_3 (0 thru 40000=Copy) INTO quest3pi.
EXECUTE.

RECODE virtualxsimple_3 (0 thru 40000=Copy) INTO quest3pi.
EXECUTE.

RECODE humanxsimple_3 (0 thru 40000=Copy) INTO quest3pi.
EXECUTE.

RECODE humanxdetailed_3 (0 thru 40000=Copy) INTO quest3pi.
EXECUTE.

RECODE Virtual_influencerxc_4 (0 thru 40000=Copy) INTO quest4pi.
EXECUTE.

RECODE Virtual_influencerxc_4 (0 thru 40000=Copy) INTO quest4pi.
EXECUTE.

RECODE humanxcontrol_4 (0 thru 40000=Copy) INTO quest4pi.
EXECUTE.

RECODE virtualxdetailed_4 (0 thru 40000=Copy) INTO quest4pi.
EXECUTE.

RECODE virtualxsimple_4 (0 thru 40000=Copy) INTO quest4pi.
EXECUTE.

RECODE humanxsimple_4 (0 thru 40000=Copy) INTO quest4pi.
EXECUTE.

RECODE humanxdetailed_4 (0 thru 40000=Copy) INTO quest4pi.
EXECUTE.

RECODE Virtual_influencerxc_1.0 (0 thru 40000=Copy) INTO quest1oct.
EXECUTE.

RECODE humanxcontrol_1.0 (0 thru 40000=Copy) INTO quest1oct.
EXECUTE.

RECODE virtualxdetailed_1.0 (0 thru 40000=Copy) INTO quest1oct.
EXECUTE.

RECODE virtualxsimple_1.0 (0 thru 40000=Copy) INTO quest1oct.
EXECUTE.

RECODE humanxsimple_1.0 (0 thru 40000=Copy) INTO quest1oct.
EXECUTE.

RECODE humanxdetailed_1.0 (0 thru 40000=Copy) INTO quest1oct.
EXECUTE.

RECODE Virtual_influencerxc_2.0 (0 thru 40000=Copy) INTO quest2oct.
EXECUTE.

RECODE humanxcontrol_2.0 (0 thru 40000=Copy) INTO quest2oct.
EXECUTE.

RECODE virtualxdetailed_2.0 (0 thru 40000=Copy) INTO quest2oct.
EXECUTE.

RECODE virtualxsimple_2.0 (0 thru 40000=Copy) INTO quest2oct.
EXECUTE.

RECODE humanxsimple_2.0 (0 thru 40000=Copy) INTO quest2oct.
EXECUTE.

RECODE humanxdetailed_2.0 (0 thru 40000=Copy) INTO quest2oct.
EXECUTE.

RECODE Virtual_influencerxc_3.0 (0 thru 40000=Copy) INTO quest3oct.
EXECUTE.

RECODE humanxcontrol_3.0 (0 thru 40000=Copy) INTO quest3oct.
EXECUTE.

RECODE virtualxdetailed_3.0 (0 thru 40000=Copy) INTO quest3oct.
EXECUTE.

RECODE virtualxsimple_3.0 (0 thru 40000=Copy) INTO quest3oct.
EXECUTE.

RECODE humanxsimple_3.0 (0 thru 40000=Copy) INTO quest3oct.
EXECUTE.

RECODE humanxdetailed_3.0 (0 thru 40000=Copy) INTO quest3oct.
EXECUTE.

RECODE humanxdetailed_4.0 (0 thru 40000=Copy) INTO quest4oct.
EXECUTE.

RECODE humanxsimple_4.0 (0 thru 40000=Copy) INTO quest4oct.
EXECUTE.

RECODE virtualxsimple_4.0 (0 thru 40000=Copy) INTO quest4oct.
EXECUTE.

RECODE virtualxdetailed_4.0 (0 thru 40000=Copy) INTO quest4oct.
EXECUTE.

RECODE humanxcontrol_4.0 (0 thru 40000=Copy) INTO quest4oct.
EXECUTE.

RECODE Virtual_influencerxc_4.0 (0 thru 40000=Copy) INTO quest4oct.
EXECUTE.

RECODE Virtual_influencerxc_5 (0 thru 40000=Copy) INTO quest5oct.
EXECUTE.

RECODE humanxcontrol_5 (0 thru 40000=Copy) INTO quest5oct.
EXECUTE.

RECODE virtualxdetailed_5 (0 thru 40000=Copy) INTO quest5oct.
EXECUTE.

RECODE virtualxsimple_5 (0 thru 40000=Copy) INTO quest5oct.
EXECUTE.

RECODE humanxsimple_5 (0 thru 40000=Copy) INTO quest5oct.
EXECUTE.

RECODE humanxdetailed_5 (0 thru 40000=Copy) INTO quest5oct.
EXECUTE.

COMPUTE purchasing_intention=Mean(quest1pi,quest2pi,quest3pi,quest4pi).
EXECUTE.

COMPUTE online_consumer_trust=Mean(quest1oct,quest2oct,quest3oct,quest4oct,quest5oct).
EXECUTE.

DATASET ACTIVATE DataSet1.
RECODE FL_11_DO_Virtualinfluencerxcontrol_ (0 thru 40000=0) INTO influencertype.
EXECUTE.

RECODE FL_11_DO_virtualxdetailed (0 thru 40000=0) INTO influencertype.
EXECUTE.

RECODE FL_11_DO_virtualxsimple (0 thru 40000=0) INTO influencertype.
EXECUTE.

RECODE FL_11_DO_humanxcontrol (0 thru 40000=1) INTO influencertype.
EXECUTE.

RECODE FL_11_DO_humanxsimple (0 thru 40000=1) INTO influencertype.
EXECUTE.

RECODE FL_11_DO_humanxdetailed (0 thru 40000=1) INTO influencertype.
EXECUTE.

RECODE FL_11_DO_Virtualinfluencerxcontrol_ (0 thru 40000=1) INTO sponsorshipdisclosure.
EXECUTE.

RECODE FL_11_DO_humanxcontrol (0 thru 40000=1) INTO sponsorshipdisclosure.
EXECUTE.

RECODE FL_11_DO_virtualxdetailed (0 thru 40000=2) INTO sponsorshipdisclosure.
EXECUTE.

RECODE FL_11_DO_humanxdetailed (0 thru 40000=2) INTO sponsorshipdisclosure.
EXECUTE.

RECODE FL_11_DO_virtualxsimple (0 thru 40000=3) INTO sponsorshipdisclosure.
EXECUTE.

RECODE FL_11_DO_humanxsimple (0 thru 40000=3) INTO sponsorshipdisclosure.
EXECUTE.

RECODE sponsorshipdisclosure (1=0) (2=1) (3=1) INTO Sponsorshipdisclosure_binary.
EXECUTE.

DESCRIPTIVES VARIABLES=purchasing_intention online_consumer_trust influencertype 
    sponsorshipdisclosure Q28
  /STATISTICS=MEAN STDDEV MIN MAX.

EXAMINE VARIABLES=purchasing_intention online_consumer_trust BY influencertype sponsorshipdisclosure    
  /PLOT BOXPLOT STEMLEAF NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

FREQUENCIES VARIABLES=Q4 Q5 Q21 Q26 Q29 Q27 Q30
  /STATISTICS=STDDEV MEAN MEDIAN
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=FL_11_DO_Virtualinfluencerxcontrol_ FL_11_DO_humanxcontrol 
    FL_11_DO_virtualxdetailed FL_11_DO_virtualxsimple FL_11_DO_humanxsimple FL_11_DO_humanxdetailed
  /STATISTICS=STDDEV MEAN MEDIAN
  /ORDER=ANALYSIS.

FACTOR
  /VARIABLES quest1pi quest2pi quest3pi quest4pi
  /MISSING LISTWISE 
  /ANALYSIS quest1pi quest2pi quest3pi quest4pi
  /PRINT INITIAL EXTRACTION ROTATION
  /CRITERIA MINEIGEN(1) ITERATE(25)
  /EXTRACTION PC
  /CRITERIA KAISER  ITERATE(25)
  /ROTATION VARIMAX
  /METHOD=CORRELATION.

FACTOR
  /VARIABLES quest1oct quest2oct quest3oct quest4oct quest5oct
  /MISSING LISTWISE 
  /ANALYSIS quest1oct quest2oct quest3oct quest4oct quest5oct
  /PRINT INITIAL EXTRACTION ROTATION
  /CRITERIA MINEIGEN(1) ITERATE(25)
  /EXTRACTION PC
  /CRITERIA KAISER  ITERATE(25)
  /ROTATION VARIMAX
  /METHOD=CORRELATION.

RELIABILITY
  /VARIABLES=quest1pi quest2pi quest3pi quest4pi
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

RELIABILITY
  /VARIABLES=quest1oct quest2oct quest3oct quest4oct quest5oct
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL.

EXAMINE VARIABLES=purchasing_intention online_consumer_trust BY influencertype sponsorshipdisclosure    
  /PLOT BOXPLOT STEMLEAF NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

GLM purchasing_intention online_consumer_trust BY influencertype sponsorshipdisclosure WITH Q28
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /SAVE=RESID ZRESID
  /PRINT=HOMOGENEITY
  /PLOT=RESIDUALS 
  /CRITERIA=ALPHA(.05)
  /DESIGN=Q28 influencertype sponsorshipdisclosure influencertype*sponsorshipdisclosure.

EXAMINE VARIABLES=RES_1 ZRE_1
  /PLOT BOXPLOT STEMLEAF NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

EXAMINE VARIABLES=RES_2 ZRE_2
  /PLOT BOXPLOT STEMLEAF NPPLOT
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.


*Nonparametric Tests: Independent Samples. 
NPTESTS 
  /INDEPENDENT TEST (online_consumer_trust purchasing_intention) GROUP (influencertype) 
  /MISSING SCOPE=ANALYSIS USERMISSING=EXCLUDE
  /CRITERIA ALPHA=0.05  CILEVEL=95.

*Nonparametric Tests: Independent Samples. 
NPTESTS 
  /INDEPENDENT TEST (online_consumer_trust purchasing_intention) GROUP (sponsorshipdisclosure) 
  /MISSING SCOPE=ANALYSIS USERMISSING=EXCLUDE
  /CRITERIA ALPHA=0.05  CILEVEL=95.

*Nonparametric Tests: Independent Samples. 
NPTESTS 
  /INDEPENDENT TEST (online_consumer_trust purchasing_intention) GROUP 
    (Sponsorshipdisclosure_binary) 
  /MISSING SCOPE=ANALYSIS USERMISSING=EXCLUDE
  /CRITERIA ALPHA=0.05  CILEVEL=95.
BOOTSTRAP
  /SAMPLING METHOD=SIMPLE
  /VARIABLES TARGET=purchasing_intention INPUT=  sponsorshipdisclosure influencertype Q28  
  /CRITERIA CILEVEL=95 CITYPE=PERCENTILE  NSAMPLES=5000
  /MISSING USERMISSING=EXCLUDE.
REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CHANGE
  /CRITERIA=PIN(.05) POUT(.10) TOLERANCE(.0001)
  /NOORIGIN 
  /DEPENDENT purchasing_intention
  /METHOD=ENTER sponsorshipdisclosure influencertype Q28.

BOOTSTRAP
  /SAMPLING METHOD=SIMPLE
  /VARIABLES TARGET=online_consumer_trust INPUT=  sponsorshipdisclosure influencertype Q28  
  /CRITERIA CILEVEL=95 CITYPE=PERCENTILE  NSAMPLES=5000
  /MISSING USERMISSING=EXCLUDE.
REGRESSION
  /DESCRIPTIVES MEAN STDDEV CORR SIG N
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA CHANGE
  /CRITERIA=PIN(.05) POUT(.10) TOLERANCE(.0001)
  /NOORIGIN 
  /DEPENDENT online_consumer_trust
  /METHOD=ENTER sponsorshipdisclosure influencertype Q28.

# PROCESS cannot be done via syntax 
    
FREQUENCIES VARIABLES=Gender Age Country UseInsta WhyInsta Howofeninsta
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=timedaily
  /ORDER=ANALYSIS.

DESCRIPTIVES VARIABLES=Gender Age Country UseInsta WhyInsta Howofeninsta timedaily
  /STATISTICS=MEAN STDDEV MIN MAX.

BOOTSTRAP
  /SAMPLING METHOD=SIMPLE
  /VARIABLES TARGET=purchasing_intention INPUT=  influencertype sponsorshipdisclosure Q28  
  /CRITERIA CILEVEL=95 CITYPE=PERCENTILE  NSAMPLES=5000
  /MISSING USERMISSING=EXCLUDE.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL CHANGE
  /CRITERIA=PIN(.05) POUT(.10) TOLERANCE(.0001)
  /NOORIGIN 
  /DEPENDENT purchasing_intention
  /METHOD=ENTER influencertype sponsorshipdisclosure Q28.

BOOTSTRAP
  /SAMPLING METHOD=SIMPLE
  /VARIABLES TARGET=online_consumer_trust INPUT=  influencertype sponsorshipdisclosure Q28  
  /CRITERIA CILEVEL=95 CITYPE=PERCENTILE  NSAMPLES=5000
  /MISSING USERMISSING=EXCLUDE.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL CHANGE
  /CRITERIA=PIN(.05) POUT(.10) TOLERANCE(.0001)
  /NOORIGIN 
  /DEPENDENT online_consumer_trust
  /METHOD=ENTER influencertype sponsorshipdisclosure Q28.

DATASET ACTIVATE DataSet1.
NPAR TESTS
  /K-W=purchasing_intention BY sponsorshipdisclosure(1 5000)
  /MISSING ANALYSIS.

��             �name I    WIDTH  � 	PROVFLAGS �   sqlparam K    SUBTYPE I  Text sqltext K    SUBTYPE I  Text template K    SUBTYPE I  Binary db I    WIDTH  
 script K    SUBTYPE I  Text use_parameter I    WIDTH   module I    WIDTH  2 last_update      report_version      ignore_presetvalue I    WIDTH   
script_dfm K    SUBTYPE I  Text template_preview K    SUBTYPE I  Binary private_report I    WIDTH   encrypt_template K    SUBTYPE I  Binary no_override I    WIDTH   preview_pdf K    SUBTYPE I  Binary preview_jpg K    SUBTYPE I  Binary report_remark K    SUBTYPE I  Text hos_guid I    WIDTH  & hos_guid_ext I    WIDTH  @ report_description I    WIDTH  � support_multi_language I    WIDTH   reporttemplate_id      public_report I    WIDTH   ignore_query_builder I    WIDTH   	web_ready I    WIDTH    PRIMARY_KEY �       @UUU6CUSTOM-Ẻ�ѹ�֡��ô����ѡ�Ҽ����� Covid-19 �ó� HISI   String^1755-12^650422164954�  SELECT v.vn,p.cid,p.hn,p.pname,Concat(p.pname, "", p.fname, "  ", p.lname) AS fullname,v.age_y,v.age_m,ThaiDateS(v.vstdate) as vsstdate,v.vstdate
,concat(p.pname,p.fname," ",p.lname)as ptname,concat(p.fname," ",p.lname)as ptname2,
(v.vstdate + INTERVAL 2 DAY) as dc_date, (v.vstdate + INTERVAL 10 DAY) as dc_date2,o.vsttime
,d.name as nurse,op.cc,round(op.bw,0)as bw,round(op.height,0)as ht, round(op.temperature,1) as temperature
,round(op.pulse,0) as pulse,round(op.rr,0) as rr , round(op.bpd,0)as bpd
, round(op.bps,0)as bps,s.name as sex,p.informtel,
 concat(ifnull(p.addrpart,''), " ����. ",ifnull(p.moopart,''), "  �. ",ifnull(t3.name,''), " �.  ", ifnull(t2.name,'') , " �. ",ifnull(t1.name,''),"  ",ifnull(p.po_code,'')) AS Fulladd
,p.hometel,d.licenseno,pt.`name` as ptty_name,(select hospitalname from opdconfig) as hosname
,(select ph.shortname from opdconfig o INNER JOIN prs_hici_hoscode ph on ph.hospcode = o.hospitalcode LIMIT 1) as shortname
,(select hospitalcode from opdconfig) as hospcode2,concat(date_format(date_add(v.vstdate,INTERVAL 2 DAY),'%d/%m/'),date_format(date_add(v.vstdate,INTERVAL 2 DAY),'%Y')+543) as houre48
FROM   vn_stat v
INNER JOIN ovst o on o.vn = v.vn
  LEFT JOIN  patient p ON p.hn = v.hn
  LEFT JOIN  doctor d ON v.dx_doctor = d.code
  LEFT JOIN  opdscreen op ON op.vn=v.vn
 LEFT JOIN  sex s  ON s.code=p.sex
  LEFT JOIN pttype pt ON  v.pttype =pt.pttype
  LEFT OUTER JOIN thaiaddress t1 ON t1.chwpart = p.chwpart AND t1.amppart = "00" AND t1.tmbpart = "00"
  LEFT OUTER JOIN thaiaddress t2 ON t2.chwpart = p.chwpart AND t2.amppart = p.amppart AND t2.tmbpart = "00"
  LEFT OUTER JOIN thaiaddress t3 ON t3.chwpart = p.chwpart AND t3.amppart = p.amppart AND t3.tmbpart = p.tmbpart
  where v.vn="650422164954"�� TPF0	TppReportppReportAutoStopDataPipelineppDBPipelinePassSetting	psTwoPassPrinterSetup.BinName   @%7--1B!14PrinterSetup.DocumentName&   C U S T O M - - +1*7-"4"-!@7H-#12##1)2PrinterSetup.DuplexdpNonePrinterSetup.PaperName   A4 210 x 297 มม.PrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight(� PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize	Template.FileName/C:\Users\Tran\AppData\Local\Temp\KSK-Report.RTMAllowPrintToFile	ArchiveFileName ($MyDocuments)\ReportArchive.raf
DeviceTypeScreenDefaultFileDeviceTypePDFEmailSettings.ReportFormatPDF
LanguageIDDefaultModalPreviewOpenFileOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.EnabledOutlineSettings.VisibleThumbnailSettings.Enabled	ThumbnailSettings.Visible	ThumbnailSettings.DeadSpacePDFSettings.EmbedFontOptions %PDFSettings.EncryptSettings.AllowCopy	)PDFSettings.EncryptSettings.AllowInteract	'PDFSettings.EncryptSettings.AllowModify	&PDFSettings.EncryptSettings.AllowPrint	(PDFSettings.EncryptSettings.AllowExtract	)PDFSettings.EncryptSettings.AllowAssemble	-PDFSettings.EncryptSettings.AllowQualityPrint	#PDFSettings.EncryptSettings.Enabled%PDFSettings.EncryptSettings.KeyLengthkl40Bit*PDFSettings.EncryptSettings.EncryptionTypeetRC4PDFSettings.FontEncodingfeAnsi!PDFSettings.ImageCompressionLevelRTFSettings.DefaultFont.CharsetDEFAULT_CHARSETRTFSettings.DefaultFont.ColorclWindowTextRTFSettings.DefaultFont.Height�RTFSettings.DefaultFont.NameArialRTFSettings.DefaultFont.Style TextFileName($MyDocuments)\Report.pdf TextSearchSettings.DefaultString
<FindText>TextSearchSettings.EnabledXLSSettings.AppNameReportBuilderXLSSettings.AuthorReportBuilderXLSSettings.SubjectReportXLSSettings.TitleReportXLSSettings.WorksheetNameReportLeftTTopVersion17.03mmColumnWidthP4 DataPipelineNameppDBPipeline TppHeaderBandppHeaderBand1Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight mmPrintPosition   TppDetailBandppDetailBand1Background1.Brush.StylebsClearBackground2.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�k mmPrintPosition  TppLabelppLabel7DesignLayerppDesignLayer1UserNameLabel7Caption   -2"8  >   6 0   5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop\? mmWidth�5BandType	LayerName
Foreground  TppLabelppLabel8DesignLayerppDesignLayer1UserNameLabel8Caption!COPD,include chronic lung diseaseFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop S mmWidtho�  BandType	LayerName
Foreground  TppLabel	ppLabel15DesignLayerppDesignLayer1UserNameLabel15Caption   C K D ( B#D'2"@#7I-#1) Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop�f mmWidth]BandType	LayerName
Foreground  TppLabel	ppLabel16DesignLayerppDesignLayer1UserNameLabel16CaptionChronic Heart diseaseFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTopN{ mmWidthliBandType	LayerName
Foreground  TppLabel	ppLabel17DesignLayerppDesignLayer1UserNameLabel17Caption   C V A ( B#+%-@%7-*!-) Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop� mmWidth�nBandType	LayerName
Foreground  TppLabel	ppLabel18DesignLayerppDesignLayer1UserNameLabel18CaptionT2DMFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop�� mmWidth�BandType	LayerName
Foreground  TppLabel	ppLabel19DesignLayerppDesignLayer1UserNameLabel19Caption.   โรคอ้วน (BMI > 30 or BW > 90 kg)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTopQ� mmWidth�  BandType	LayerName
Foreground  TppLabel	ppLabel20DesignLayerppDesignLayer1UserNameLabel20Caption)   Cirrhosis(โรคตับแข็ง)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop� mmWidth�[BandType	LayerName
Foreground  TppLabel	ppLabel21DesignLayerppDesignLayer1UserNameLabel201Caption Absolute lymphocyte<1000 cell/mmFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop;� mmWidth�  BandType	LayerName
Foreground  TppLabel	ppLabel24DesignLayerppDesignLayer1UserNameLabel24Caption$   1 . !58%-7HCI25H4@
7I-  3'Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop~� mmWidth��  BandType	LayerName
Foreground  TppShapeppShape1DesignLayerppDesignLayer1UserNameShape1mmHeightV
mmLeft�mmTop"W mmWidthM	BandType	LayerName
Foreground  TppShapeppShape3DesignLayerppDesignLayer1UserNameShape3mmHeightV
mmLeft�mmTop�F mmWidthM	BandType	LayerName
Foreground  TppShapeppShape4DesignLayerppDesignLayer1UserNameShape4mmHeightV
mmLeft�mmTop�k mmWidthM	BandType	LayerName
Foreground  TppShapeppShape5DesignLayerppDesignLayer1UserNameShape5mmHeightV
mmLeft�mmTopq mmWidthM	BandType	LayerName
Foreground  TppShapeppShape6DesignLayerppDesignLayer1UserNameShape6mmHeightV
mmLeft�mmTop-� mmWidthM	BandType	LayerName
Foreground  TppShapeppShape7DesignLayerppDesignLayer1UserNameShape7mmHeightV
mmLeft�mmTop� mmWidthM	BandType	LayerName
Foreground  TppShapeppShape8DesignLayerppDesignLayer1UserNameShape8mmHeightV
mmLeft�mmTop0� mmWidthM	BandType	LayerName
Foreground  TppShapeppShape9DesignLayerppDesignLayer1UserNameShape9mmHeightV
mmLeft�mmTopt� mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape10DesignLayerppDesignLayer1UserNameShape10mmHeightV
mmLeft�mmTop]� mmWidthM	BandType	LayerName
Foreground  TppLineppLine1DesignLayerppDesignLayer1UserNameLine1	Pen.WidthWeight       ��?mmHeight�mmLeft+mmTopv�  mmWidth�  BandType	LayerName
Foreground  TppLineppLine2DesignLayerppDesignLayer1UserNameLine2	Pen.WidthPositionlpBottomWeight       ��?mmHeight�mmLeft"mmTop��  mmWidth� BandType	LayerName
Foreground  TppLineppLine3DesignLayerppDesignLayer1UserNameLine3	Pen.WidthPositionlpLeftWeight       ��?mmHeight@� mmLeftmmTop~�  mmWidthV
BandType	LayerName
Foreground  TppLineppLine6DesignLayerppDesignLayer1UserNameLine6	Pen.WidthPositionlpLeftWeight       ��?mmHeight#M mmLeft� mmTop��  mmWidthEBandType	LayerName
Foreground  TppLabelppLabel3DesignLayerppDesignLayer1UserNameLabel3Caption`   น้ำหนัก                                         Kg.                               Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�% mmTopL�  mmWidth��  BandType	LayerName
Foreground  TppLabelppLabel4DesignLayerppDesignLayer1UserNameLabel4CaptionO   ส่วนสูง                                          cm.             Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�% mmTopֳ  mmWidth��  BandType	LayerName
Foreground  TppLabelppLabel5DesignLayerppDesignLayer1UserNameLabel5Caption1BT                                              CFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�% mmTop��  mmWidth��  BandType	LayerName
Foreground  TppLabelppLabel6DesignLayerppDesignLayer1UserNameLabel6CaptionKPR                                             /min                        Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�% mmTop$�  mmWidth��  BandType	LayerName
Foreground  TppLabel	ppLabel10DesignLayerppDesignLayer1UserNameLabel10CaptionHRR                                           /min                       Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�& mmTop��  mmWidth��  BandType	LayerName
Foreground  TppLabel	ppLabel11DesignLayerppDesignLayer1UserNameLabel101CaptionBP                 Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�& mmTop� mmWidth"BandType	LayerName
Foreground  TppLabel	ppLabel12DesignLayerppDesignLayer1UserNameLabel12Captionb   ประจำเดือนครั้งสุดท้าย(LPM)...........................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�( mmTopl" mmWidth��  BandType	LayerName
Foreground  TppLineppLine7DesignLayerppDesignLayer1UserNameLine7	Pen.WidthPositionlpBottomWeight       ��?mmHeight9mmLeft9 mmTop?� mmWidth��  BandType	LayerName
Foreground  TppLineppLine8DesignLayerppDesignLayer1UserNameLine8	Pen.WidthPositionlpBottomWeight       ��?mmHeight]mmLeft"mmTop� mmWidth BandType	LayerName
Foreground  TppLineppLine9DesignLayerppDesignLayer1UserNameLine9	Pen.WidthPositionlpBottomWeight       ��?mmHeight�mmLeft� mmTop�# mmWidth@�  BandType	LayerName
Foreground  TppLineppLine10DesignLayerppDesignLayer1UserNameLine10	Pen.WidthWeight       ��?mmHeight�mmLeft9 mmTop0� mmWidth��  BandType	LayerName
Foreground  TppLineppLine11DesignLayerppDesignLayer1UserNameLine101	Pen.WidthWeight       ��?mmHeight�mmLeftA mmTop�� mmWidth��  BandType	LayerName
Foreground  TppLineppLine12DesignLayerppDesignLayer1UserNameLine12	Pen.WidthPositionlpBottomWeight       ��?mmHeight�mmLeft9 mmTop�� mmWidth��  BandType	LayerName
Foreground  TppLabel	ppLabel14DesignLayerppDesignLayer1UserNameLabel14Caption$   2#1#0'14@7H-#0@!4-22#A##1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�/mmTop��  mmWidth޴  BandType	LayerName
Foreground  TppLabel	ppLabel23DesignLayerppDesignLayer1UserNameLabel23Caption   #'#H22"A##1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�o mmTop~�  mmWidth�VBandType	LayerName
Foreground  TppLabel	ppLabel28DesignLayerppDesignLayer1UserNameLabel28Caption   3*1H2##1)2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftZs mmTop~�  mmWidth7DBandType	LayerName
Foreground  TppLabel	ppLabel30DesignLayerppDesignLayer1UserNameLabel30Caption
   ผล LabFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�� mmTop�� mmWidth$#BandType	LayerName
Foreground  TppLabel	ppLabel31DesignLayerppDesignLayer1UserNameLabel301Caption   %#'1#-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftu mmTop0� mmWidthYHBandType	LayerName
Foreground  TppLabel	ppLabel32DesignLayerppDesignLayer1UserNameLabel32Caption"   2##0@!4* 24CA%0 2'06!@(#I2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�1mmTop mmWidth��  BandType	LayerName
Foreground  TppLabel	ppLabel33DesignLayerppDesignLayer1UserNameLabel33Caption   A"4"-!@I2#12##1)2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�G mmTopW5 mmWidth�wBandType	LayerName
Foreground  TppLineppLine13DesignLayerppDesignLayer1UserNameLine13	Pen.WidthPositionlpBottomWeight       ��?mmHeight�mmLeft� mmTop�  mmWidth@�  BandType	LayerName
Foreground  TppLabel	ppLabel34DesignLayerppDesignLayer1UserNameLabel34CaptionLevel 1(green)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft7P mmTop�  mmWidthPGBandType	LayerName
Foreground  TppLabel	ppLabel35DesignLayerppDesignLayer1UserNameLabel11CaptionChest X-RayFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�& mmTop-� mmWidth�:BandType	LayerName
Foreground  TppShapeppShape2DesignLayerppDesignLayer1UserNameShape2mmHeightV
mmLeftU mmTop,w mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape12DesignLayerppDesignLayer1UserNameShape12mmHeightV
mmLeft�� mmTop/� mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel45DesignLayerppDesignLayer1UserNameLabel45CaptionRapid antigen testFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�H mmTop�� mmWidth/bBandType	LayerName
Foreground  TppLabel	ppLabel49DesignLayerppDesignLayer1UserNameLabel21Caption
   '15H#'Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�. mmTop]� mmWidth�.BandType	LayerName
Foreground  TppShape	ppShape13DesignLayerppDesignLayer1UserNameShape13mmHeightV
mmLeft�1 mmTop�� mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel51DesignLayerppDesignLayer1UserNameLabel51Caption=   RTPCR ถ้ามี ผล.................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�H mmTop� mmWidthı  BandType	LayerName
Foreground  TppLabel	ppLabel52DesignLayerppDesignLayer1UserNameLabel52Caption
   '15H#'Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�& mmTopO4 mmWidth�.BandType	LayerName
Foreground  TppShape	ppShape14DesignLayerppDesignLayer1UserNameShape14mmHeightV
mmLeft�1 mmTop�# mmWidthM	BandType	LayerName
Foreground  TppLineppLine14DesignLayerppDesignLayer1UserNameLine14	Pen.WidthWeight       ��?mmHeight�mmLeft"mmTop�� mmWidth� BandType	LayerName
Foreground  TppLabel	ppLabel56DesignLayerppDesignLayer1UserNameLabel56CaptionB   I2@I2"4"-!#12##1)2B"'459A%1'@-5HI2  ( H o m e   I s o l a t i o n ) Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	WordWrap	mmHeight5%mmLeftE mmTopYT mmWidthG�  BandType	LayerName
Foreground  TppLabel	ppLabel57DesignLayerppDesignLayer1UserNameLabel57Captionl   ลงชื่อผู้ป่วย/ญาติ........................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft< mmTopۂ mmWidth��  BandType	LayerName
Foreground  TppLabel	ppLabel59DesignLayerppDesignLayer1UserNameLabel59Caption_   ลงชื่อพยาน.................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft< mmTop]� mmWidthz�  BandType	LayerName
Foreground  TppLineppLine15DesignLayerppDesignLayer1UserNameLine15	Pen.WidthPositionlpBottomWeight       ��?mmHeight�mmLeft+mmTop�> mmWidth�� BandType	LayerName
Foreground  TppLineppLine16DesignLayerppDesignLayer1UserNameLine16	Pen.WidthPositionlpLeftWeight       ��?mmHeight��  mmLeft� mmTop�� mmWidthV
BandType	LayerName
Foreground  TppLabel	ppLabel62DesignLayerppDesignLayer1UserNameLabel62Caption   I-2#  #6)2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft@� mmTop0' mmWidth7DBandType	LayerName
Foreground  TppLineppLine17DesignLayerppDesignLayer1UserNameLine17	Pen.WidthPositionlpBottomWeight       ��?mmHeight�mmLeftmmTop�R mmWidth� BandType	LayerName
Foreground  TppLineppLine18DesignLayerppDesignLayer1UserNameLine18	Pen.WidthPositionlpLeftWeight       ��?mmHeight mmLeft˓  mmTopnM mmWidthV
BandType	LayerName
Foreground  TppLabel	ppLabel63DesignLayerppDesignLayer1UserNameLabel63Caption   @+7H-"Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTopb mmWidth�BandType	LayerName
Foreground  TppLabel	ppLabel64DesignLayerppDesignLayer1UserNameLabel64Caption   DIFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop�o mmWidthV
BandType	LayerName
Foreground  TppLabel	ppLabel65DesignLayerppDesignLayer1UserNameLabel65Caption
   @G+I2-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop#� mmWidth�0BandType	LayerName
Foreground  TppLabel	ppLabel66DesignLayerppDesignLayer1UserNameLabel66CaptionResting O2 sat <= 94%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop�� mmWidth�vBandType	LayerName
Foreground  TppLabel	ppLabel67DesignLayerppDesignLayer1UserNameLabel67Caption   -7H  FFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTopG� mmWidth�BandType	LayerName
Foreground  TppShape	ppShape15DesignLayerppDesignLayer1UserNameShape15mmHeightV
mmLeftgmmTop�v mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape16DesignLayerppDesignLayer1UserNameShape16mmHeightV
mmLeftgmmTopUi mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape17DesignLayerppDesignLayer1UserNameShape17mmHeightV
mmLeftgmmTop_� mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape18DesignLayerppDesignLayer1UserNameShape18mmHeightV
mmLeftgmmTop�� mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape19DesignLayerppDesignLayer1UserNameShape19mmHeightV
mmLeftgmmTop{� mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel68DesignLayerppDesignLayer1UserNameLabel68Caption,O2 therapy..................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTopDg mmWidth2�  BandType	LayerName
Foreground  TppShape	ppShape20DesignLayerppDesignLayer1UserNameShape20mmHeightV
mmLeft�  mmTopol mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel78DesignLayerppDesignLayer1UserNameLabel78Caption1.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTopUi mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel87DesignLayerppDesignLayer1UserNameLabel87CaptionPlanFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftIL mmTopnM mmWidth�BandType	LayerName
Foreground  TppLabel	ppLabel88DesignLayerppDesignLayer1UserNameLabel88Caption   2#9A%#1)2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft��  mmTopO mmWidth�:BandType	LayerName
Foreground  TppLabel	ppLabel89DesignLayerppDesignLayer1UserNameLabel89Caption   -22#A#I-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft!mmTopnM mmWidthYHBandType	LayerName
Foreground  TppLineppLine21DesignLayerppDesignLayer1UserNameLine201	Pen.WidthWeight       ��?mmHeightM	mmLeftmmTop�M mmWidth� BandType	LayerName
Foreground  TppLineppLine22DesignLayerppDesignLayer1UserNameLine22	Pen.WidthPositionlpBottomWeight       ��?mmHeightV
mmLeft<mmTop� mmWidthV BandType	LayerName
Foreground  TppLineppLine23DesignLayerppDesignLayer1UserNameLine23	Pen.WidthPositionlpLeftWeight       ��?mmHeight mmLeftC mmTop�� mmWidthEBandType	LayerName
Foreground  TppLineppLine24DesignLayerppDesignLayer1UserNameLine24	Pen.WidthWeight       ��?mmHeight^mmLeft�Q mmTop[� mmWidth� BandType	LayerName
Foreground  TppLabel	ppLabel91DesignLayerppDesignLayer1UserNameLabel91CaptionFamily & Social issuesFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�UmmTop�� mmWidthchBandType	LayerName
Foreground  TppLabel	ppLabel94DesignLayerppDesignLayer1UserNameLabel94Caption:   2 . 8%CI25H!51+2*8 25H@*5H"H-2#4@
7I-#8A#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop� mmWidth��  BandType	LayerName
Foreground  	TppDBText
ppDBText13DesignLayerppDesignLayer1UserNameDBText13	DataFieldbwDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft
s mmTopL�  mmWidth$#BandType	LayerName
Foreground  	TppDBText
ppDBText15DesignLayerppDesignLayer1UserNameDBText15	DataFieldhtDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�d mmTopı  mmWidth.CBandType	LayerName
Foreground  	TppDBText
ppDBText16DesignLayerppDesignLayer1UserNameDBText16	DataFieldtemperatureDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�d mmTop��  mmWidth.CBandType	LayerName
Foreground  	TppDBText
ppDBText17DesignLayerppDesignLayer1UserNameDBText17	DataFieldpulseDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�d mmTop>�  mmWidth.CBandType	LayerName
Foreground  	TppDBText
ppDBText18DesignLayerppDesignLayer1UserNameDBText18BlankWhenZero		DataFieldrrDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�d mmTop��  mmWidth.CBandType	LayerName
Foreground  	TppDBText
ppDBText19DesignLayerppDesignLayer1UserNameDBText19	DataFieldbpdDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�� mmTop� mmWidth!BandType	LayerName
Foreground  	TppDBText
ppDBText20DesignLayerppDesignLayer1UserNameDBText20	DataFieldbpsDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeftT mmTop� mmWidthW)BandType	LayerName
Foreground  TppLineppLine25DesignLayerppDesignLayer1UserNameLine25	Pen.WidthPositionlpBottomWeight       ��?mmHeightfmmLeftmmTop� mmWidth[  BandType	LayerName
Foreground  TppLineppLine26DesignLayerppDesignLayer1UserNameLine26	Pen.WidthWeight       ��?mmHeight<mmLeft+mmTop!� mmWidth�  BandType	LayerName
Foreground  TppLabel	ppLabel48DesignLayerppDesignLayer1UserNameLabel48Caption   1+2A%02#'44	1"-7HFFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�mmTop�� mmWidth�sBandType	LayerName
Foreground  TppLabel	ppLabel71DesignLayerppDesignLayer1UserNameLabel71CaptionR1.................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftM	mmTopD� mmWidthZ BandType	LayerName
Foreground  TppLabel	ppLabel72DesignLayerppDesignLayer1UserNameLabel701CaptionR2.................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftV
mmTop� mmWidthY BandType	LayerName
Foreground  TppVariableppVariable1DesignLayerppDesignLayer1UserName	Variable1BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftU] mmTop]� mmWidth{LBandType	LayerName
Foreground  TppVariableppVariable3DesignLayerppDesignLayer1UserName	Variable3BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftU] mmTopO4 mmWidth�VBandType	LayerName
Foreground  TppVariableppVariable4DesignLayerppDesignLayer1UserName	Variable4BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLefta� mmTopx mmWidth�1BandType	LayerName
Foreground  TppLabel	ppLabel13DesignLayerppDesignLayer1UserNameLabel13Caption   -'H3  1 2 - 1 6   
1H'B!/ '1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop~ mmWidth�rBandType	LayerName
Foreground  TppShape	ppShape27DesignLayerppDesignLayer1UserNameShape202mmHeightV
mmLeft�  mmTop,� mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel26DesignLayerppDesignLayer1UserNameLabel26Caption
MedicationFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop�� mmWidth�5BandType	LayerName
Foreground  TppShape	ppShape28DesignLayerppDesignLayer1UserNameShape28mmHeightV
mmLeft�  mmTop� mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel37DesignLayerppDesignLayer1UserNameLabel37CaptionH   ประสานส่งต่อ....................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTopj� mmWidth��  BandType	LayerName
Foreground  TppShape	ppShape29DesignLayerppDesignLayer1UserNameShape29mmHeightV
mmLeft�  mmTop�� mmWidthM	BandType	LayerName
Foreground  TppLineppLine28DesignLayerppDesignLayer1UserNameLine28	Pen.WidthWeight       ��?mmHeight�mmLeftmmTop��  mmWidth' BandType	LayerName
Foreground  TppLabel	ppLabel46DesignLayerppDesignLayer1UserNameLabel302Caption'   -22#*315HH'H2H20@4-22##8A#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�2mmTop�  mmWidth�  BandType	LayerName
Foreground  TppShape	ppShape34DesignLayerppDesignLayer1UserNameShape34mmHeightV
mmLeft�mmTop+�  mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel47DesignLayerppDesignLayer1UserNameLabel47Caption    ไอเยอะ(Severe cough)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop�  mmWidthZgBandType	LayerName
Foreground  TppShape	ppShape35DesignLayerppDesignLayer1UserNameShape35mmHeightV
mmLeft�mmTop��  mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel73DesignLayerppDesignLayer1UserNameLabel73Caption/   แน่นหน้าอก(chest tightness)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop��  mmWidthS�  BandType	LayerName
Foreground  TppShape	ppShape36DesignLayerppDesignLayer1UserNameShape36mmHeightV
mmLeft�mmTopX�  mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel108DesignLayerppDesignLayer1UserNameLabel108Caption   2-2+2#D!HDI( p o o r   a p p e t i e ) Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop�  mmWidthv�  BandType	LayerName
Foreground  TppShape	ppShape37DesignLayerppDesignLayer1UserNameShape37mmHeightV
mmLeft�mmTop��  mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel109DesignLayerppDesignLayer1UserNameLabel109Caption   -H-@%5"!2( f a t i g u e ) Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop��  mmWidth8cBandType	LayerName
Foreground  TppShape	ppShape38DesignLayerppDesignLayer1UserNameShape38mmHeightV
mmLeft�mmTop� mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel110DesignLayerppDesignLayer1UserNameLabel110Caption   DI%-8'1C
H'5H!5-22#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTopQ  mmWidth:�  BandType	LayerName
Foreground  TppLineppLine29DesignLayerppDesignLayer1UserNameLine29	Pen.WidthWeight       ��?mmHeight�mmLeftmmTop�& mmWidth' BandType	LayerName
Foreground  TppLabel
ppLabel111DesignLayerppDesignLayer1UserNameLabel111Caption!   11"@*5H"H-2#@4-22##8A#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft%BmmTop�& mmWidth˓  BandType	LayerName
Foreground  TppLineppLine30DesignLayerppDesignLayer1UserNameLine30	Pen.WidthPositionlpBottomWeight       ��?mmHeight�mmLeftmmTop�, mmWidth' BandType	LayerName
Foreground  TppLabel
ppLabel112DesignLayerppDesignLayer1UserNameLabel202Caption$   I m m u n o c o m p r o m i s e (  2'0 9!48I!1H3) Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop�� mmWidth�  BandType	LayerName
Foreground  TppShape	ppShape39DesignLayerppDesignLayer1UserNameShape39mmHeightV
mmLeft�mmTop�� mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape11DesignLayerppDesignLayer1UserNameShape11mmHeightV
mmLeft�> mmTopD�  mmWidthM	BandType	LayerName
Foreground  TppLineppLine31DesignLayerppDesignLayer1UserNameLine31	Pen.WidthPositionlpBottomWeight       ��?mmHeightV
mmLeft� mmTopt mmWidth@�  BandType	LayerName
Foreground  TppLineppLine32DesignLayerppDesignLayer1UserNameLine32	Pen.WidthPositionlpBottomWeight       ��?mmHeightV
mmLeft� mmTop�� mmWidthY BandType	LayerName
Foreground  TppLabel
ppLabel119DesignLayerppDesignLayer1UserNameLabel119CaptionLevel 2(yellow)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftM mmTopW| mmWidthsKBandType	LayerName
Foreground  TppShape	ppShape46DesignLayerppDesignLayer1UserNameShape46mmHeightV
mmLeft�< mmTop�� mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape47DesignLayerppDesignLayer1UserNameShape47mmHeightV
mmLeft" mmTop6� mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel120DesignLayerppDesignLayer1UserNameLabel120CaptionKFavipiravia (200mg/tab) 9 tab po bid pc day1,then 4 tabs po bid pc x 4 daysFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	WordWrap	mmHeight$#mmLeft�  mmTop� mmWidthO�  BandType	LayerName
Foreground  TppLabel
ppLabel121DesignLayerppDesignLayer1UserName	Label1201CaptionIf BW>90 kgsFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	WordWrap	mmHeight�mmLeft" mmTop8� mmWidthO�  BandType	LayerName
Foreground  TppLabel
ppLabel122DesignLayerppDesignLayer1UserNameLabel122CaptionDay 1: 12 tabs po bid pcFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	WordWrap	mmHeight�mmLeft�  mmTop�� mmWidthO�  BandType	LayerName
Foreground  TppLabel
ppLabel123DesignLayerppDesignLayer1UserNameLabel123CaptionDay...........5 tabs po bid pcFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	WordWrap	mmHeight�mmLeft�  mmTop[� mmWidthO�  BandType	LayerName
Foreground  TppShape	ppShape48DesignLayerppDesignLayer1UserNameShape48mmHeightV
mmLeft" mmTop�� mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape49DesignLayerppDesignLayer1UserNameShape49mmHeightV
mmLeft" mmTopd� mmWidthM	BandType	LayerName
Foreground  TppLineppLine33DesignLayerppDesignLayer1UserNameLine33	Pen.WidthPositionlpBottomWeight       ��?mmHeightV
mmLeft� mmTop�� mmWidthY BandType	LayerName
Foreground  TppLineppLine34DesignLayerppDesignLayer1UserNameLine34	Pen.WidthPositionlpBottomWeight       ��?mmHeightV
mmLeft� mmTopf� mmWidthY BandType	LayerName
Foreground  TppLabel
ppLabel124DesignLayerppDesignLayer1UserNameLabel124CaptionLevel 3Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftjV mmTop!� mmWidth$#BandType	LayerName
Foreground  TppShape	ppShape50DesignLayerppDesignLayer1UserNameShape50mmHeightV
mmLeft�> mmTop;� mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape51DesignLayerppDesignLayer1UserNameShape51mmHeightV
mmLeft" mmTop	 mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel117DesignLayerppDesignLayer1UserNameLabel117Caption   Refer รพ.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	WordWrap	mmHeight�mmLeft�  mmTop� mmWidthO�  BandType	LayerName
Foreground  TppShape	ppShape52DesignLayerppDesignLayer1UserNameShape52mmHeightV
mmLeft" mmTop� mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel125DesignLayerppDesignLayer1UserNameLabel125Caption1.................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	WordWrap	mmHeight�mmLeft�  mmTopx mmWidthO�  BandType	LayerName
Foreground  TppLineppLine5DesignLayerppDesignLayer1UserNameLine5	Pen.WidthPositionlpLeftWeight       ��?mmHeight�
 mmLeft9 mmTop��  mmWidthV
BandType	LayerName
Foreground  TppLineppLine35DesignLayerppDesignLayer1UserNameLine102	Pen.WidthWeight       ��?mmHeight�mmLeft9 mmTop1: mmWidth��  BandType	LayerName
Foreground  TppLabel
ppLabel126DesignLayerppDesignLayer1UserNameLabel303Caption!Test Exercise Induce Hypoxia testFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�( mmTop\? mmWidthD�  BandType	LayerName
Foreground  TppLabel
ppLabel127DesignLayerppDesignLayer1UserNameLabel127Caption   O2 sat........%(ก่อน)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�& mmTop S mmWidth`BandType	LayerName
Foreground  TppLabel
ppLabel128DesignLayerppDesignLayer1UserNameLabel128Caption   O2 sat........%(หลัง)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft-� mmTop S mmWidth_BandType	LayerName
Foreground  TppLabel
ppLabel129DesignLayerppDesignLayer1UserNameLabel129Caption+   Test ให้ผลบวก(spO2 drop>=3)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�& mmTop�d mmWidth˓  BandType	LayerName
Foreground  TppShape	ppShape53DesignLayerppDesignLayer1UserNameShape53mmHeightV
mmLeftU mmTop/� mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape54DesignLayerppDesignLayer1UserNameShape54mmHeightV
mmLeft�� mmTop,w mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel130DesignLayerppDesignLayer1UserNameLabel130Caption   C
HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�f mmTop�p mmWidthV
BandType	LayerName
Foreground  TppLabel
ppLabel131DesignLayerppDesignLayer1UserNameLabel131Caption   D!HC
HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft� mmTop�o mmWidth�BandType	LayerName
Foreground  TppShape	ppShape55DesignLayerppDesignLayer1UserNameShape55mmHeightV
mmLeftV
mmTop. mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel55DesignLayerppDesignLayer1UserNameLabel69CaptionN   สภาพจิตใจ feeling...........................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop�( mmWidth�  BandType	LayerName
Foreground  TppShape	ppShape56DesignLayerppDesignLayer1UserNameShape56mmHeightV
mmLeftV
mmTop�: mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel69DesignLayerppDesignLayer1UserNameLabel70Caption7   %#0-'2!@GH'"H-
5'4#03'1. . . . . . . . . . . . . . . . . Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTopW5 mmWidth��  BandType	LayerName
Foreground  TppLabel	ppLabel70DesignLayerppDesignLayer1UserNameLabel702CaptionM   C  2   *12+L5HH2!2#'!'15IH2#9I*6++9H  @(#I2  +#7-I-AI*4I+'1+#7-D!HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	WordWrap	mmHeight5%mmLeft�mmTop�E mmWidthG�  BandType	LayerName
Foreground  TppShape	ppShape57DesignLayerppDesignLayer1UserNameShape57mmHeightV
mmLeft�  mmTop�\ mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel132DesignLayerppDesignLayer1UserName	Label1301Caption   C
HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft��  mmTop�Y mmWidthV
BandType	LayerName
Foreground  TppShape	ppShape58DesignLayerppDesignLayer1UserNameShape58mmHeightV
mmLefth�  mmTop�\ mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel133DesignLayerppDesignLayer1UserNameLabel133Caption   D!HC
HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft��  mmTop�Y mmWidth�BandType	LayerName
Foreground  TppLineppLine36DesignLayerppDesignLayer1UserNameLine36	Pen.WidthPositionlpLeftWeight       ��?mmHeight�2 mmLeftmmTopA mmWidthV
BandType	LayerName
Foreground  TppLabel
ppLabel134DesignLayerppDesignLayer1UserNameLabel134CaptionM     C  2   *12+L5HH2!2#'!'15IH2#9I*6  @7H-  3-0D#GD!H@%4@%4+#7-D!H  Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	WordWrap	mmHeight5%mmLeft�mmTopAp mmWidthG�  BandType	LayerName
Foreground  TppShape	ppShape59DesignLayerppDesignLayer1UserNameShape59mmHeightV
mmLeft�  mmTop�� mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel135DesignLayerppDesignLayer1UserNameLabel135Caption   C
HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft��  mmTop� mmWidthV
BandType	LayerName
Foreground  TppShape	ppShape60DesignLayerppDesignLayer1UserNameShape60mmHeightV
mmLefth�  mmTop�� mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel136DesignLayerppDesignLayer1UserNameLabel136Caption   D!HC
HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft��  mmTop� mmWidth�BandType	LayerName
Foreground  TppLabel
ppLabel137DesignLayerppDesignLayer1UserNameLabel137CaptionPlanFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�b mmTop�� mmWidth�BandType	LayerName
Foreground  TppLabel
ppLabel138DesignLayerppDesignLayer1UserNameLabel138CaptionK1..........................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTopD� mmWidth��  BandType	LayerName
Foreground  TppLabel
ppLabel139DesignLayerppDesignLayer1UserNameLabel139CaptionK2..........................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop� mmWidth��  BandType	LayerName
Foreground  TppLineppLine37DesignLayerppDesignLayer1UserNameLine37	Pen.WidthWeight       ��?mmHeightEmmLeft+mmTop>� mmWidth�� BandType	LayerName
Foreground  TppLabel
ppLabel140DesignLayerppDesignLayer1UserNameLabel140CaptionPsychological problemFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�mmTop�� mmWidth�qBandType	LayerName
Foreground  TppLabel
ppLabel141DesignLayerppDesignLayer1UserName	Label1401CaptionPlan supportFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftm� mmTop�� mmWidth?BandType	LayerName
Foreground  TppShape	ppShape61DesignLayerppDesignLayer1UserNameShape61mmHeightV
mmLeft�mmTop�� mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape62DesignLayerppDesignLayer1UserNameShape62mmHeightV
mmLeft�mmTopb mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape63DesignLayerppDesignLayer1UserNameShape63mmHeightV
mmLeft�mmTop0' mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel142DesignLayerppDesignLayer1UserNameLabel142Caption
DepressionFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop�� mmWidth�5BandType	LayerName
Foreground  TppLabel
ppLabel143DesignLayerppDesignLayer1UserNameLabel143Caption   '2!'41'%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop. mmWidth?BandType	LayerName
Foreground  TppLabel
ppLabel144DesignLayerppDesignLayer1UserNameLabel144CaptionstigmaFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft!mmTop# mmWidth!BandType	LayerName
Foreground  TppShape	ppShape64DesignLayerppDesignLayer1UserNameShape64mmHeightV
mmLeft��  mmTop�� mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel145DesignLayerppDesignLayer1UserNameLabel145CaptionF   อื่นๆ.......................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft#�  mmTop�� mmWidth+�  BandType	LayerName
Foreground  TppShape	ppShape65DesignLayerppDesignLayer1UserNameShape65mmHeightV
mmLeftѩ mmTop�� mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel146DesignLayerppDesignLayer1UserNameLabel146CharWrap	CaptionW   1 . #0@!4A%0#1D'I9A%#1)2@G#2"C+!H  #'!1IC+I3A032#I-12#A#H#02"-@
7I-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	WordWrap	mmHeight�mmLeftU] mmTop~� mmWidth�� BandType	LayerName
Foreground  TppShape	ppShape66DesignLayerppDesignLayer1UserNameShape66mmHeightV
mmLeftѩ mmTopH mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel147DesignLayerppDesignLayer1UserNameLabel147Caption'   #11  C+I3%1C  *0I-'2!#9I*6DIFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft@� mmTop mmWidth��  BandType	LayerName
Foreground  TppShape	ppShape67DesignLayerppDesignLayer1UserNameShape67mmHeightV
mmLeftѩ mmTop� mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel148DesignLayerppDesignLayer1UserNameLabel148CaptionB..................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft@� mmTop� mmWidth��  BandType	LayerName
Foreground  TppShape	ppShape68DesignLayerppDesignLayer1UserNameShape68mmHeightV
mmLeft	 mmTopR+ mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel149DesignLayerppDesignLayer1UserNameLabel149Caption   4A"LFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft� mmTop0' mmWidthO(BandType	LayerName
Foreground  TppShape	ppShape69DesignLayerppDesignLayer1UserNameShape69mmHeightV
mmLeft�\ mmTopR+ mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel150DesignLayerppDesignLayer1UserNameLabel150Caption   1431Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft/n mmTop0' mmWidth�3BandType	LayerName
Foreground  TppShape	ppShape70DesignLayerppDesignLayer1UserNameShape70mmHeightV
mmLeft�MmmTopUi mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel61DesignLayerppDesignLayer1UserNameLabel61Caption   D-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�ZmmTopb mmWidthV
BandType	LayerName
Foreground  TppShape	ppShape71DesignLayerppDesignLayer1UserNameShape71mmHeightV
mmLeft�  mmTop� mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel151DesignLayerppDesignLayer1UserNameLabel151CaptionA   อื่นๆ..................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop� mmWidth��  BandType	LayerName
Foreground  TppLineppLine19DesignLayerppDesignLayer1UserNameLine11	Pen.StylepsDotPositionlpBottomWeight       ��?mmHeightgmmLeft� mmTop�o mmWidth�/ BandType	LayerName
Foreground  TppLabel	ppLabel38DesignLayerppDesignLayer1UserNameLabel38Caption2.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTop#� mmWidthM	BandType	LayerName
Foreground  TppLineppLine38DesignLayerppDesignLayer1UserNameLine38	Pen.StylepsDotWeight       ��?mmHeightgmmLeft� mmTop�� mmWidth�/ BandType	LayerName
Foreground  TppLabel	ppLabel39DesignLayerppDesignLayer1UserNameLabel39Caption3.Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTop� mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape21DesignLayerppDesignLayer1UserNameShape701mmHeightV
mmLeftgmmTop�� mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel40DesignLayerppDesignLayer1UserNameLabel40Caption   Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLefti�  mmTop~� mmWidthgBandType	LayerName
Foreground  TppLineppLine40DesignLayerppDesignLayer1UserNameLine19	Pen.StylepsDotWeight       ��?mmHeightEmmLeft��  mmTop�� mmWidth�3BandType	LayerName
Foreground  TppShape	ppShape22DesignLayerppDesignLayer1UserNameShape22mmHeightV
mmLeftgmmTop2� mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel41DesignLayerppDesignLayer1UserNameLabel401Caption   Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�( mmTop� mmWidthgBandType	LayerName
Foreground  TppLineppLine41DesignLayerppDesignLayer1UserNameLine41	Pen.StylepsDotWeight       ��?mmHeightEmmLeft� mmTopf mmWidth�BandType	LayerName
Foreground  TppLabel	ppLabel74DesignLayerppDesignLayer1UserNameLabel74Caption    3 . 8%-7H5H@I2H2"  P U I   3'Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop� mmWidthS�  BandType	LayerName
Foreground  TppLineppLine42DesignLayerppDesignLayer1UserNameLine42	Pen.StylepsDotWeight       ��?mmHeight+mmLeft�  mmTop" mmWidth�BandType	LayerName
Foreground  TppLabel	ppLabel75DesignLayerppDesignLayer1UserNameLabel75Caption   Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft#�  mmTop� mmWidthgBandType	LayerName
Foreground  TppShape	ppShape23DesignLayerppDesignLayer1UserNameShape23mmHeight^mmLeftgmmTop� mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel76DesignLayerppDesignLayer1UserNameLabel76Caption,   4 . 8%C#-#1'I-2#2##1)2"22%  3'Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop" mmWidthG�  BandType	LayerName
Foreground  TppLineppLine43DesignLayerppDesignLayer1UserNameLine43	Pen.StylepsDotWeight       ��?mmHeight+mmLeft!�  mmTop�* mmWidth�BandType	LayerName
Foreground  TppLabel	ppLabel77DesignLayerppDesignLayer1UserNameLabel77Caption   Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftA mmTop" mmWidthgBandType	LayerName
Foreground  TppLineppLine44DesignLayerppDesignLayer1UserNameLine44	Pen.StylepsDotWeight       ��?mmHeight+mmLeft��  mmTop�* mmWidthO(BandType	LayerName
Foreground  TppShape	ppShape24DesignLayerppDesignLayer1UserNameShape24mmHeightV
mmLeftgmmTop^# mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel79DesignLayerppDesignLayer1UserNameLabel79Caption?   5 . %8H!@#2025HI-2#2#*1*82##'A%02#9A%0@G4@()Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop�* mmWidth�' BandType	LayerName
Foreground  TppShape	ppShape25DesignLayerppDesignLayer1UserNameShape25mmHeightV
mmLeftgmmTop�1 mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel95DesignLayerppDesignLayer1UserNameLabel95Caption
   6 . "2!2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop9 mmWidth�6BandType	LayerName
Foreground  TppShape	ppShape26DesignLayerppDesignLayer1UserNameShape26mmHeightV
mmLeftgmmTopO@ mmWidthM	BandType	LayerName
Foreground  TppLabelppLabel9DesignLayerppDesignLayer1UserNameLabel9CaptionPlan SupportFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftp mmTop�� mmWidth@BandType	LayerName
Foreground  TppShape	ppShape30DesignLayerppDesignLayer1UserNameShape30mmHeightV
mmLeft�N mmTop�� mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel27DesignLayerppDesignLayer1UserNameLabel27Caption)   C+I3#6)2@7I-I  A%0'2A42!-22#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft@� mmTop�� mmWidth��  BandType	LayerName
Foreground  TppShape	ppShape31DesignLayerppDesignLayer1UserNameShape301mmHeightV
mmLeft�N mmTop2� mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel25DesignLayerppDesignLayer1UserNameLabel25CharWrap	Caption9   2 . 2#*HH-@7H-#0@!42#4@
7I-  C O V I D   1 9   -"H2@#HH'Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	WordWrap	mmHeight�mmLeftU] mmTop� mmWidthN{ BandType	LayerName
Foreground  TppShape	ppShape32DesignLayerppDesignLayer1UserNameShape32mmHeightV
mmLeft�N mmTop� mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel29DesignLayerppDesignLayer1UserNameLabel29CharWrap	Caption0   3 . A03/ *HH-@7H-#'1#-2#4@
7I-#2"C+!HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	WordWrap	mmHeight�mmLeftU] mmTop� mmWidth�� BandType	LayerName
Foreground  TppShape	ppShape33DesignLayerppDesignLayer1UserNameShape33mmHeightV
mmLeft�N mmTop< mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel92DesignLayerppDesignLayer1UserNameLabel92CharWrap	Caption   4 . C+I2##1)2"22%@G#2"C+!HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	WordWrap	mmHeight�mmLeftU] mmTop" mmWidth�� BandType	LayerName
Foreground  TppShape	ppShape72DesignLayerppDesignLayer1UserNameShape72mmHeightV
mmLeft�N mmTop�- mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel93DesignLayerppDesignLayer1UserNameLabel93CharWrap	Caption   5   *HH-@7H-9A%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	WordWrap	mmHeight�mmLeftU] mmTop�* mmWidthjJBandType	LayerName
Foreground  TppShape	ppShape73DesignLayerppDesignLayer1UserNameShape73mmHeightV
mmLeft� mmTop�0 mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel152DesignLayerppDesignLayer1UserNameLabel152CharWrap	Caption   1*1!*@#20+LFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	WordWrap	mmHeight�mmLeftb� mmTop�* mmWidth�QBandType	LayerName
Foreground  TppShape	ppShape74DesignLayerppDesignLayer1UserNameShape74mmHeightV
mmLeftE mmTop�0 mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel153DesignLayerppDesignLayer1UserNameLabel153CharWrap	Caption   14'4"2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	WordWrap	mmHeight�mmLeft�" mmTop�* mmWidth�QBandType	LayerName
Foreground  TppShape	ppShape75DesignLayerppDesignLayer1UserNameShape75mmHeightV
mmLeft{X mmTop�0 mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel154DesignLayerppDesignLayer1UserNameLabel154CharWrap	Captionlongterm care teamFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	WordWrap	mmHeight�mmLeft�f mmTop�* mmWidthtjBandType	LayerName
Foreground  TppShape	ppShape76DesignLayerppDesignLayer1UserNameShape76mmHeightV
mmLeft�� mmTop�1 mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel155DesignLayerppDesignLayer1UserNameLabel155CharWrap	Caption   -7HFFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	WordWrap	mmHeight�mmLeft-� mmTop�* mmWidth�BandType	LayerName
Foreground  TppShape	ppShape77DesignLayerppDesignLayer1UserNameShape77mmHeightV
mmLeft�N mmTopO@ mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel156DesignLayerppDesignLayer1UserNameLabel156Caption>   6 . #0*22#*1*8*1!*@#20+L  +#7-  *HH-1*1!*@#20+LFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftU] mmTop9 mmWidth�. BandType	LayerName
Foreground  TppSubReportppSubReport1DesignLayerppDesignLayer1UserName
SubReport1	ExpandAllNewPrintJobOutlineSettings.CreateNode	TraverseAllDataDataPipelineNameppDBPipelinemmHeightxmmLeft mmTop?] mmWidth� BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport1AutoStopDataPipelineppDBPipelinePrinterSetup.BinName   @%7--1B!14PrinterSetup.DocumentName&   C U S T O M - - +1*7-"4"-!@7H-#12##1)2PrinterSetup.DuplexdpNonePrinterSetup.PaperName   A4 210 x 297 มม.PrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight(� PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize	Version17.03mmColumnWidth DataPipelineNameppDBPipeline TppTitleBandppTitleBand1Background.Brush.StylebsClearmmBottomOffset mmHeightf�  mmPrintPosition  TppLabel
ppLabel157DesignLayerppDesignLayer2UserNameLabel157CaptionProgression noteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�E mmTop��  mmWidth�rBandType	LayerNameForeground1  TppLineppLine49DesignLayerppDesignLayer2UserNameLine49	Pen.WidthWeight       � @mmHeightpmmLeft<mmTop��  mmWidth�� BandType	LayerNameForeground1  TppLineppLine50DesignLayerppDesignLayer2UserNameLine50	Pen.WidthPositionlpBottomWeight       � @mmHeightpmmLeft<mmTop��  mmWidth�� BandType	LayerNameForeground1  TppLineppLine59DesignLayerppDesignLayer2UserNameLine59	Pen.WidthParentHeight	PositionlpLeftWeight       � @mmHeightf�  mmLeft<mmTop��  mmWidth�BandType	LayerNameForeground1  TppLineppLine60DesignLayerppDesignLayer2UserNameLine60	Pen.WidthParentHeight	PositionlpRightWeight       � @mmHeightf�  mmLeft`� mmTop��  mmWidth�BandType	LayerNameForeground1  TppLabel
ppLabel252DesignLayerppDesignLayer2UserNameLabel252Caption�   แบบบันทึกการดูแลรักษาผู้ป่วย Covid-19 กรณี Home Isolation หรือ Community isolationFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft|mmTop<mmWidth- BandType	LayerNameForeground1  	TppDBText
ppDBText26DesignLayerppDesignLayer2UserNameDBText26	DataFieldfullnameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	VerticalAlignmentavBottomDataPipelineNameppDBPipelinemmHeight�mmLeft`*mmTop�6mmWidthݕ  BandType	LayerNameForeground1  	TppDBText
ppDBText27DesignLayerppDesignLayer2UserNameDBText27	DataFieldage_yDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�� mmTop�7mmWidthO(BandType	LayerNameForeground1  	TppDBText
ppDBText28DesignLayerppDesignLayer2UserNameDBText28	DataFieldhometelDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�� mmTop�OmmWidthaIBandType	LayerNameForeground1  	TppDBText
ppDBText29DesignLayerppDesignLayer2UserNameDBText29	DataFieldhnDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	VerticalAlignmentavCenterDataPipelineNameppDBPipelinemmHeight�mmLeft�M mmTop�9mmWidth7DBandType	LayerNameForeground1  	TppDBText
ppDBText30DesignLayerppDesignLayer2UserNameDBText30	DataFieldFulladdDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft>mmTop�OmmWidthnA BandType	LayerNameForeground1  	TppDBText
ppDBText43DesignLayerppDesignLayer2UserNameDBText43	DataFieldcidDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�  mmTop�9mmWidth]BandType	LayerNameForeground1  	TppDBText
ppDBText44DesignLayerppDesignLayer2UserNameDBText44	DataField	ptty_nameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	VerticalAlignmentavBottomDataPipelineNameppDBPipelinemmHeight�mmLeft$/ mmTop�:mmWidthE�  BandType	LayerNameForeground1  	TppDBText
ppDBText45DesignLayerppDesignLayer2UserName	DBText102CharWrap		DataFieldccDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	WordWrap	DataPipelineNameppDBPipelinemmHeight!mmLeft7DmmTop`mmWidth�d BandType	LayerNameForeground1  	TppDBText
ppDBText46DesignLayerppDesignLayer2UserNameDBText46	DataFieldsexDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft� mmTop�7mmWidth�BandType	LayerNameForeground1  TppLabel
ppLabel253DesignLayerppDesignLayer2UserNameLabel253Caption   
7H-+H'"#42#  Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft"mmTop"mmWidthHFBandType	LayerNameForeground1  TppLabel
ppLabel255DesignLayerppDesignLayer2UserNameLabel2Caption   #+1*+H'"#42#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop"mmWidthaIBandType	LayerNameForeground1  TppLabel
ppLabel257DesignLayerppDesignLayer2UserNameLabel257Caption   '15H#1#42#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftxa mmTop
 mmWidth�<BandType	LayerNameForeground1  TppLabel
ppLabel258DesignLayerppDesignLayer2UserNameLabel258Caption   '15H3+H2"Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftg mmTop
 mmWidth�8BandType	LayerNameForeground1  TppLabel
ppLabel259DesignLayerppDesignLayer2UserNameLabel259Caption	   
7H-- *8%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft"mmTop�8mmWidth,$BandType	LayerNameForeground1  TppLabel
ppLabel260DesignLayerppDesignLayer2UserNameLabel260CaptionPIDFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeftE�  mmTop�9mmWidth�BandType	LayerNameForeground1  TppLabel
ppLabel261DesignLayerppDesignLayer2UserNameLabel3CaptionHNFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftC< mmTop�7mmWidthxBandType	LayerNameForeground1  TppLabel
ppLabel262DesignLayerppDesignLayer2UserNameLabel262Caption   @(Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeftj� mmTop�7mmWidth�BandType	LayerNameForeground1  TppLabel
ppLabel263DesignLayerppDesignLayer2UserNameLabel801Caption   -2"8Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop�7mmWidth�BandType	LayerNameForeground1  TppLabel
ppLabel264DesignLayerppDesignLayer2UserNameLabel264Caption   5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft	 mmTop�8mmWidth<BandType	LayerNameForeground1  TppLabel
ppLabel265DesignLayerppDesignLayer2UserNameLabel265Caption   *44Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftx mmTop�7mmWidth�BandType	LayerNameForeground1  TppLabel
ppLabel266DesignLayerppDesignLayer2UserNameLabel266Caption   5H-"9H181Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft"mmTop�OmmWidth�5BandType	LayerNameForeground1  TppLabel
ppLabel267DesignLayerppDesignLayer2UserNameLabel267Caption   @-#LB#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftX� mmTop�OmmWidth>&BandType	LayerNameForeground1  TppLabel
ppLabel268DesignLayerppDesignLayer2UserNameLabel268Caption   ID Line  ถ้ามีFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTop�OmmWidthjJBandType	LayerNameForeground1  TppLabel
ppLabel269DesignLayerppDesignLayer2UserNameLabel269Caption	   -2#*31Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft<mmTop`mmWidth�:BandType	LayerNameForeground1  TppLabel
ppLabel270DesignLayerppDesignLayer2UserNameLabel270Caption   9I16I-!9%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTopRfmmWidth�:BandType	LayerNameForeground1  TppLabel
ppLabel271DesignLayerppDesignLayer2UserNameLabel4Caption   @%C#0-'4
2
5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�e mmTopRfmmWidth_BandType	LayerNameForeground1  TppVariableppVariable55DesignLayerppDesignLayer2UserName
Variable55BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�� mmTopRfmmWidth�<BandType	LayerNameForeground1  TppVariableppVariable56DesignLayerppDesignLayer2UserName
Variable56BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft� mmTopRfmmWidth�oBandType	LayerNameForeground1  TppLabel
ppLabel272DesignLayerppDesignLayer2UserNameLabel272Caption   @-#LB#24Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft" mmTop�OmmWidth�9BandType	LayerNameForeground1  	TppDBText
ppDBText47DesignLayerppDesignLayer2UserNameDBText47	DataField	informtelDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft7P mmTop�OmmWidthYHBandType	LayerNameForeground1  TppVariableppVariable57DesignLayerppDesignLayer2UserName
Variable57BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftPS mmTop
 mmWidthS�  BandType	LayerNameForeground1  	TppDBText
ppDBText48DesignLayerppDesignLayer2UserNameDBText48	DataFieldvsstdateDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�� mmTop
 mmWidthIeBandType	LayerNameForeground1  	TppDBText
ppDBText77DesignLayerppDesignLayer2UserNameDBText77AutoSize		DataField	shortnameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�QmmTop"mmWidthBandType	LayerNameForeground1  	TppDBText
ppDBText78DesignLayerppDesignLayer2UserNameDBText78	DataField	hospcode2DataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	VerticalAlignmentavBottomDataPipelineNameppDBPipelinemmHeight�mmLeft�% mmTop"mmWidth�/BandType	LayerNameForeground1   TppDetailBandppDetailBand2Background1.Brush.StylebsClearBackground2.Brush.StylebsClearmmBottomOffset mmHeightu/ mmPrintPosition  TppLineppLine46DesignLayerppDesignLayer2UserNameLine46	Pen.WidthWeight       � @mmHeight^mmLeft<mmTop�mmWidth�� BandType	LayerNameForeground1  TppLineppLine47DesignLayerppDesignLayer2UserNameLine47Weight       ��?mmHeight^mmLeft<mmTop�5mmWidth�� BandType	LayerNameForeground1  TppLineppLine48DesignLayerppDesignLayer2UserNameLine48Weight       ��?mmHeight^mmLeft<mmTopsKmmWidth�� BandType	LayerNameForeground1  TppLineppLine45DesignLayerppDesignLayer2UserNameLine45Weight       ��?mmHeight^mmLeft<mmTop`mmWidth�� BandType	LayerNameForeground1  TppLineppLine51DesignLayerppDesignLayer2UserNameLine51Weight       ��?mmHeight^mmLeft<mmTop�vmmWidth�� BandType	LayerNameForeground1  TppLineppLine52DesignLayerppDesignLayer2UserNameLine52Weight       ��?mmHeight^mmLeft<mmTop��  mmWidth�� BandType	LayerNameForeground1  TppLineppLine53DesignLayerppDesignLayer2UserNameLine53Weight       ��?mmHeight^mmLeft<mmTopo�  mmWidth�� BandType	LayerNameForeground1  TppLineppLine54DesignLayerppDesignLayer2UserNameLine54Weight       ��?mmHeight^mmLeft<mmTop4�  mmWidth�� BandType	LayerNameForeground1  TppLineppLine55DesignLayerppDesignLayer2UserNameLine55Weight       ��?mmHeight^mmLeft<mmTop�  mmWidth�� BandType	LayerNameForeground1  TppLineppLine56DesignLayerppDesignLayer2UserNameLine56Weight       ��?mmHeight^mmLeft<mmTop�  mmWidth�� BandType	LayerNameForeground1  TppLineppLine57DesignLayerppDesignLayer2UserNameLine57	Pen.WidthWeight       � @mmHeight^mmLeft<mmTop� mmWidth�� BandType	LayerNameForeground1  TppLineppLine58DesignLayerppDesignLayer2UserNameLine58	Pen.WidthWeight       � @mmHeight^mmLeft<mmTop�+ mmWidth�� BandType	LayerNameForeground1  TppLineppLine62DesignLayerppDesignLayer2UserNameLine62	Pen.WidthPositionlpLeftWeight       � @mmHeight� mmLeft>mmTop mmWidth�BandType	LayerNameForeground1  TppLineppLine61DesignLayerppDesignLayer2UserNameLine61	Pen.WidthPositionlpLeftWeight       � @mmHeight� mmLeft��  mmTop mmWidth�BandType	LayerNameForeground1  TppLabel
ppLabel158DesignLayerppDesignLayer2UserNameLabel158Caption1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft$#mmTop$#mmWidth+BandType	LayerNameForeground1  TppLabel
ppLabel159DesignLayerppDesignLayer2UserNameLabel159Caption2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft$#mmTop�5mmWidth4BandType	LayerNameForeground1  TppLabel
ppLabel160DesignLayerppDesignLayer2UserNameLabel160Caption3Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft$#mmTopsKmmWidth4BandType	LayerNameForeground1  TppLabel
ppLabel161DesignLayerppDesignLayer2UserName	Label1601Caption4Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft$#mmTop`mmWidth3BandType	LayerNameForeground1  TppLabel
ppLabel162DesignLayerppDesignLayer2UserName	Label1602Caption5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft$#mmTop~mmWidth4BandType	LayerNameForeground1  TppLabel
ppLabel163DesignLayerppDesignLayer2UserName	Label1603Caption6Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft$#mmTopԔ  mmWidth4BandType	LayerNameForeground1  TppLabel
ppLabel164DesignLayerppDesignLayer2UserNameLabel164Caption7Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft$#mmTop��  mmWidth4BandType	LayerNameForeground1  TppLabel
ppLabel165DesignLayerppDesignLayer2UserNameLabel165Caption8Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft$#mmTop_�  mmWidth<BandType	LayerNameForeground1  TppLabel
ppLabel166DesignLayerppDesignLayer2UserNameLabel166Caption9Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft$#mmTop>�  mmWidth4BandType	LayerNameForeground1  TppLabel
ppLabel167DesignLayerppDesignLayer2UserNameLabel167Caption10Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop.�  mmWidthgBandType	LayerNameForeground1  TppLabel
ppLabel168DesignLayerppDesignLayer2UserNameLabel168CaptionDayFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop mmWidth�BandType	LayerNameForeground1  TppLabel
ppLabel169DesignLayerppDesignLayer2UserNameLabel169Caption   '1  /   @7-  /   5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�UmmTop mmWidth@EBandType	LayerNameForeground1  TppLabel
ppLabel170DesignLayerppDesignLayer2UserNameLabel170Caption   BT( C  ํ)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft	�  mmTop mmWidthW)BandType	LayerNameForeground1  TppLabel
ppLabel171DesignLayerppDesignLayer2UserName	Label1701Caption	O2 sat(%)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft��  mmTop mmWidth�6BandType	LayerNameForeground1  TppLabel
ppLabel172DesignLayerppDesignLayer2UserName	Label1702Caption2Patient Educate&Psychosocial Support/Progress NoteFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�� mmTop mmWidthR BandType	LayerNameForeground1  TppLabel
ppLabel173DesignLayerppDesignLayer2UserName	Label1703Caption
MedicationFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftK= mmTop mmWidth�;BandType	LayerNameForeground1  TppLineppLine65DesignLayerppDesignLayer2UserNameLine65	Pen.WidthPositionlpLeftWeight       � @mmHeight� mmLeft�' mmTop mmWidth^BandType	LayerNameForeground1  TppLineppLine64DesignLayerppDesignLayer2UserNameLine64	Pen.WidthPositionlpLeftWeight       � @mmHeight� mmLeft�� mmTop mmWidth^BandType	LayerNameForeground1  TppLineppLine66DesignLayerppDesignLayer2UserNameLine66	Pen.WidthPositionlpLeftWeight       � @mmHeight� mmLeft�� mmTop mmWidth�BandType	LayerNameForeground1  TppLineppLine63DesignLayerppDesignLayer2UserNameLine63	Pen.WidthPositionlpLeftWeight       � @mmHeight� mmLefti�  mmTop mmWidthM	BandType	LayerNameForeground1  TppVariableppVariable8DesignLayerppDesignLayer2UserNameVariabletodayBlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftsKmmTop�  mmWidth%BBandType	LayerNameForeground1  TppVariableppVariable9DesignLayerppDesignLayer2UserName
vdateplus1BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftsKmmTop�mmWidth?EBandType	LayerNameForeground1  TppVariableppVariable10DesignLayerppDesignLayer2UserName
vdateplus2BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftsKmmTop�3mmWidth?EBandType	LayerNameForeground1  TppVariableppVariable11DesignLayerppDesignLayer2UserName
vdateplus3BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftsKmmTopOHmmWidth?EBandType	LayerNameForeground1  TppVariableppVariable12DesignLayerppDesignLayer2UserName
vdateplus4BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftsKmmTop_mmWidth?EBandType	LayerNameForeground1  TppVariableppVariable13DesignLayerppDesignLayer2UserName
vdateplus5BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftsKmmTop�wmmWidth?EBandType	LayerNameForeground1  TppVariableppVariable14DesignLayerppDesignLayer2UserName
vdateplus7BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftsKmmTope�  mmWidth?EBandType	LayerNameForeground1  TppVariableppVariable15DesignLayerppDesignLayer2UserName
vdateplus6BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftsKmmTop��  mmWidth?EBandType	LayerNameForeground1  TppVariableppVariable16DesignLayerppDesignLayer2UserName
vdateplus8BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftsKmmTop<�  mmWidthGFBandType	LayerNameForeground1  TppVariableppVariable17DesignLayerppDesignLayer2UserName
vdateplus9BlankWhenZero	CalcOrder	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftsKmmTop�  mmWidth?EBandType	LayerNameForeground1  TppLabel
ppLabel174DesignLayerppDesignLayer2UserNameLabel174Caption
   9I#0@!4Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft� mmTop mmWidth`*BandType	LayerNameForeground1  TppLabel
ppLabel175DesignLayerppDesignLayer2UserNameLabel175Caption   2#@#5"!A%02##1-8#LFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft)9 mmTop mmWidth BandType	LayerNameForeground1  TppLineppLine67DesignLayerppDesignLayer2UserNameLine67	Pen.WidthPositionlpLeftWeight       � @mmHeight�� mmLeft<mmTop�+ mmWidth�BandType	LayerNameForeground1  TppLabel
ppLabel176DesignLayerppDesignLayer2UserNameLabel176Caption
   #-'1DIFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�/mmTopC< mmWidth�/BandType	LayerNameForeground1  TppLabel
ppLabel177DesignLayerppDesignLayer2UserNameLabel177Caption   @#7H-H"2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�/mmTop�P mmWidth�3BandType	LayerNameForeground1  TppLabel
ppLabel178DesignLayerppDesignLayer2UserNameLabel178Caption   @#7H-'1  O 2   %2"4I'Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�2mmTop�c mmWidth_BandType	LayerNameForeground1  TppLabel
ppLabel179DesignLayerppDesignLayer2UserNameLabel179Caption   @#7H-%4--4@Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�2mmTopFz mmWidth8cBandType	LayerNameForeground1  TppLineppLine68DesignLayerppDesignLayer2UserNameLine68	Pen.WidthPositionlpLeftWeight       � @mmHeight}mmLeft��  mmTop�+ mmWidth�BandType	LayerNameForeground1  TppLabel
ppLabel181DesignLayerppDesignLayer2UserName	Label1801Caption   +I22-2!1"Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTopC< mmWidth6DBandType	LayerNameForeground1  TppLabel
ppLabel182DesignLayerppDesignLayer2UserName	Label1802Caption   8AFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop�L mmWidth�BandType	LayerNameForeground1  TppLabel
ppLabel183DesignLayerppDesignLayer2UserName	Label1803Captionm   ลงชื่อผู้รับอุปกรณ์....................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft0� mmTop�D mmWidth��  BandType	LayerNameForeground1  TppLineppLine69DesignLayerppDesignLayer2UserNameLine69	Pen.WidthPositionlpLeftWeight       � @mmHeight}mmLeft�� mmTop�+ mmWidth�BandType	LayerNameForeground1  TppLineppLine70DesignLayerppDesignLayer2UserNameLine70	Pen.WidthPositionlpBottomWeight       � @mmHeightxmmLeft<mmTopP� mmWidth�� BandType	LayerNameForeground1  TppLineppLine71DesignLayerppDesignLayer2UserNameLine71	Pen.WidthPositionlpRightWeight       � @mmHeight}mmLeft`� mmTop�+ mmWidth�BandType	LayerNameForeground1  TppLabel
ppLabel184DesignLayerppDesignLayer2UserNameLabel184Caption8(......................................................)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftE mmTopU mmWidth��  BandType	LayerNameForeground1  TppLabel
ppLabel185DesignLayerppDesignLayer2UserNameLabel185Captionp   ลงชื่อผู้จ่ายอุปกรณ์....................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft0� mmTop�i mmWidth��  BandType	LayerNameForeground1  TppLabel
ppLabel186DesignLayerppDesignLayer2UserNameLabel186Caption8(......................................................)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftE mmTop�� mmWidth��  BandType	LayerNameForeground1  TppLineppLine72DesignLayerppDesignLayer2UserNameLine701	Pen.WidthPositionlpBottomWeight       � @mmHeightxmmLeft<mmTop�� mmWidth�� BandType	LayerNameForeground1  TppLabel
ppLabel187DesignLayerppDesignLayer2UserNameLabel187Caption   2##1#02"20#1)25HI2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft)9 mmTop�� mmWidth�  BandType	LayerNameForeground1  TppVariableppVariable2DesignLayerppDesignLayer2UserName	datestam1BlankWhenZero	CalcOrder
Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftM mmTop� mmWidth�6BandType	LayerNameForeground1  TppLineppLine74DesignLayerppDesignLayer2UserNameLine74	Pen.WidthPositionlpRightWeight       � @mmHeight�& mmLeftO� mmTop�� mmWidth�BandType	LayerNameForeground1  TppLabel
ppLabel188DesignLayerppDesignLayer2UserNameLabel188Caption   I20%2"B#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�/mmTop� mmWidth�:BandType	LayerNameForeground1  TppShape	ppShape85DesignLayerppDesignLayer2UserNameShape85mmHeightV
mmLeft"mmTopS� mmWidthM	BandType	LayerNameForeground1  TppLabel
ppLabel189DesignLayerppDesignLayer2UserNameLabel189CaptionFavipiravirFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�/mmTop�� mmWidth:@BandType	LayerNameForeground1  TppShape	ppShape86DesignLayerppDesignLayer2UserNameShape86mmHeightV
mmLeft"mmTop�� mmWidthM	BandType	LayerNameForeground1  TppShape	ppShape87DesignLayerppDesignLayer2UserNameShape801mmHeightV
mmLeft"mmTopT� mmWidthM	BandType	LayerNameForeground1  TppLabel
ppLabel191DesignLayerppDesignLayer2UserNameLabel191Captionp   เริ่มวันที่..........................หยุดวันที่.......................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop� mmWidthO�  BandType	LayerNameForeground1  TppLabel
ppLabel193DesignLayerppDesignLayer2UserNameLabel193Captionp   เริ่มวันที่..........................หยุดวันที่.......................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop�� mmWidthO�  BandType	LayerNameForeground1  TppLineppLine75DesignLayerppDesignLayer2UserNameLine75	Pen.StylepsDotPositionlpBottomWeight       ��?mmHeightgmmLeft�.mmTopC� mmWidth(�  BandType	LayerNameForeground1  TppLabel
ppLabel190DesignLayerppDesignLayer2UserNameLabel190Caption^   ลงชื่อผู้รับยา....................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft0� mmTop� mmWidth��  BandType	LayerNameForeground1  TppLineppLine76DesignLayerppDesignLayer2UserNameLine703	Pen.WidthPositionlpBottomWeight       � @mmHeightxmmLeft<mmTop�' mmWidth�� BandType	LayerNameForeground1  TppLabel
ppLabel194DesignLayerppDesignLayer2UserNameLabel194Captiona   ลงชื่อผู้จ่ายยา....................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft0� mmTopT� mmWidth%�  BandType	LayerNameForeground1  TppLabel
ppLabel195DesignLayerppDesignLayer2UserNameLabel195Caption8(......................................................)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft< mmTop	 mmWidth��  BandType	LayerNameForeground1  	TppDBText	ppDBText7DesignLayerppDesignLayer2UserNameDBText7	DataFieldnurseDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style ParentDataPipelineTextAlignment
taCenteredTransparent	VerticalAlignmentavCenterDataPipelineNameppDBPipelinemmHeight�mmLeft. mmTop� mmWidth�tBandType	LayerNameForeground1  TppLineppLine77DesignLayerppDesignLayer2UserNameLine77	Pen.WidthPositionlpBottomWeight       � @mmHeight,$mmLeft<mmTopF3 mmWidth�� BandType	LayerNameForeground1  TppLabel
ppLabel196DesignLayerppDesignLayer2UserNameLabel196Caption   *#82##1)2H-3+H2"Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftsKmmTopz9 mmWidth�tBandType	LayerNameForeground1  TppLineppLine78DesignLayerppDesignLayer2UserNameLine78	Pen.WidthPositionlpRightWeight       � @mmHeight��  mmLeftW| mmTopF3 mmWidthpBandType	LayerNameForeground1  TppLabel
ppLabel199DesignLayerppDesignLayer2UserNameLabel199CaptionBT              CFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�.mmTop{X mmWidth>BandType	LayerNameForeground1  TppLabel
ppLabel200DesignLayerppDesignLayer2UserNameLabel200Caption+PR             /min                        Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�.mmTop'm mmWidth`BandType	LayerNameForeground1  TppLabel
ppLabel201DesignLayerppDesignLayer2UserNameLabel103Caption)RR            /min                       Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�.mmTopӁ mmWidth`BandType	LayerNameForeground1  TppLabel
ppLabel202DesignLayerppDesignLayer2UserNameLabel1Caption)BP        /        mmHg                  Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�.mmTopm� mmWidth�sBandType	LayerNameForeground1  TppLabel
ppLabel197DesignLayerppDesignLayer2UserNameLabel197CaptionSpO2...............%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�/mmTop� mmWidth�RBandType	LayerNameForeground1  TppLabel
ppLabel198DesignLayerppDesignLayer2UserNameLabel198Caption0   อาการ.................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�/mmTop�� mmWidth9�  BandType	LayerNameForeground1  TppLabel
ppLabel203DesignLayerppDesignLayer2UserNameLabel203Caption   -"9H#  1 0   '1  -22#56IFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop{X mmWidth�pBandType	LayerNameForeground1  TppShape	ppShape88DesignLayerppDesignLayer2UserNameShape88mmHeightV
mmLeft��  mmTop�` mmWidthM	BandType	LayerNameForeground1  TppShape	ppShape89DesignLayerppDesignLayer2UserNameShape89mmHeightV
mmLeft��  mmToplu mmWidthM	BandType	LayerNameForeground1  TppLabel
ppLabel204DesignLayerppDesignLayer2UserNameLabel204Caption1   Refer วันที่.........................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop'm mmWidth}BandType	LayerNameForeground1  TppShape	ppShape90DesignLayerppDesignLayer2UserNameShape90mmHeightV
mmLeft��  mmTop� mmWidthM	BandType	LayerNameForeground1  TppLabel
ppLabel205DesignLayerppDesignLayer2UserNameLabel205Caption)   #1)2H-@7H--22#+1  #. . . . . . . . . . . . . . . Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTopӁ mmWidthś  BandType	LayerNameForeground1  TppShape	ppShape91DesignLayerppDesignLayer2UserNameShape91mmHeightV
mmLeft��  mmTop�� mmWidthM	BandType	LayerNameForeground1  TppLabel
ppLabel206DesignLayerppDesignLayer2UserNameLabel206Caption(   %1D#1)2 9!4%3@2  1+'1. . . . . . . . . . . . Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTopm� mmWidth^�  BandType	LayerNameForeground1  TppShape	ppShape92DesignLayerppDesignLayer2UserNameShape92mmHeightV
mmLeft��  mmTop*� mmWidthM	BandType	LayerNameForeground1  TppLabel
ppLabel207DesignLayerppDesignLayer2UserNameLabel207CaptionD   อื่นๆ ระบุ........................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop*� mmWidth]�  BandType	LayerNameForeground1  TmyCheckBoxmyCheckBox1DesignLayerppDesignLayer2UserName	CheckBox1Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�mmTopC< mmWidth�BandType	LayerNameForeground1  TmyCheckBoxmyCheckBox2DesignLayerppDesignLayer2UserName	CheckBox2Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�mmTop=y mmWidth�BandType	LayerNameForeground1  TmyCheckBoxmyCheckBox3DesignLayerppDesignLayer2UserName	CheckBox3Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�mmTop�b mmWidth�BandType	LayerNameForeground1  TmyCheckBoxmyCheckBox4DesignLayerppDesignLayer2UserName	CheckBox4Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�mmTop�O mmWidth�BandType	LayerNameForeground1  TmyCheckBoxmyCheckBox5DesignLayerppDesignLayer2UserName	CheckBox5Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft��  mmTop�O mmWidth�BandType	LayerNameForeground1  TmyCheckBoxmyCheckBox6DesignLayerppDesignLayer2UserName	CheckBox6Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft��  mmTopC< mmWidth�BandType	LayerNameForeground1  TppLineppLine73DesignLayerppDesignLayer2UserNameLine702	Pen.WidthPositionlpBottomWeight       � @mmHeight�mmLeft<mmTop�� mmWidth�� BandType	LayerNameForeground1  TppVariableppVariable20DesignLayerppDesignLayer2UserName
Variable20BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	VisiblemmHeight�mmLeft��  mmTopC< mmWidth�BandType	LayerNameForeground1  TppVariableppVariable26DesignLayerppDesignLayer2UserName
Variable26BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�pmmTop:; mmWidth�BandType	LayerNameForeground1  TppVariableppVariable27DesignLayerppDesignLayer2UserName
Variable27BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	VisiblemmHeight�mmLeft*�  mmTop"W mmWidthgBandType	LayerNameForeground1  TppVariableppVariable28DesignLayerppDesignLayer2UserName
Variable28BlankWhenZero		CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftd�  mmTop*X mmWidthpBandType	LayerNameForeground1  	TppDBText	ppDBText6DesignLayerppDesignLayer2UserNameDBText6AutoSize		DataFieldnurseDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�c mmTop_} mmWidthBandType	LayerNameForeground1  TppVariableppVariable5DesignLayerppDesignLayer2UserName	Variable5BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeftM mmTopx mmWidthy-BandType	LayerNameForeground1  TppShape	ppShape42DesignLayerppDesignLayer2UserNameShape42mmHeightV
mmLeft�2mmTop� mmWidthM	BandType	LayerNameForeground1  TppLabel	ppLabel22DesignLayerppDesignLayer2UserNameLabel22CaptionParacetamol(500mg)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft>mmTop� mmWidthZgBandType	LayerNameForeground1  TppShape	ppShape43DesignLayerppDesignLayer2UserNameShape43mmHeightV
mmLeftf�  mmTop� mmWidthM	BandType	LayerNameForeground1  TppLabel	ppLabel60DesignLayerppDesignLayer2UserNameLabel60CaptionCPMFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftı  mmTop�  mmWidth�BandType	LayerNameForeground1  TppShape	ppShape44DesignLayerppDesignLayer2UserNameShape44mmHeightV
mmLeft�2mmTop� mmWidthM	BandType	LayerNameForeground1  TppLabel
ppLabel113DesignLayerppDesignLayer2UserNameLabel601Caption   !0A'I-!Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft>mmTopx mmWidthW)BandType	LayerNameForeground1  TppShape	ppShape45DesignLayerppDesignLayer2UserNameShape45mmHeightV
mmLeft��  mmTop� mmWidthM	BandType	LayerNameForeground1  TppLabel
ppLabel114DesignLayerppDesignLayer2UserNameLabel114CaptionDextroFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft$�  mmTop�  mmWidth
 BandType	LayerNameForeground1  TppShape	ppShape78DesignLayerppDesignLayer2UserNameShape78mmHeightV
mmLeftk mmTop� mmWidthM	BandType	LayerNameForeground1  TppLabel
ppLabel115DesignLayerppDesignLayer2UserNameLabel115CaptionORSFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop�� mmWidth�BandType	LayerNameForeground1  TppShape	ppShape79DesignLayerppDesignLayer2UserNameShape79mmHeightV
mmLeftf�  mmTop� mmWidthM	BandType	LayerNameForeground1  TppLabel
ppLabel116DesignLayerppDesignLayer2UserNameLabel116Caption   "2AID-!02!I-!Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftֳ  mmTopg mmWidth�SBandType	LayerNameForeground1  TppVariableppVariable29DesignLayerppDesignLayer2UserName
Variable29BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�C mmTop�� mmWidth�3BandType	LayerNameForeground1  TppLabel
ppLabel192DesignLayerppDesignLayer2UserNameLabel192Caption8(......................................................)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft+ mmTop�� mmWidth��  BandType	LayerNameForeground1  TppVariableppVariable30DesignLayerppDesignLayer2UserName
Variable30BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeftL mmTop�P mmWidth�3BandType	LayerNameForeground1  TppLineppLine27DesignLayerppDesignLayer2UserNameLine27	Pen.WidthPositionlpLeftWeight       � @mmHeight� mmLeft�� mmTop mmWidth�BandType	LayerNameForeground1  TppLineppLine85DesignLayerppDesignLayer2UserNameLine85	Pen.WidthPositionlpLeftWeight       � @mmHeight� mmLeft#mmTop mmWidth�BandType	LayerNameForeground1   TppSummaryBandppSummaryBand1Background.Brush.StylebsClearmmBottomOffset mmHeight?mmPrintPosition  TppLabel
ppLabel212DesignLayerppDesignLayer2UserNameLabel212Caption   %
7H-"22%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft<mmTop mmWidthPGBandType	LayerNameForeground1  TppVariableppVariable22DesignLayerppDesignLayer2UserName
Variable22BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�[mmTop
 mmWidth?BandType	LayerNameForeground1  TppLabel
ppLabel213DesignLayerppDesignLayer2UserNameLabel213Caption   @%5HC-82Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft	�  mmTop mmWidth�OBandType	LayerNameForeground1  TppLineppLine81DesignLayerppDesignLayer2UserNameLine81	Pen.StylepsDotWeight       ��?mmHeight�mmLefts mmTop�mmWidth�UBandType	LayerNameForeground1  TppVariableppVariable23DesignLayerppDesignLayer2UserName
Variable23BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft� mmTop mmWidth?BandType	LayerNameForeground1  TppLabel
ppLabel214DesignLayerppDesignLayer2UserName	Label2101Caption   @%5HC#0-'4
2
5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop mmWidth�wBandType	LayerNameForeground1  TppLabel
ppLabel215DesignLayerppDesignLayer2UserNameLabel215Caption   %
7H-A"L9I#1)2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftg_ mmTop mmWidth^BandType	LayerNameForeground1  TppLineppLine82DesignLayerppDesignLayer2UserNameLine801	Pen.StylepsDotWeight       ��?mmHeight�mmLeft�� mmTop�mmWidthliBandType	LayerNameForeground1  TppVariableppVariable24DesignLayerppDesignLayer2UserNameVariable201BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�� mmTop,$mmWidthHFBandType	LayerNameForeground1  TppVariableppVariable25DesignLayerppDesignLayer2UserName
Variable25BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLefto� mmTop mmWidth?BandType	LayerNameForeground1  TppLineppLine79DesignLayerppDesignLayer2UserNameLine79	Pen.StylepsDotWeight       ��?mmHeightV
mmLeft�QmmTop�mmWidthIeBandType	LayerNameForeground1  TppLineppLine80DesignLayerppDesignLayer2UserNameLine80	Pen.StylepsDotWeight       ��?mmHeightV
mmLeftb� mmTop�mmWidthAdBandType	LayerNameForeground1   TraCodeModuleraCodeModule1 TraProgramInforaProgramInfo44raClassNameTraEventHandlerraProgram.ProgramNameVariabletodayOnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure VariabletodayOnCalc(var Value: Variant);
begin

  Value :=  GetSQLStringData('select date_add(vstdate,INTERVAL 10 DAY) from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentNameVariabletodayraProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos   TraProgramInforaProgramInfo45raClassNameTraEventHandlerraProgram.ProgramNamevdateplus1OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure vdateplus1OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select date_add(vstdate,INTERVAL 1 DAY) from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName
vdateplus1raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo46raClassNameTraEventHandlerraProgram.ProgramNamevdateplus3OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure vdateplus3OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select date_add(vstdate,INTERVAL 3 DAY) from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName
vdateplus3raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo47raClassNameTraEventHandlerraProgram.ProgramNamevdateplus2OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure vdateplus2OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select date_add(vstdate,INTERVAL 2 DAY) from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName
vdateplus2raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo48raClassNameTraEventHandlerraProgram.ProgramNamevdateplus4OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure vdateplus4OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select date_add(vstdate,INTERVAL 4 DAY) from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName
vdateplus4raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo49raClassNameTraEventHandlerraProgram.ProgramNamevdateplus5OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure vdateplus5OnCalc(var Value: Variant);
begin

  Value :=   GetSQLStringData('select date_add(vstdate,INTERVAL 5 DAY) from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName
vdateplus5raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo50raClassNameTraEventHandlerraProgram.ProgramNamevdateplus6OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure vdateplus6OnCalc(var Value: Variant);
begin

  Value :=     GetSQLStringData('select date_add(vstdate,INTERVAL 6 DAY) from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName
vdateplus6raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo51raClassNameTraEventHandlerraProgram.ProgramNamevdateplus7OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure vdateplus7OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select date_add(vstdate,INTERVAL 7 DAY) from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName
vdateplus7raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo53raClassNameTraEventHandlerraProgram.ProgramNamevdateplus8OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure vdateplus8OnCalc(var Value: Variant);
begin

  Value :=  GetSQLStringData('select date_add(vstdate,INTERVAL 8 DAY) from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName
vdateplus8raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo54raClassNameTraEventHandlerraProgram.ProgramNamevdateplus9OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure vdateplus9OnCalc(var Value: Variant);
begin

  Value :=  GetSQLStringData('select date_add(vstdate,INTERVAL 9 DAY) from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName
vdateplus9raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo55raClassNameTraEventHandlerraProgram.ProgramNamedatestam1OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure datestam1OnCalc(var Value: Variant);
begin

  Value :=  GetSQLStringData('select vstdate from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName	datestam1raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos6   TraProgramInforaProgramInfo56raClassNameTraEventHandlerraProgram.ProgramNameVariable22OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable22OnCalc(var Value: Variant);
begin
 Value := GetSQLStringData('select u.name from opduser u  where '+
             ' u.loginname="'+GetCurrentUser+'" ');

end;
raProgram.ComponentName
Variable22raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo57raClassNameTraEventHandlerraProgram.ProgramNameVariable23OnCalcraProgram.ProgramTypettProcedureraProgram.Source  procedure Variable23OnCalc(var Value: Variant);
begin


           Value := GetSQLStringData('select d.licenseno from opduser u left join doctor d '+
           ' on u.doctorcode=d.`code`  where '+
             ' u.loginname="'+GetCurrentUser+'" ');
             


end;
raProgram.ComponentName
Variable23raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo58raClassNameTraEventHandlerraProgram.ProgramNameVariable201OnCalcraProgram.ProgramTypettProcedureraProgram.Sourcet  procedure Variable201OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select (select doctor_fullname from prs_hici_doctor where doctor_code = ds.doctor_code) as dname from opduser  o '+
'INNER JOIN doctor d on d.code = o.doctorcode '+
'INNER JOIN prs_doctor_select ds on ds.nurse_code = d.code '+
'where loginname ="'+getcurrentuser+'"');

end;
raProgram.ComponentNameVariable201raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos   TraProgramInforaProgramInfo59raClassNameTraEventHandlerraProgram.ProgramNameVariable25OnCalcraProgram.ProgramTypettProcedureraProgram.Sourcel  procedure Variable25OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select (select liceneno from prs_hici_doctor where doctor_code = ds.doctor_code) as dname from opduser  o '+
'INNER JOIN doctor d on d.code = o.doctorcode '+
'INNER JOIN prs_doctor_select ds on ds.nurse_code = d.code '+
'where loginname ="'+getcurrentuser+'"');

end;
raProgram.ComponentName
Variable25raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo60raClassNameTraEventHandlerraProgram.ProgramNameVariable20OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable20OnCalc(var Value: Variant);
begin

  Value :=  GetSQLStringData('select if(o.icode>0 ,"Y"," ")   '+
	  '	 from opitemrece o     '+
  '  WHERE  o.vn ="'+DBPipeline['vn']+'" and o.icode in("3005064","3005065") ');

end;
raProgram.ComponentName
Variable20raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo61raClassNameTraEventHandlerraProgram.ProgramNameVariable26OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable26OnCalc(var Value: Variant);
begin

if   (variable20.value = 'Y')  then
    CheckBox1.checked := true


else

    CheckBox1.checked := false;

end;
raProgram.ComponentName
Variable26raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo62raClassNameTraEventHandlerraProgram.ProgramNameVariable27OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable27OnCalc(var Value: Variant);
begin
 Value :=  GetSQLStringData('select if(o.icode>0 ,"Y"," ")   '+
	  '	 from opitemrece o     '+
  '  WHERE  o.vn ="'+DBPipeline['vn']+'" and o.icode in("3005066","3005067") ');

end;
raProgram.ComponentName
Variable27raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo63raClassNameTraEventHandlerraProgram.ProgramNameVariable28OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable28OnCalc(var Value: Variant);
begin

if   (variable27.value = 'Y')  then
    CheckBox3.checked := true


else

    CheckBox3.checked := false;

end;
raProgram.ComponentName
Variable28raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo64raClassNameTraEventHandlerraProgram.ProgramNameVariable5OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable5OnCalc(var Value: Variant);
begin

  Value :=  GetSQLStringData('select vstdate from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName	Variable5raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo65raClassNameTraEventHandlerraProgram.ProgramNameVariable29OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable29OnCalc(var Value: Variant);
begin

   Value :=   GetSQLStringData(' SELECT if("'+DBPipeline['age_y']+'" <18,informname, "'+DBPipeline['fullname']+'" ) from  patient p '+

  '  where p.hn = "'+DBPipeline['hn']+'" ');

end;
raProgram.ComponentName
Variable29raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo66raClassNameTraEventHandlerraProgram.ProgramNameVariable30OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable30OnCalc(var Value: Variant);
begin


   Value :=   GetSQLStringData(' SELECT if("'+DBPipeline['age_y']+'" <18,informname, "'+DBPipeline['fullname']+'" ) from  patient p '+

  '  where p.hn = "'+DBPipeline['hn']+'" ');

end;
raProgram.ComponentName
Variable30raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo67raClassNameTraEventHandlerraProgram.ProgramNameVariable57OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable57OnCalc(var Value: Variant);
begin

Value :=  GetSQLStringData('select thaidates(date_add(vstdate,INTERVAL 10 DAY)) from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName
Variable57raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo68raClassNameTraEventHandlerraProgram.ProgramNameVariable56OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable56OnCalc(var Value: Variant);
begin

 Value := GetSQLStringData('select u.name from opduser u  where '+
             ' u.loginname="'+GetCurrentUser+'" ');

end;
raProgram.ComponentName
Variable56raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo69raClassNameTraEventHandlerraProgram.ProgramNameVariable55OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable55OnCalc(var Value: Variant);
begin

  Value := GetSQLStringData('select d.licenseno from opduser u left join doctor d on u.doctorcode=d.code where '+
             ' u.loginname="'+GetCurrentUser+'" ');

end;
raProgram.ComponentName
Variable55raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos      TppDesignLayersppDesignLayers2 TppDesignLayerppDesignLayer2UserNameForeground1	LayerTypeltBandedIndex      TppLineppLine4DesignLayerppDesignLayer1UserNameLine4	Pen.WidthPositionlpRightWeight       ��?mmHeightQ� mmLeft�� mmTop~�  mmWidthV
BandType	LayerName
Foreground  TppLineppLine39DesignLayerppDesignLayer1UserNameLine39	Pen.StylepsDotWeight       ��?mmHeightgmmLeft� mmTopj� mmWidth�/ BandType	LayerName
Foreground  TppLineppLine83DesignLayerppDesignLayer1UserNameLine83	Pen.WidthPositionlpBottomWeight       ��?mmHeight�mmLeft� mmTop�: mmWidth@�  BandType	LayerName
Foreground  TppVariableppVariable18DesignLayerppDesignLayer1UserName
informnameBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftۂ mmTop1� mmWidth?BandType	LayerName
Foreground  TppVariableppVariable19DesignLayerppDesignLayer1UserName
onlineuserBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft� mmTop�� mmWidth�8BandType	LayerName
Foreground  TppLabel	ppLabel50DesignLayerppDesignLayer1UserNameLabel50Caption   +H'"5H1#-  B#"22%#2*2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�% mmTop	 mmWidth*�  BandType	LayerName
Foreground  TppLabel	ppLabel36DesignLayerppDesignLayer1UserNameLabel36Caption^   ถ้ามีผล          ปกติ           ผิดปกติ...................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft}$ mmTop� mmWidth��  BandType	LayerName
Foreground  TppShape	ppShape40DesignLayerppDesignLayer1UserNameShape40mmHeightV
mmLeftt mmTopa� mmWidthM	BandType	LayerName
Foreground  TppShape	ppShape41DesignLayerppDesignLayer1UserNameShape401mmHeightV
mmLeftȨ mmTopX� mmWidthM	BandType	LayerName
Foreground  TppLabel	ppLabel44DesignLayerppDesignLayer1UserNameLabel44Caption   !5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTop-� mmWidth4BandType	LayerName
Foreground  TppLabel	ppLabel58DesignLayerppDesignLayer1UserNameLabel58Caption   D!H!5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftZ� mmTop-� mmWidth�BandType	LayerName
Foreground  TppLineppLine84DesignLayerppDesignLayer1UserNameLine21	Pen.WidthPositionlpDiagRightWeight       ��?mmHeight�mmLeft�� mmTop� mmWidthM	BandType	LayerName
Foreground  TppLabel
ppLabel118DesignLayerppDesignLayer1UserNameLabel118CaptionmmHgFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop� mmWidth!BandType	LayerName
Foreground  TppLineppLine20DesignLayerppDesignLayer1UserNameLine20	Pen.WidthPositionlpBottomWeight       ��?mmHeight�mmLeft+mmTop� mmWidth�� BandType	LayerName
Foreground  TppLabel	ppLabel42DesignLayerppDesignLayer1UserNameLabel172CaptionP   ฟ้าทะลายโจร แคปซูล 9 tabs po tid ac # 135 tabsFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTopֳ  mmWidth�  BandType	LayerName
Foreground  TppLabel
ppLabel104DesignLayerppDesignLayer1UserNameLabel173Caption1Paracetamol (500) 1 tab po prn q 6 hrs for fever Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop��  mmWidthG�  BandType	LayerName
Foreground  TppLabel
ppLabel180DesignLayerppDesignLayer1UserNameLabel180Caption*Dextromethorphan 1 tab po tid pc # 20 tabsFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop��  mmWidth��  BandType	LayerName
Foreground  TppLabel
ppLabel208DesignLayerppDesignLayer1UserNameLabel208CaptionCPM 1 tab po tid pc # 10 tabsFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop� mmWidth~�  BandType	LayerName
Foreground  TppLabel
ppLabel209DesignLayerppDesignLayer1UserNameLabel209Caption. Lorazepam (0.5) 1 tab po prn/hs for insomnia Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop9 mmWidth��  BandType	LayerName
Foreground  TppLabel
ppLabel210DesignLayerppDesignLayer1UserName	Label2001Caption   "2DI53@GI-*1H  @4H!Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop�G mmWidth�qBandType	LayerName
Foreground  TmyCheckBoxmyCheckBox27DesignLayerppDesignLayer1UserName
CheckBox27Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�
 mmTop޴  mmWidthxBandType	LayerName
Foreground  TmyCheckBoxmyCheckBox28DesignLayerppDesignLayer1UserName
CheckBox28Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�
 mmTop��  mmWidthxBandType	LayerName
Foreground  TmyCheckBoxmyCheckBox29DesignLayerppDesignLayer1UserName
CheckBox29Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�
 mmTops mmWidthxBandType	LayerName
Foreground  TmyCheckBoxmyCheckBox30DesignLayerppDesignLayer1UserName
CheckBox30Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�
 mmTop��  mmWidthxBandType	LayerName
Foreground  TmyCheckBoxmyCheckBox31DesignLayerppDesignLayer1UserName
CheckBox31Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�
 mmTop' mmWidthxBandType	LayerName
Foreground  TmyCheckBoxmyCheckBox32DesignLayerppDesignLayer1UserName
CheckBox32Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�
 mmTop�E mmWidthxBandType	LayerName
Foreground  TppLabel
ppLabel211DesignLayerppDesignLayer1UserNameLabel211Caption
 # 20 tabsFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop>�  mmWidthz-BandType	LayerName
Foreground  TppLabel
ppLabel216DesignLayerppDesignLayer1UserNameLabel216Caption	# 10 tabsFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop�1 mmWidth`*BandType	LayerName
Foreground  TppLabelppLabel1DesignLayerppDesignLayer1UserNameLabel1Caption�   แบบบันทึกการดูแลรักษาผู้ป่วย Covid-19 กรณี Home Isolation หรือ Community isolationFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft|mmTop<mmWidth- BandType	LayerName
Foreground  	TppDBText	ppDBText2DesignLayerppDesignLayer1UserNameDBText2	DataFieldfullnameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	VerticalAlignmentavBottomDataPipelineNameppDBPipelinemmHeight�mmLeft`*mmTop�6mmWidthݕ  BandType	LayerName
Foreground  	TppDBText	ppDBText4DesignLayerppDesignLayer1UserNameDBText4	DataFieldage_yDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�� mmTop�7mmWidthO(BandType	LayerName
Foreground  	TppDBText
ppDBText14DesignLayerppDesignLayer1UserNameDBText14	DataFieldhometelDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�� mmTop�OmmWidthaIBandType	LayerName
Foreground  	TppDBText	ppDBText8DesignLayerppDesignLayer1UserNameDBText8	DataFieldhnDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	VerticalAlignmentavCenterDataPipelineNameppDBPipelinemmHeight�mmLeft�M mmTop�9mmWidth7DBandType	LayerName
Foreground  	TppDBText
ppDBText11DesignLayerppDesignLayer1UserNameDBText11	DataFieldFulladdDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft>mmTop�OmmWidthnA BandType	LayerName
Foreground  	TppDBText	ppDBText1DesignLayerppDesignLayer1UserNameDBText1	DataFieldcidDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�  mmTop�9mmWidth]BandType	LayerName
Foreground  	TppDBText	ppDBText9DesignLayerppDesignLayer1UserNameDBText9	DataField	ptty_nameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	VerticalAlignmentavBottomDataPipelineNameppDBPipelinemmHeight�mmLeft$/ mmTop�6mmWidthE�  BandType	LayerName
Foreground  	TppDBText
ppDBText10DesignLayerppDesignLayer1UserNameDBText10CharWrap		DataFieldccDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	WordWrap	DataPipelineNameppDBPipelinemmHeight!mmLeft7DmmTop`mmWidth�d BandType	LayerName
Foreground  	TppDBText
ppDBText12DesignLayerppDesignLayer1UserNameDBText12	DataFieldsexDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft� mmTop�7mmWidth�BandType	LayerName
Foreground  TppLabelppLabel2DesignLayerppDesignLayer1UserNameLabel2Caption   
7H-+H'"#42#  Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft"mmTop"mmWidthHFBandType	LayerName
Foreground  TppLabel	ppLabel53DesignLayerppDesignLayer1UserNameLabel35Caption   #+1*+H'"#42#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop"mmWidthaIBandType	LayerName
Foreground  TppLabel	ppLabel80DesignLayerppDesignLayer1UserNameLabel43Caption   '15H#1#42#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftxa mmTop
 mmWidth�<BandType	LayerName
Foreground  TppLabel	ppLabel81DesignLayerppDesignLayer1UserNameLabel49Caption   '15H3+H2"Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftg mmTop
 mmWidth�8BandType	LayerName
Foreground  TppLabel	ppLabel82DesignLayerppDesignLayer1UserNameLabel53Caption	   
7H-- *8%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft"mmTop�8mmWidth,$BandType	LayerName
Foreground  TppLabel	ppLabel83DesignLayerppDesignLayer1UserNameLabel54CaptionPIDFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeftE�  mmTop�9mmWidth�BandType	LayerName
Foreground  TppLabel	ppLabel84DesignLayerppDesignLayer1UserNameLabel55CaptionHNFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftC< mmTop�7mmWidthxBandType	LayerName
Foreground  TppLabel	ppLabel85DesignLayerppDesignLayer1UserNameLabel72Caption   @(Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeftj� mmTop�7mmWidth�BandType	LayerName
Foreground  TppLabel	ppLabel86DesignLayerppDesignLayer1UserNameLabel80Caption   -2"8Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop�7mmWidth�BandType	LayerName
Foreground  TppLabel	ppLabel96DesignLayerppDesignLayer1UserNameLabel81Caption   5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft	 mmTop�8mmWidth<BandType	LayerName
Foreground  TppLabel	ppLabel97DesignLayerppDesignLayer1UserNameLabel82Caption   *44Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftx mmTop�7mmWidth�BandType	LayerName
Foreground  TppLabel	ppLabel98DesignLayerppDesignLayer1UserNameLabel83Caption   5H-"9H181Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft"mmTop�OmmWidth�5BandType	LayerName
Foreground  TppLabel	ppLabel99DesignLayerppDesignLayer1UserNameLabel84Caption   @-#LB#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftX� mmTop�OmmWidth>&BandType	LayerName
Foreground  TppLabel
ppLabel100DesignLayerppDesignLayer1UserNameLabel85Caption   ID Line  ถ้ามีFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTop�OmmWidthjJBandType	LayerName
Foreground  TppLabel
ppLabel101DesignLayerppDesignLayer1UserNameLabel86Caption	   -2#*31Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft<mmTop`mmWidth�:BandType	LayerName
Foreground  TppLabel
ppLabel102DesignLayerppDesignLayer1UserNameLabel96Caption   9I16I-!9%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTopRfmmWidth�:BandType	LayerName
Foreground  TppLabel
ppLabel103DesignLayerppDesignLayer1UserNameLabel97Caption   @%C#0-'4
2
5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�e mmTopRfmmWidth_BandType	LayerName
Foreground  TppVariableppVariable6DesignLayerppDesignLayer1UserName	Variable6BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�� mmTopRfmmWidth�<BandType	LayerName
Foreground  TppVariableppVariable7DesignLayerppDesignLayer1UserName	Variable7BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft� mmTopRfmmWidth�oBandType	LayerName
Foreground  TppLabel
ppLabel105DesignLayerppDesignLayer1UserNameLabel99Caption   @-#LB#24Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft" mmTop�OmmWidth�9BandType	LayerName
Foreground  	TppDBText	ppDBText5DesignLayerppDesignLayer1UserNameDBText5	DataField	informtelDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft7P mmTop�OmmWidthYHBandType	LayerName
Foreground  TppVariableppVariable21DesignLayerppDesignLayer1UserName	Variable2BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftPS mmTop
 mmWidthS�  BandType	LayerName
Foreground  	TppDBText	ppDBText3DesignLayerppDesignLayer1UserNameDBText3	DataFieldvsstdateDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�� mmTop
 mmWidthIeBandType	LayerName
Foreground  	TppDBText
ppDBText75DesignLayerppDesignLayer1UserNameDBText75AutoSize		DataField	shortnameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�PmmTop"mmWidthBandType	LayerName
Foreground  	TppDBText
ppDBText76DesignLayerppDesignLayer1UserNameDBText76	DataField	hospcode2DataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	VerticalAlignmentavBottomDataPipelineNameppDBPipelinemmHeight�mmLeft�& mmTop"mmWidth�/BandType	LayerName
Foreground  TppLine	ppLine105DesignLayerppDesignLayer1UserNameLine105	Pen.WidthPositionlpLeftWeight       ��?mmHeight2CmmLeft� mmTop�� mmWidthBandType	LayerName
Foreground  TppLine	ppLine111DesignLayerppDesignLayer1UserNameLine111	Pen.WidthPositionlpBottomWeight       ��?mmHeight]mmLeft"mmTop� mmWidth BandType	LayerName
Foreground  TppLabel	ppLabel43DesignLayerppDesignLayer1UserNameLabel22Caption?...............................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft#�  mmTop. mmWidthV�  BandType	LayerName
Foreground   TppFooterBandppFooterBand1Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppSummaryBandppSummaryBand7Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�QmmPrintPosition  TppSubReportppSubReport6DesignLayerppDesignLayer1UserName
SubReport6	ExpandAllNewPrintJobOutlineSettings.CreateNode	ShiftRelativeToppSubReport7TraverseAllDataVisibleDataPipelineNameppDBPipelinemmHeight�mmLeft mmTop�mmWidth� BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport6AutoStopDataPipelineppDBPipelinePrinterSetup.BinName   @%7--1B!14PrinterSetup.DocumentName&   C U S T O M - - +1*7-"4"-!@7H-#12##1)2PrinterSetup.DuplexdpNonePrinterSetup.PaperName   A4 210 x 297 มม.PrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight(� PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize	Version17.03mmColumnWidth DataPipelineNameppDBPipeline TppTitleBandppTitleBand5Background.Brush.StylebsClearmmBottomOffset mmHeight�x mmPrintPosition  TppLabel
ppLabel340DesignLayerppDesignLayer7UserNameLabel340CaptionN   B'4  1 9   A"L#0@!4-22#5H  4 8   
1H'B!A%I'  -22#56I  @+G*!'#C+I11'H-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�  mmTop�N mmWidth9� BandType	LayerNameForeground4  TppLabel
ppLabel341DesignLayerppDesignLayer7UserNameLabel341HyperlinkEnabledCaption   C#1#-A"LFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeightmmLeft)9 mmTop.CmmWidth�vBandType	LayerNameForeground4  TppLabel
ppLabel342DesignLayerppDesignLayer7UserNameLabel342HyperlinkEnabledCaption   I2@I2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftݕ  mmTop��  mmWidthq,BandType	LayerNameForeground4  TppLabel
ppLabel343DesignLayerppDesignLayer7UserNameLabel255HyperlinkEnabledCaption:   B#"22%#2*2  6 0 2   !. 2   . 1A-  -. #2*2  . *8#4#L  3 2 1 4 0 Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�  mmTop��  mmWidth�� BandType	LayerNameForeground4  TppLabel
ppLabel344DesignLayerppDesignLayer7UserNameLabel344HyperlinkEnabledCaption3   A"L#42  @GA"L6HDI#16I0@5"A%0DI#1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTop��  mmWidth�3 BandType	LayerNameForeground4  TppLabel
ppLabel345DesignLayerppDesignLayer7UserNameLabel345HyperlinkEnabledCaptionP   -8!14C+IDI@G  9I#0-B#(4%LA181
1I  1   *22@'
##!  C-82@%5H  Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�smmTop��  mmWidth�� BandType	LayerNameForeground4  TppLabel
ppLabel346DesignLayerppDesignLayer7UserName	Label2202HyperlinkEnabledCaption   DI32##'#H22"-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftݕ  mmTop��  mmWidth�  BandType	LayerNameForeground4  TppLabel
ppLabel347DesignLayerppDesignLayer7UserNameLabel347HyperlinkEnabledCaption=   22##'#1)29I!5
7H-I2IA%I'    -C+I'2!@+G1H-D5IFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftݕ  mmTop�1 mmWidth�c BandType	LayerNameForeground4  	TppDBText
ppDBText34DesignLayerppDesignLayer7UserNameDBText52HyperlinkEnabledAutoSize		DataFieldfullnameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�0 mmTop��  mmWidth#BandType	LayerNameForeground4  TppLabel
ppLabel348DesignLayerppDesignLayer7UserNameLabel348HyperlinkEnabledCaption   -2"8Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft+ mmTop��  mmWidth�BandType	LayerNameForeground4  	TppDBText
ppDBText53DesignLayerppDesignLayer7UserNameDBText53HyperlinkEnabled	DataFieldage_yDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�B mmTop��  mmWidth�BandType	LayerNameForeground4  TppLabel
ppLabel349DesignLayerppDesignLayer7UserNameLabel261HyperlinkEnabledAutoSizeCaption�   วินิจฉัยโรค..................................................................................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�smmTop�P mmWidth�D BandType	LayerNameForeground4  TppLabel
ppLabel350DesignLayerppDesignLayer7UserNameLabel350HyperlinkEnabledCaption   5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�] mmTop��  mmWidthM	BandType	LayerNameForeground4  TppLabel
ppLabel351DesignLayerppDesignLayer7UserNameLabel351HyperlinkEnabledAutoSizeCaption�..............................................................................................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�smmTop�i mmWidth
, BandType	LayerNameForeground4  TppLabel
ppLabel352DesignLayerppDesignLayer7UserNameLabel352HyperlinkEnabledCaption   '#+"82@G@'%2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�  mmTop�� mmWidth�xBandType	LayerNameForeground4  TppLabel
ppLabel353DesignLayerppDesignLayer7UserNameLabel353HyperlinkEnabledCaption"   -#1#-I-'2!I2I@G'2!#4Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftN�  mmTop� mmWidth
�  BandType	LayerNameForeground4  TppLabel
ppLabel354DesignLayerppDesignLayer7UserNameLabel354HyperlinkEnabledCaption   ( %
7H-) Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�b mmTop& mmWidthF'BandType	LayerNameForeground4  TppLabel
ppLabel355DesignLayerppDesignLayer7UserNameLabel355HyperlinkEnabledCaption(Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLefth~ mmTop(/ mmWidth"BandType	LayerNameForeground4  TppLabel
ppLabel356DesignLayerppDesignLayer7UserName	Label2301HyperlinkEnabledCaption)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�A mmTop(/ mmWidth#BandType	LayerNameForeground4  TppLabel
ppLabel357DesignLayerppDesignLayer7UserNameLabel357HyperlinkEnabledCaption8   ( C#1#-A"L0*!9#L0I-DI#12##01#2@H21I) Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft��  mmTop| mmWidthf_ BandType	LayerNameForeground4  TppLabel
ppLabel358DesignLayerppDesignLayer7UserName	Label2701HyperlinkEnabledCaption   @%5HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop�qmmWidth"BandType	LayerNameForeground4  TppLabel
ppLabel359DesignLayerppDesignLayer7UserNameLabel271AutoSizeCaptionLabel271Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size
Font.Style Transparent	mmHeight mmLeftw� mmTop~�  mmWidth"BandType	LayerNameForeground4  TppLabel
ppLabel360DesignLayerppDesignLayer7UserNameLabel360AutoSizeCaptionLabel360Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size
Font.Style Transparent	mmHeight mmLeft�� mmTop� mmWidth"BandType	LayerNameForeground4  TppLabel
ppLabel361DesignLayerppDesignLayer7UserNameLabel361HyperlinkEnabledCaption*..........................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeftX� mmTop7 mmWidth:�  BandType	LayerNameForeground4  TppLabel
ppLabel362DesignLayerppDesignLayer7UserNameLabel362HyperlinkEnabledCaption   A"L9I#'Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�% mmTop& mmWidthjJBandType	LayerNameForeground4  	TppDBText
ppDBText56DesignLayerppDesignLayer7UserNameDBText56AutoSize		DataField
inputdate1DataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeftu mmTop�� mmWidthGFBandType	LayerNameForeground4  TppLabel
ppLabel363DesignLayerppDesignLayer7UserNameLabel363Caption   '1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�) mmTop�� mmWidth�BandType	LayerNameForeground4  TppLabel
ppLabel364DesignLayerppDesignLayer7UserNameLabel364Caption   1IAH'15HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft\? mmTop�� mmWidth�8BandType	LayerNameForeground4  TppLabel
ppLabel365DesignLayerppDesignLayer7UserNameLabel365HyperlinkEnabledCaption#...................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftu mmTopç mmWidth�uBandType	LayerNameForeground4  TppLabel
ppLabel366DesignLayerppDesignLayer7UserNameLabel366Caption
   6  '15HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft)� mmTop�� mmWidthy-BandType	LayerNameForeground4  TppLabel
ppLabel367DesignLayerppDesignLayer7UserName	Label2801AutoSizeCaptionHNFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	VerticalAlignmentavCentermmHeight�mmLeft#j mmTop��  mmWidth�BandType	LayerNameForeground4  	TppDBText
ppDBText57DesignLayerppDesignLayer7UserNameDBText57AutoSize		DataFieldhnDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeftӁ mmTop��  mmWidth"BandType	LayerNameForeground4  TppVariableppVariable36DesignLayerppDesignLayer7UserName
Variable36AutoSizeBlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeftB�  mmTop�  mmWidth�9BandType	LayerNameForeground4  TppLabel
ppLabel368DesignLayerppDesignLayer7UserName	Label1901HyperlinkEnabledCaption'   FM-MSO-001  ประกาศใช้Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft{� mmTop�3 mmWidthu�  BandType	LayerNameForeground4  TppLabel
ppLabel369DesignLayerppDesignLayer7UserName
Label10101HyperlinkEnabledCaption2     *25H#'    B#"22%#2*2    1+'1*8#4#L      Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�smmTop� mmWidthC BandType	LayerNameForeground4  TppLabel
ppLabel370DesignLayerppDesignLayer7UserNameLabel370HyperlinkEnabledCaption!   2@-*2#8 2    (9"L128 2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft{� mmTop:G mmWidth��  BandType	LayerNameForeground4  	TppDBText
ppDBText58DesignLayerppDesignLayer7UserNameDBText58AutoSize		DataFieldd_dayDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�PmmTopj mmWidth=&BandType	LayerNameForeground4  TppMemoppMemo3DesignLayerppDesignLayer7UserNameMemo3CaptionMemo3CharWrapFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style RemoveEmptyLinesTextAlignment
taCenteredTransparent	VisiblemmHeight"mmLeftv�  mmTopX� mmWidth�7BandType	LayerNameForeground4mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading   TppLabel
ppLabel371DesignLayerppDesignLayer7UserNameLabel371Caption>   #  1 0   '1  +%121I  *2!2#%1DC
I
5'42!A''45C+!HDIFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�  mmTop�f mmWidth�� BandType	LayerNameForeground4  TppVariableppVariable37DesignLayerppDesignLayer7UserName
Variable37BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�� mmTop)N mmWidth6DBandType	LayerNameForeground4  TppVariableppVariable38DesignLayerppDesignLayer7UserName
Variable38BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTop�� mmWidth7DBandType	LayerNameForeground4  TppVariableppVariable39DesignLayerppDesignLayer7UserNameVariable102BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�# mmTop�� mmWidth{LBandType	LayerNameForeground4  TppVariableppVariable46DesignLayerppDesignLayer7UserName
Variable46BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�[ mmTop��  mmWidth7DBandType	LayerNameForeground4  TppVariableppVariable47DesignLayerppDesignLayer7UserName
Variable47BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�� mmTop(/ mmWidth6DBandType	LayerNameForeground4  TppLabel
ppLabel372DesignLayerppDesignLayer7UserNameLabel372HyperlinkEnabledCaption10Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop�� mmWidth�BandType	LayerNameForeground4  TppLabel
ppLabel373DesignLayerppDesignLayer7UserNameLabel373HyperlinkEnabledCaption'.......................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTopç mmWidth�xBandType	LayerNameForeground4  TppLabel
ppLabel374DesignLayerppDesignLayer7UserNameLabel374HyperlinkEnabledCaption
..........Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTopç mmWidthBandType	LayerNameForeground4  TmyCheckBoxmyCheckBox80DesignLayerppDesignLayer7UserName
CheckBox80	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�ymmTop�� mmWidth�BandType	LayerNameForeground4  TppVariableppVariable50DesignLayerppDesignLayer7UserName
Variable50BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�> mmTop�qmmWidth�MBandType	LayerNameForeground4  TppVariableppVariable44DesignLayerppDesignLayer7UserName
Variable44BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftp�  mmTop��  mmWidth6DBandType	LayerNameForeground4  TppLabel
ppLabel274DesignLayerppDesignLayer7UserNameLabel274HyperlinkEnabledCaption   7I5H+H'"#42#  : Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft mmTopb mmWidth�RBandType	LayerNameForeground4  	TppDBText
ppDBText50DesignLayerppDesignLayer7UserNameDBText50AutoSize		DataFieldhosnameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�XmmTopb mmWidthBandType	LayerNameForeground4   TppDetailBandppDetailBand7Background1.Brush.StylebsClearBackground2.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppSummaryBandppSummaryBand6Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TraCodeModuleraCodeModule7 TraProgramInforaProgramInfo70raClassNameTraEventHandlerraProgram.ProgramNameVariable50OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable50OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select doctor_cert_id from wsc_covid_queue where vn ="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName
Variable50raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo71raClassNameTraEventHandlerraProgram.ProgramNameVariable46OnCalcraProgram.ProgramTypettProcedureraProgram.Sourcej  procedure Variable46OnCalc(var Value: Variant);
begin
  Value :=    GetSQLStringData('select (select liceneno from prs_hici_doctor where doctor_code = ds.doctor_code) as dname from opduser  o '+
'INNER JOIN doctor d on d.code = o.doctorcode '+
'INNER JOIN prs_doctor_select ds on ds.nurse_code = d.code '+
'where loginname ="'+getcurrentuser+'"');

end;
raProgram.ComponentName
Variable46raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo72raClassNameTraEventHandlerraProgram.ProgramNameVariable47OnCalcraProgram.ProgramTypettProcedureraProgram.Sources  procedure Variable47OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select (select doctor_fullname from prs_hici_doctor where doctor_code = ds.doctor_code) as dname from opduser  o '+
'INNER JOIN doctor d on d.code = o.doctorcode '+
'INNER JOIN prs_doctor_select ds on ds.nurse_code = d.code '+
'where loginname ="'+getcurrentuser+'"');

end;
raProgram.ComponentName
Variable47raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo73raClassNameTraEventHandlerraProgram.ProgramNameVariable37OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable37OnCalc(var Value: Variant);
begin

 if length(DBPipeline['dc_date']) <> 0 then
  Value := FormatThaiDate('d mmmm yyyy',DBPipeline['dc_date'])
  else
  Value := '';



end;
raProgram.ComponentName
Variable37raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo74raClassNameTraEventHandlerraProgram.ProgramNameVariable44OnCalcraProgram.ProgramTypettProcedureraProgram.Sources  procedure Variable44OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select (select doctor_fullname from prs_hici_doctor where doctor_code = ds.doctor_code) as dname from opduser  o '+
'INNER JOIN doctor d on d.code = o.doctorcode '+
'INNER JOIN prs_doctor_select ds on ds.nurse_code = d.code '+
'where loginname ="'+getcurrentuser+'"');

end;
raProgram.ComponentName
Variable44raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo82raClassNameTraEventHandlerraProgram.ProgramNameVariable102OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable102OnCalc(var Value: Variant);
begin



 if length(DBPipeline['dc_date2']) <> 0 then
  Value := FormatThaiDate('d mmmm yyyy',DBPipeline['dc_date2'])
  else
  Value := '';






end;
raProgram.ComponentNameVariable102raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo87raClassNameTraEventHandlerraProgram.ProgramNameVariable38OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable38OnCalc(var Value: Variant);
begin

 if length(DBPipeline['vstdate']) <> 0 then
  Value := FormatThaiDate('d mmmm yyyy',DBPipeline['vstdate'])
  else
  Value := '';





end;
raProgram.ComponentName
Variable38raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos      TppDesignLayersppDesignLayers7 TppDesignLayerppDesignLayer7UserNameForeground4	LayerTypeltBandedIndex      TppSubReportppSubReport7DesignLayerppDesignLayer1UserName
SubReport7	ExpandAllNewPrintJobOutlineSettings.CreateNode	TraverseAllDataVisibleDataPipelineNameppDBPipelinemmHeight�mmLeft mmTop mmWidth� BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport7AutoStopDataPipelineppDBPipelinePrinterSetup.BinName   @%7--1B!14PrinterSetup.DocumentName&   C U S T O M - - +1*7-"4"-!@7H-#12##1)2PrinterSetup.DuplexdpNonePrinterSetup.PaperName   A4 210 x 297 มม.PrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight(� PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize	Version17.03mmColumnWidth DataPipelineNameppDBPipeline TppTitleBandppTitleBand6Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppDetailBandppDetailBand8Background1.Brush.StylebsClearBackground2.Brush.StylebsClearmmBottomOffset mmHeight�� mmPrintPosition  TppShape
ppShape161DesignLayerppDesignLayer8UserNameShape161Brush.Color	clSkyBluemmHeight�mmLeft�mmTopM	mmWidth�� BandType	LayerNameForeground5  TppLabel
ppLabel375DesignLayerppDesignLayer8UserNameLabel375Caption   33+I2Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop5%mmWidth�3BandType	LayerNameForeground5  	TppDBText
ppDBText31DesignLayerppDesignLayer8UserName	DBText101AutoSize	Border.BorderPositionsbpBottom Border.StylepsDot	DataFieldpnameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�VmmTop5%mmWidth"BandType	LayerNameForeground5  TppLabel
ppLabel376DesignLayerppDesignLayer8UserNameLabel376Caption!   A-#L!2#9A%A  S e l f   i s o l a t i o n Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftQ  mmTopM	mmWidthz�  BandType	LayerNameForeground5  TppLabel
ppLabel377DesignLayerppDesignLayer8UserNameLabel377Caption   
7H-  -   *8%Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLefto�  mmTop5%mmWidth�3BandType	LayerNameForeground5  	TppDBText
ppDBText32DesignLayerppDesignLayer8UserNameDBText32AutoSize	Border.BorderPositionsbpBottom 	DataFieldptname2DataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeftO�  mmTop5%mmWidth#BandType	LayerNameForeground5  TppLabel
ppLabel378DesignLayerppDesignLayer8UserNameLabel378Caption   -2"8Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�$ mmTop5%mmWidth�BandType	LayerNameForeground5  	TppDBText
ppDBText33DesignLayerppDesignLayer8UserNameDBText33AutoSize	Border.StylepsDot	DataFieldage_yDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeftK mmTop5%mmWidth"BandType	LayerNameForeground5  TppLabel
ppLabel379DesignLayerppDesignLayer8UserNameLabel309Caption   5Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop5%mmWidthEBandType	LayerNameForeground5  TppLabel
ppLabel380DesignLayerppDesignLayer8UserNameLabel380CaptionIDFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop%BmmWidthgBandType	LayerNameForeground5  	TppDBText
ppDBText35DesignLayerppDesignLayer8UserNameDBText35AutoSize		DataFieldcidDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�/mmTop%BmmWidth"BandType	LayerNameForeground5  TppLabel
ppLabel381DesignLayerppDesignLayer8UserNameLabel381Caption   I3+1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop_mmWidth>&BandType	LayerNameForeground5  	TppDBText
ppDBText36DesignLayerppDesignLayer8UserNameDBText36AutoSize	Border.StylepsDot	DataFieldbwDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft{LmmTop_mmWidth#BandType	LayerNameForeground5  TppLabel
ppLabel382DesignLayerppDesignLayer8UserNameLabel382Caption   4B%#1!Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�rmmTop_mmWidthW)BandType	LayerNameForeground5  TppLabel
ppLabel383DesignLayerppDesignLayer8UserNameLabel383Caption   *H'*9Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft��  mmTop_mmWidth>&BandType	LayerNameForeground5  	TppDBText
ppDBText37DesignLayerppDesignLayer8UserNameDBText37AutoSize	Border.StylepsDot	DataFieldhtDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeftY mmTop_mmWidth#BandType	LayerNameForeground5  TppLabel
ppLabel384DesignLayerppDesignLayer8UserNameLabel384Caption	   @4@!#Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�% mmTop_mmWidth�4BandType	LayerNameForeground5  TppLabel
ppLabel385DesignLayerppDesignLayer8UserNameLabel385Caption   B##031'Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop|mmWidth?EBandType	LayerNameForeground5  TppLabel
ppLabel386DesignLayerppDesignLayer8UserNameLabel386Caption   '15H#2%  A T K Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop��  mmWidth/bBandType	LayerNameForeground5  TppLabel
ppLabel387DesignLayerppDesignLayer8UserNameLabel387Caption   '15H@#4H!  S I Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop�  mmWidth�8BandType	LayerNameForeground5  TppLabel
ppLabel388DesignLayerppDesignLayer8UserNameLabel388Caption   -22#181Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop��  mmWidthYHBandType	LayerNameForeground5  TppLabel
ppLabel389DesignLayerppDesignLayer8UserNameLabel389Captiond....................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft$�  mmTop`*mmWidth6 BandType	LayerNameForeground5  TppLabel
ppLabel390DesignLayerppDesignLayer8UserNameLabel46Caption......................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�; mmTop`*mmWidth7DBandType	LayerNameForeground5  TppLabel
ppLabel391DesignLayerppDesignLayer8UserNameLabel391Caption.......................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�QmmTop`*mmWidthPGBandType	LayerNameForeground5  TppLabel
ppLabel392DesignLayerppDesignLayer8UserNameLabel392Caption'.......................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftq,mmTopHFmmWidth�xBandType	LayerNameForeground5  TppLabel
ppLabel393DesignLayerppDesignLayer8UserNameLabel393Caption............Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftYHmmTop8cmmWidth5%BandType	LayerNameForeground5  TppLabel
ppLabel394DesignLayerppDesignLayer8UserNameLabel502Caption............Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�  mmTop8cmmWidth5%BandType	LayerNameForeground5  TppLabel
ppLabel395DesignLayerppDesignLayer8UserNameLabel395CaptionP................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftIemmTop(�  mmWidth�  BandType	LayerNameForeground5  TppLabel
ppLabel396DesignLayerppDesignLayer8UserNameLabel396Caption*..........................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftv�  mmTop�  mmWidth:�  BandType	LayerNameForeground5  TppLabel
ppLabel397DesignLayerppDesignLayer8UserNameLabel397Caption7.......................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�YmmTop	�  mmWidth��  BandType	LayerNameForeground5  TppLabel
ppLabel398DesignLayerppDesignLayer8UserNameLabel398Caption�.................................................................................................................................................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�[mmTop��  mmWidth]� BandType	LayerNameForeground5  	TppDBText
ppDBText38DesignLayerppDesignLayer8UserNameDBText38AutoSize	Border.StylepsDot	DataFieldpatient_clinicDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft:�  mmTop|mmWidth�PBandType	LayerNameForeground5  TppShape
ppShape162DesignLayerppDesignLayer8UserNameShape162Brush.Color	cl3DLightmmHeight�mmLeft�mmTop�  mmWidth�� BandType	LayerNameForeground5  TppLabel
ppLabel399DesignLayerppDesignLayer8UserNameLabel399Caption   #0@!4-22#    4 8   
1H'B!Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftR mmTop�  mmWidthw�  BandType	LayerNameForeground5  TppLabel
ppLabel400DesignLayerppDesignLayer8UserNameLabel400Caption   '15H#  D / C Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop� mmWidthaIBandType	LayerNameForeground5  TppLabel
ppLabel401DesignLayerppDesignLayer8UserNameLabel1Caption   %2##0@!4-22#@7I-IFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop�0 mmWidth��  BandType	LayerNameForeground5  	TppDBText
ppDBText39DesignLayerppDesignLayer8UserNameDBText39AutoSize		DataField	prov_at48DataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft	�  mmTop�0 mmWidth"BandType	LayerNameForeground5  TppLabel
ppLabel402DesignLayerppDesignLayer8UserNameLabel2Caption   '2!#0*LC+I  #.   4H-%1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop�M mmWidth�  BandType	LayerNameForeground5  	TppDBText
ppDBText40DesignLayerppDesignLayer8UserNameDBText40AutoSize		DataFieldwish_hosDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft��  mmTop�M mmWidth"BandType	LayerNameForeground5  TppLabel
ppLabel403DesignLayerppDesignLayer8UserNameLabel403CaptionProgress noteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop�j mmWidth�TBandType	LayerNameForeground5  TppDBRichTextppDBRichText1DesignLayerppDesignLayer8UserNameDBRichText1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Border.BorderPositionsbpLeftbpTopbpRightbpBottom Border.StylepsDotBorder.Visible	ExportRTFAsBitmap	DataFieldprogress_note48DataPipelineppDBPipelineRemoveEmptyLinesTransparent	DataPipelineNameppDBPipelinemmHeight�ZmmLeft�mmTop�� mmWidth�� BandType	LayerNameForeground5mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight   TppLabel
ppLabel404DesignLayerppDesignLayer8UserNameLabel602Caption
ManagementFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop�� mmWidth�PBandType	LayerNameForeground5  	TppDBText
ppDBText41DesignLayerppDesignLayer8UserNameDBText41AutoSize		DataFieldmanagement48DataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style ParentDataPipelineTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�rmmTop�� mmWidth"BandType	LayerNameForeground5  TppLabel
ppLabel405DesignLayerppDesignLayer8UserNameLabel405Caption(........................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftIemmTop mmWidth|BandType	LayerNameForeground5  TppLabel
ppLabel406DesignLayerppDesignLayer8UserNameLabel406Caption�....................................................................................................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�  mmTop6 mmWidth. BandType	LayerNameForeground5  TppLabel
ppLabel407DesignLayerppDesignLayer8UserNameLabel407Caption�....................................................................................................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLefth�  mmTop S mmWidth. BandType	LayerNameForeground5  TppLabel
ppLabel408DesignLayerppDesignLayer8UserNameLabel408Caption�....................................................................................................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�lmmTop�� mmWidth. BandType	LayerNameForeground5  TppVariableppVariable40DesignLayerppDesignLayer8UserName
Variable17BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop�  mmWidth?BandType	LayerNameForeground5  TppVariableppVariable41DesignLayerppDesignLayer8UserName
Variable18BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTopֳ  mmWidth?BandType	LayerNameForeground5  TppLabel
ppLabel409DesignLayerppDesignLayer8UserNameLabel409Captionclinical improveFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop�/ mmWidth^BandType	LayerNameForeground5  TppVariableppVariable42DesignLayerppDesignLayer8UserNameVariable202BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�lmmTop��  mmWidth?BandType	LayerNameForeground5  TppVariableppVariable43DesignLayerppDesignLayer8UserName
Variable21BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�nmmTop� mmWidth?BandType	LayerNameForeground5  TppShape
ppShape163DesignLayerppDesignLayer8UserNameShape163Brush.ColorclActiveBordermmHeight�mmLeft�mmTop  mmWidth�� BandType	LayerNameForeground5  TppLabel
ppLabel410DesignLayerppDesignLayer8UserNameLabel410Caption   #0@!4-22#+%1  4 8   
1H'B!Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftR mmTop  mmWidth��  BandType	LayerNameForeground5  TppLabel
ppLabel411DesignLayerppDesignLayer8UserNameLabel411CaptionProgress noteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop�( mmWidth�TBandType	LayerNameForeground5  TppDBRichTextppDBRichText2DesignLayerppDesignLayer8UserNameDBRichText2Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Border.BorderPositionsbpLeftbpTopbpRightbpBottom Border.StylepsDotBorder.Visible	ExportRTFAsBitmap	DataFieldprogress_note_last48DataPipelineppDBPipelineRemoveEmptyLinesTransparent	DataPipelineNameppDBPipelinemmHeight�ZmmLeft�mmTop�D mmWidth�� BandType	LayerNameForeground5mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight   TppLabel
ppLabel412DesignLayerppDesignLayer8UserNameLabel412Caption
ManagementFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�mmTopԠ mmWidth�PBandType	LayerNameForeground5  TppDBRichTextppDBRichText3DesignLayerppDesignLayer8UserNameDBRichText3Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Border.BorderPositionsbpLeftbpTopbpRightbpBottom Border.StylepsDotBorder.Visible	ExportRTFAsBitmap	DataFieldmanagement_last48DataPipelineppDBPipelineRemoveEmptyLinesTransparent	DataPipelineNameppDBPipelinemmHeightjJmmLeft�mmTop�� mmWidth�� BandType	LayerNameForeground5mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight   TppSystemVariableppSystemVariable1DesignLayerppDesignLayer8UserNameSystemVariable1VarType
vtDateTimeDisplayFormatdd/mmm/eeee hh:mm:ssFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft?EmmTop(� mmWidth/bBandType	LayerNameForeground5  TppLabel
ppLabel413DesignLayerppDesignLayer8UserNameLabel413Caption   4!L@-*2#Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft^mmTop(� mmWidth�6BandType	LayerNameForeground5  TppLabel
ppLabel414DesignLayerppDesignLayer8UserNameLabel704CaptionV   ลงชื่อพยาบาล .................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft8cmmTop� mmWidth`�  BandType	LayerNameForeground5  TppLabel
ppLabel415DesignLayerppDesignLayer8UserNameLabel415Captionm   ลงชื่อแพทย์เจ้าของไข้ .............................................Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftQ� mmTop� mmWidth7�  BandType	LayerNameForeground5  TppLabel
ppLabel416DesignLayerppDesignLayer8UserNameLabel416CaptionW   เลขที่ใบอนุญาต ............................................Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft8cmmTop� mmWidth$�  BandType	LayerNameForeground5  TppLabel
ppLabel417DesignLayerppDesignLayer8UserNameLabel417Caption_   เลขใบประกอบวิชาชีพ ........................................Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftQ� mmTop� mmWidth��  BandType	LayerNameForeground5  TppLabel
ppLabel418DesignLayerppDesignLayer8UserNameLabel418Caption=(...........................................................)Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTop� mmWidth4�  BandType	LayerNameForeground5  TppLabel
ppLabel419DesignLayerppDesignLayer8UserNameLabel419Caption;(.........................................................)Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop� mmWidth�  BandType	LayerNameForeground5  TppLabel
ppLabel420DesignLayerppDesignLayer8UserNameLabel420CaptionU   ลงชื่อผู้ป่วย .............................................Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft mmTopCH mmWidth��  BandType	LayerNameForeground5  TppLabel
ppLabel421DesignLayerppDesignLayer8UserNameLabel421CaptionD(..................................................................)Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftJ mmTop*d mmWidth��  BandType	LayerNameForeground5  TppVariableppVariable45DesignLayerppDesignLayer8UserName
Variable45BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft��  mmTopؗ mmWidth?BandType	LayerNameForeground5  TppVariableppVariable48DesignLayerppDesignLayer8UserName
Variable48BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft��  mmTop�� mmWidth?BandType	LayerNameForeground5  TppVariableppVariable49DesignLayerppDesignLayer8UserName
Variable24BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�> mmTopؗ mmWidth?BandType	LayerNameForeground5  TppVariableppVariable51DesignLayerppDesignLayer8UserName
Variable51BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�> mmTop�� mmWidth?BandType	LayerNameForeground5  TppVariableppVariable58DesignLayerppDesignLayer8UserName
Variable58BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�h mmTop _ mmWidth?BandType	LayerNameForeground5   TppSummaryBandppSummaryBand8Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TraCodeModuleraCodeModule3 TraProgramInforaProgramInfo88raClassNameTraEventHandlerraProgram.ProgramNameVariable202OnCalcraProgram.ProgramTypettProcedureraProgram.Source  procedure Variable202OnCalc(var Value: Variant);
begin

  Value :=  GetSQLStringData('select if(cc is null or cc ="","ยังไม่ซักประวัติ",cc) '+
           ' as cc from opdscreen where vn = "'+DBPipeline['vn']+'" ');

end;
raProgram.ComponentNameVariable202raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo89raClassNameTraEventHandlerraProgram.ProgramNameVariable17OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable17OnCalc(var Value: Variant);
begin

 if length(DBPipeline['vstdate']) <> 0 then
  Value := FormatThaiDate('d mmmm yyyy',DBPipeline['vstdate'])
  else
  Value := '';

end;
raProgram.ComponentName
Variable17raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo90raClassNameTraEventHandlerraProgram.ProgramNameVariable18OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable18OnCalc(var Value: Variant);
begin

 if length(DBPipeline['vstdate']) <> 0 then
  Value := FormatThaiDate('d mmmm yyyy',DBPipeline['vstdate'])
  else
  Value := '';

end;
raProgram.ComponentName
Variable18raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo91raClassNameTraEventHandlerraProgram.ProgramNameVariable21OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable21OnCalc(var Value: Variant);
begin

  if length(DBPipeline['dc_date']) <> 0 then
  Value := FormatThaiDate('d mmmm yyyy',DBPipeline['dc_date'])
  else
  Value := '';

end;
raProgram.ComponentName
Variable21raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo92raClassNameTraEventHandlerraProgram.ProgramNameVariable24OnCalcraProgram.ProgramTypettProcedureraProgram.Sources  procedure Variable24OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select (select doctor_fullname from prs_hici_doctor where doctor_code = ds.doctor_code) as dname from opduser  o '+
'INNER JOIN doctor d on d.code = o.doctorcode '+
'INNER JOIN prs_doctor_select ds on ds.nurse_code = d.code '+
'where loginname ="'+getcurrentuser+'"');

end;
raProgram.ComponentName
Variable24raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo95raClassNameTraEventHandlerraProgram.ProgramNameVariable51OnCalcraProgram.ProgramTypettProcedureraProgram.Sourcej  procedure Variable51OnCalc(var Value: Variant);
begin
  Value :=    GetSQLStringData('select (select liceneno from prs_hici_doctor where doctor_code = ds.doctor_code) as dname from opduser  o '+
'INNER JOIN doctor d on d.code = o.doctorcode '+
'INNER JOIN prs_doctor_select ds on ds.nurse_code = d.code '+
'where loginname ="'+getcurrentuser+'"');

end;
raProgram.ComponentName
Variable51raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo96raClassNameTraEventHandlerraProgram.ProgramNameVariable45OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable45OnCalc(var Value: Variant);
begin
 Value := GetSQLStringData('select u.name from opduser u  where '+
             ' u.loginname="'+GetCurrentUser+'" ');

end;
raProgram.ComponentName
Variable45raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo97raClassNameTraEventHandlerraProgram.ProgramNameVariable48OnCalcraProgram.ProgramTypettProcedureraProgram.Source  procedure Variable48OnCalc(var Value: Variant);
begin


           Value := GetSQLStringData('select d.licenseno from opduser u left join doctor d '+
           ' on u.doctorcode=d.`code`  where '+
             ' u.loginname="'+GetCurrentUser+'" ');



end;
raProgram.ComponentName
Variable48raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo98raClassNameTraEventHandlerraProgram.ProgramNameVariable58OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable58OnCalc(var Value: Variant);
begin

   Value :=   GetSQLStringData(' SELECT if("'+DBPipeline['age_y']+'" <18,informname, "'+DBPipeline['fullname']+'" ) from  patient p '+

  '  where p.hn = "'+DBPipeline['hn']+'" ');

end;
raProgram.ComponentName
Variable58raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos      TppDesignLayersppDesignLayers8 TppDesignLayerppDesignLayer8UserNameForeground5	LayerTypeltBandedIndex      TppSubReportppSubReport2DesignLayerppDesignLayer1UserName
SubReport2	ExpandAllNewPrintJobOutlineSettings.CreateNode	TraverseAllDataVisibleDataPipelineNameppDBPipelinemmHeight�mmLeft mmTopW)mmWidth� BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport2AutoStopDataPipelineppDBPipelinePrinterSetup.BinName   @%7--1B!14PrinterSetup.DocumentName&   C U S T O M - - +1*7-"4"-!@7H-#12##1)2PrinterSetup.DuplexdpNonePrinterSetup.PaperName   A4 210 x 297 มม.PrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight(� PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize	Version17.03mmColumnWidth DataPipelineNameppDBPipeline TppTitleBandppTitleBand2Background.Brush.StylebsClearmmBottomOffset mmHeight�x mmPrintPosition  TppLabel
ppLabel217DesignLayerppDesignLayer3UserName	Label3401CaptionL   B'41 9   !511"@*5H"    B#"22%!5@5"#-#1D!H-  A"L42#2C+I#1)2A  Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�  mmTop�Q mmWidthS� BandType	LayerNameForeground2  TppLabel
ppLabel218DesignLayerppDesignLayer3UserNameLabel218HyperlinkEnabledCaption   C#1#-A"LFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeightmmLeft)9 mmTop.CmmWidth�vBandType	LayerNameForeground2  TppLabel
ppLabel219DesignLayerppDesignLayer3UserNameLabel219HyperlinkEnabledCaption   I2@I2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftݕ  mmTop��  mmWidthq,BandType	LayerNameForeground2  TppLabel
ppLabel220DesignLayerppDesignLayer3UserNameLabel220HyperlinkEnabledCaption:   B#"22%#2*2  6 0 2   !. 2   . 1A-  -. #2*2  . *8#4#L  3 2 1 4 0 Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�  mmTop��  mmWidth�� BandType	LayerNameForeground2  TppLabel
ppLabel221DesignLayerppDesignLayer3UserNameLabel221HyperlinkEnabledCaption3   A"L#42  @GA"L6HDI#16I0@5"A%0DI#1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTop��  mmWidth�3 BandType	LayerNameForeground2  TppLabel
ppLabel222DesignLayerppDesignLayer3UserNameLabel222HyperlinkEnabledCaptionP   -8!14C+IDI@G  9I#0-B#(4%LA181
1I  1   *22@'
##!  C-82@%5H  Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�smmTop��  mmWidth�� BandType	LayerNameForeground2  TppLabel
ppLabel223DesignLayerppDesignLayer3UserNameLabel223HyperlinkEnabledCaption   DI32##'#H22"-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftݕ  mmTop �  mmWidth�  BandType	LayerNameForeground2  TppLabel
ppLabel224DesignLayerppDesignLayer3UserNameLabel224HyperlinkEnabledCaption=   22##'#1)29I!5
7H-I2IA%I'    -C+I'2!@+G1H-D5IFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftݕ  mmTop5 mmWidth�c BandType	LayerNameForeground2  	TppDBText
ppDBText21DesignLayerppDesignLayer3UserNameDBText21HyperlinkEnabledAutoSize		DataFieldfullnameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�0 mmTop��  mmWidth#BandType	LayerNameForeground2  TppLabel
ppLabel225DesignLayerppDesignLayer3UserNameLabel225HyperlinkEnabledCaption   -2"8Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�  mmTop �  mmWidth�BandType	LayerNameForeground2  	TppDBText
ppDBText22DesignLayerppDesignLayer3UserNameDBText22HyperlinkEnabled	DataFieldage_yDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�: mmTop �  mmWidth�BandType	LayerNameForeground2  TppLabel
ppLabel226DesignLayerppDesignLayer3UserNameLabel226HyperlinkEnabledAutoSizeCaption�   วินิจฉัยโรค..................................................................................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�smmTopT mmWidth�D BandType	LayerNameForeground2  TppLabel
ppLabel227DesignLayerppDesignLayer3UserName	Label3501HyperlinkEnabledCaption   5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�W mmTop �  mmWidthM	BandType	LayerNameForeground2  TppLabel
ppLabel228DesignLayerppDesignLayer3UserNameLabel228HyperlinkEnabledAutoSizeCaption�..............................................................................................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�smmTop�l mmWidth
, BandType	LayerNameForeground2  TppLabel
ppLabel229DesignLayerppDesignLayer3UserNameLabel229HyperlinkEnabledCaption   '#+"82@G@'%2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�  mmTop�� mmWidth�xBandType	LayerNameForeground2  TppLabel
ppLabel230DesignLayerppDesignLayer3UserNameLabel230HyperlinkEnabledCaption"   -#1#-I-'2!I2I@G'2!#4Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftN�  mmTop-� mmWidth
�  BandType	LayerNameForeground2  TppLabel
ppLabel231DesignLayerppDesignLayer3UserNameLabel231HyperlinkEnabledCaption   ( %
7H-) Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�b mmTopA mmWidthF'BandType	LayerNameForeground2  TppLabel
ppLabel232DesignLayerppDesignLayer3UserNameLabel232HyperlinkEnabledCaption(Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLefth~ mmTopC2 mmWidth"BandType	LayerNameForeground2  TppLabel
ppLabel233DesignLayerppDesignLayer3UserNameLabel233HyperlinkEnabledCaption)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�A mmTopC2 mmWidth#BandType	LayerNameForeground2  TppLabel
ppLabel234DesignLayerppDesignLayer3UserNameLabel234HyperlinkEnabledCaption8   ( C#1#-A"L0*!9#L0I-DI#12##01#2@H21I) Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft��  mmTop| mmWidthf_ BandType	LayerNameForeground2  TppLabel
ppLabel235DesignLayerppDesignLayer3UserNameLabel235HyperlinkEnabledCaption   @%5HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop�qmmWidth"BandType	LayerNameForeground2  TppLabel
ppLabel236DesignLayerppDesignLayer3UserNameLabel236AutoSizeCaptionLabel236Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size
Font.Style Transparent	mmHeight mmLeftw� mmTop~�  mmWidth"BandType	LayerNameForeground2  TppLabel
ppLabel237DesignLayerppDesignLayer3UserName	Label3601AutoSizeCaption	Label3601Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameArial	Font.Size
Font.Style Transparent	mmHeight mmLeft�� mmTop� mmWidth"BandType	LayerNameForeground2  TppLabel
ppLabel238DesignLayerppDesignLayer3UserNameLabel238HyperlinkEnabledCaption*..........................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeftX� mmTopR mmWidth:�  BandType	LayerNameForeground2  TppLabel
ppLabel239DesignLayerppDesignLayer3UserNameLabel239HyperlinkEnabledCaption   A"L9I#'Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�% mmTopA mmWidthjJBandType	LayerNameForeground2  	TppDBText
ppDBText23DesignLayerppDesignLayer3UserNameDBText23AutoSize		DataField
inputdate1DataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeftu mmTop�� mmWidthGFBandType	LayerNameForeground2  TppLabel
ppLabel240DesignLayerppDesignLayer3UserNameLabel240Caption   '1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�) mmTop�� mmWidth�BandType	LayerNameForeground2  TppLabel
ppLabel241DesignLayerppDesignLayer3UserNameLabel241Caption   1IAH'15HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft\? mmTop�� mmWidth�8BandType	LayerNameForeground2  TppLabel
ppLabel242DesignLayerppDesignLayer3UserNameLabel242HyperlinkEnabledCaption#...................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftu mmTopު mmWidth�uBandType	LayerNameForeground2  TppLabel
ppLabel243DesignLayerppDesignLayer3UserNameLabel243Caption
   6  '15HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft)� mmTop�� mmWidthy-BandType	LayerNameForeground2  TppLabel
ppLabel244DesignLayerppDesignLayer3UserNameLabel244AutoSizeCaptionHNFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	VerticalAlignmentavCentermmHeight�mmLeft�f mmTop�  mmWidth�BandType	LayerNameForeground2  	TppDBText
ppDBText24DesignLayerppDesignLayer3UserNameDBText24AutoSize		DataFieldhnDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeftӁ mmTop��  mmWidth"BandType	LayerNameForeground2  TppVariableppVariable31DesignLayerppDesignLayer3UserName
Variable31AutoSizeBlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeftB�  mmTop�# mmWidth�9BandType	LayerNameForeground2  TppLabel
ppLabel245DesignLayerppDesignLayer3UserNameLabel245HyperlinkEnabledCaption'   FM-MSO-001  ประกาศใช้Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft{� mmTop�3 mmWidthu�  BandType	LayerNameForeground2  TppLabel
ppLabel246DesignLayerppDesignLayer3UserNameLabel246HyperlinkEnabledCaption2     *25H#'    B#"22%#2*2    1+'1*8#4#L      Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�smmTop� mmWidthC BandType	LayerNameForeground2  TppLabel
ppLabel247DesignLayerppDesignLayer3UserName	Label3701HyperlinkEnabledCaption!   2@-*2#8 2    (9"L128 2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft{� mmTop:G mmWidth��  BandType	LayerNameForeground2  	TppDBText
ppDBText25DesignLayerppDesignLayer3UserNameDBText25AutoSize		DataFieldd_dayDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeftq,mmTop�f mmWidth>&BandType	LayerNameForeground2  TppMemoppMemo1DesignLayerppDesignLayer3UserNameMemo1CaptionMemo1CharWrapFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style RemoveEmptyLinesTextAlignment
taCenteredTransparent	VisiblemmHeight"mmLeftv�  mmTops� mmWidth�7BandType	LayerNameForeground2mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading   TppLabel
ppLabel248DesignLayerppDesignLayer3UserNameLabel248CaptionH   H o m e   i s o l a t i o n   181-22#56I  *2!2#%1DC
I
5'42!A''45C+!HDIFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�  mmTop�i mmWidthR� BandType	LayerNameForeground2  TppVariableppVariable32DesignLayerppDesignLayer3UserName
Variable32BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�� mmTopDQ mmWidth6DBandType	LayerNameForeground2  TppVariableppVariable33DesignLayerppDesignLayer3UserName
Variable33BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTop�� mmWidth7DBandType	LayerNameForeground2  TppVariableppVariable34DesignLayerppDesignLayer3UserName
Variable34BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�# mmTop�� mmWidth{LBandType	LayerNameForeground2  TppVariableppVariable35DesignLayerppDesignLayer3UserName
Variable35BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�[ mmTop��  mmWidth7DBandType	LayerNameForeground2  TppVariableppVariable52DesignLayerppDesignLayer3UserName
Variable52BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft�� mmTopC2 mmWidth6DBandType	LayerNameForeground2  TppLabel
ppLabel249DesignLayerppDesignLayer3UserNameLabel249HyperlinkEnabledCaption10Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop�� mmWidth�BandType	LayerNameForeground2  TppLabel
ppLabel250DesignLayerppDesignLayer3UserNameLabel250HyperlinkEnabledCaption'.......................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTopު mmWidth�xBandType	LayerNameForeground2  TppLabel
ppLabel251DesignLayerppDesignLayer3UserNameLabel251HyperlinkEnabledCaption
..........Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTopު mmWidthBandType	LayerNameForeground2  TmyCheckBoxmyCheckBox7DesignLayerppDesignLayer3UserNameCheckBox801	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�ymmTop�� mmWidth�BandType	LayerNameForeground2  TppVariableppVariable53DesignLayerppDesignLayer3UserNameVariable501BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�> mmTop�qmmWidth�MBandType	LayerNameForeground2  TppVariableppVariable54DesignLayerppDesignLayer3UserName
Variable54BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftp�  mmTop��  mmWidth6DBandType	LayerNameForeground2  TppLabel
ppLabel273DesignLayerppDesignLayer3UserNameLabel273HyperlinkEnabledCaption   7I5H+H'"#42#  : Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft mmTopb mmWidth�RBandType	LayerNameForeground2  	TppDBText
ppDBText49DesignLayerppDesignLayer3UserNameDBText49AutoSize		DataFieldhosnameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�XmmTopb mmWidthBandType	LayerNameForeground2   TppDetailBandppDetailBand3Background1.Brush.StylebsClearBackground2.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppSummaryBandppSummaryBand2Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TraCodeModuleraCodeModule4 TraProgramInforaProgramInfo99raClassNameTraEventHandlerraProgram.ProgramNameVariable501OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable501OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select doctor_cert_id from wsc_covid_queue where vn ="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentNameVariable501raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo100raClassNameTraEventHandlerraProgram.ProgramNameVariable54OnCalcraProgram.ProgramTypettProcedureraProgram.Sources  procedure Variable54OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select (select doctor_fullname from prs_hici_doctor where doctor_code = ds.doctor_code) as dname from opduser  o '+
'INNER JOIN doctor d on d.code = o.doctorcode '+
'INNER JOIN prs_doctor_select ds on ds.nurse_code = d.code '+
'where loginname ="'+getcurrentuser+'"');

end;
raProgram.ComponentName
Variable54raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo101raClassNameTraEventHandlerraProgram.ProgramNameVariable35OnCalcraProgram.ProgramTypettProcedureraProgram.Sourcej  procedure Variable35OnCalc(var Value: Variant);
begin
  Value :=    GetSQLStringData('select (select liceneno from prs_hici_doctor where doctor_code = ds.doctor_code) as dname from opduser  o '+
'INNER JOIN doctor d on d.code = o.doctorcode '+
'INNER JOIN prs_doctor_select ds on ds.nurse_code = d.code '+
'where loginname ="'+getcurrentuser+'"');

end;
raProgram.ComponentName
Variable35raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo102raClassNameTraEventHandlerraProgram.ProgramNameVariable33OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable33OnCalc(var Value: Variant);
begin

 if length(DBPipeline['vstdate']) <> 0 then
  Value := FormatThaiDate('d mmmm yyyy',DBPipeline['vstdate'])
  else
  Value := '';





end;
raProgram.ComponentName
Variable33raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo103raClassNameTraEventHandlerraProgram.ProgramNameVariable34OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable34OnCalc(var Value: Variant);
begin



 if length(DBPipeline['dc_date2']) <> 0 then
  Value := FormatThaiDate('d mmmm yyyy',DBPipeline['dc_date2'])
  else
  Value := '';






end;
raProgram.ComponentName
Variable34raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo104raClassNameTraEventHandlerraProgram.ProgramNameVariable52OnCalcraProgram.ProgramTypettProcedureraProgram.Sources  procedure Variable52OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select (select doctor_fullname from prs_hici_doctor where doctor_code = ds.doctor_code) as dname from opduser  o '+
'INNER JOIN doctor d on d.code = o.doctorcode '+
'INNER JOIN prs_doctor_select ds on ds.nurse_code = d.code '+
'where loginname ="'+getcurrentuser+'"');

end;
raProgram.ComponentName
Variable52raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo105raClassNameTraEventHandlerraProgram.ProgramNameVariable32OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable32OnCalc(var Value: Variant);
begin

 if length(DBPipeline['dc_date']) <> 0 then
  Value := FormatThaiDate('d mmmm yyyy',DBPipeline['dc_date'])
  else
  Value := '';



end;
raProgram.ComponentName
Variable32raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos      TppDesignLayersppDesignLayers3 TppDesignLayerppDesignLayer3UserNameForeground2	LayerTypeltBandedIndex      TppSubReportppSubReport3DesignLayerppDesignLayer1UserName
SubReport3	ExpandAllNewPrintJobOutlineSettings.CreateNode	ShiftRelativeToppSubReport6TraverseAllDataDataPipelineNameppDBPipelinemmHeight�mmLeft mmTop>mmWidth� BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport3AutoStopDataPipelineppDBPipelinePrinterSetup.BinName   @%7--1B!14PrinterSetup.DocumentName&   C U S T O M - - +1*7-"4"-!@7H-#12##1)2PrinterSetup.DuplexdpNonePrinterSetup.PaperName   A4 210 x 297 มม.PrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom PrinterSetup.mmMarginLeft�PrinterSetup.mmMarginRight�PrinterSetup.mmMarginTop�PrinterSetup.mmPaperHeight(� PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize	Version17.03mmColumnWidth DataPipelineNameppDBPipeline TppTitleBandppTitleBand3Background.Brush.StylebsClearmmBottomOffset mmHeightG� mmPrintPosition  TppShape	ppShape80DesignLayerppDesignLayer4UserName	Shape1102Brush.ColorclMenummHeight mmLeftmmTopFp mmWidth� BandType	LayerNameForeground3  TppShape
ppShape111DesignLayerppDesignLayer4UserName	Shape1101Brush.ColorclInactiveCaptionmmHeight�mmLeft0mmTop��  mmWidthI BandType	LayerNameForeground3  TppShape
ppShape110DesignLayerppDesignLayer4UserNameShape110Brush.ColorclInfoBkmmHeightM(mmLeft�mmTop[�  mmWidthI BandType	LayerNameForeground3  TppLineppLine86DesignLayerppDesignLayer4UserNameLine86	Pen.WidthWeight       ��?mmHeight�mmLeft4mmTop��  mmWidth�  BandType	LayerNameForeground3  TppLineppLine87DesignLayerppDesignLayer4UserNameLine87	Pen.WidthPositionlpBottomWeight       ��?mmHeight�mmLeft+mmTop��  mmWidth� BandType	LayerNameForeground3  TppLineppLine89DesignLayerppDesignLayer4UserNameLine89	Pen.WidthPositionlpLeftWeight       ��?mmHeight`� mmLeft� mmTop��  mmWidth<BandType	LayerNameForeground3  TppLabel
ppLabel285DesignLayerppDesignLayer4UserNameLabel285Caption`   น้ำหนัก                                         Kg.                               Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�& mmTop|�  mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel286DesignLayerppDesignLayer4UserNameLabel286CaptionO   ส่วนสูง                                          cm.             Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�& mmTop�  mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel287DesignLayerppDesignLayer4UserNameLabel287Caption1BT                                              CFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�& mmTop��  mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel288DesignLayerppDesignLayer4UserNameLabel288CaptionKPR                                             /min                        Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�& mmTopT�  mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel289DesignLayerppDesignLayer4UserNameLabel104CaptionHRR                                           /min                       Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�' mmTop"�  mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel290DesignLayerppDesignLayer4UserNameLabel290CaptionBP                 Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�' mmTop� mmWidth"BandType	LayerNameForeground3  TppLabel
ppLabel291DesignLayerppDesignLayer4UserNameLabel291Captionb   ประจำเดือนครั้งสุดท้าย(LPM)...........................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�) mmTop�' mmWidth��  BandType	LayerNameForeground3  TppLineppLine90DesignLayerppDesignLayer4UserNameLine90	Pen.WidthWeight       ��?mmHeight�mmLeftA mmTop�� mmWidth~�BandType	LayerNameForeground3  TppLineppLine92DesignLayerppDesignLayer4UserNameLine92	Pen.WidthPositionlpBottomWeight       ��?mmHeight+mmLeft� mmTop�� mmWidth@�  BandType	LayerNameForeground3  TppLineppLine93DesignLayerppDesignLayer4UserNameLine103	Pen.WidthWeight       ��?mmHeight�mmLeftA mmTop� mmWidth��  BandType	LayerNameForeground3  TppLineppLine94DesignLayerppDesignLayer4UserNameLine94	Pen.WidthWeight       ��?mmHeight�mmLeftJ mmTop; mmWidth��  BandType	LayerNameForeground3  TppLineppLine95DesignLayerppDesignLayer4UserNameLine95	Pen.WidthPositionlpBottomWeight       ��?mmHeight�mmLeftA mmTop�G mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel292DesignLayerppDesignLayer4UserNameLabel292Caption$   2#1#0'14@7H-#0@!4-22#A##1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�4mmTop��  mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel293DesignLayerppDesignLayer4UserNameLabel293Caption   #'#H22"A##1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�o mmTop��  mmWidth�XBandType	LayerNameForeground3  TppLabel
ppLabel294DesignLayerppDesignLayer4UserNameLabel294Caption   3*1H2##1)2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLefttv mmTop��  mmWidthABandType	LayerNameForeground3  TppLabel
ppLabel295DesignLayerppDesignLayer4UserNameLabel304Caption
   ผล LabFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�� mmTopj@ mmWidth5%BandType	LayerNameForeground3  TppLabel
ppLabel296DesignLayerppDesignLayer4UserNameLabel296Caption   %#'1#-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftt mmTop3� mmWidthsKBandType	LayerNameForeground3  TppLabel
ppLabel298DesignLayerppDesignLayer4UserNameLabel298Caption   A"4"-!@I2#12##1)2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�H mmTopȮ mmWidth�wBandType	LayerNameForeground3  TppLineppLine96DesignLayerppDesignLayer4UserNameLine96	Pen.WidthPositionlpBottomWeight       ��?mmHeight"mmLeft� mmTop=�  mmWidth@�  BandType	LayerNameForeground3  TppLabel
ppLabel300DesignLayerppDesignLayer4UserNameLabel300CaptionChest X-RayFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�' mmTopV mmWidth�:BandType	LayerNameForeground3  TppLabel
ppLabel301DesignLayerppDesignLayer4UserNameLabel1CaptionRapid antigen testFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�I mmTop�� mmWidth/bBandType	LayerNameForeground3  TppLabel
ppLabel302DesignLayerppDesignLayer4UserNameLabel2CaptionB   วันที่ตรวจ....................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�/ mmTop�� mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel303DesignLayerppDesignLayer4UserNameLabel3Caption=   RTPCR ถ้ามี ผล.................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�I mmTop$� mmWidthı  BandType	LayerNameForeground3  TppLabel
ppLabel304DesignLayerppDesignLayer4UserNameLabel4CaptionS   วันที่ตรวจ.....................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�' mmTop mmWidth��  BandType	LayerNameForeground3  TppLineppLine97DesignLayerppDesignLayer4UserNameLine97	Pen.WidthWeight       ��?mmHeightmmLeft+mmTopo mmWidth� BandType	LayerNameForeground3  TppLabel
ppLabel305DesignLayerppDesignLayer4UserNameLabel305Caption3   I2@I2"4"-!#12##1)2A  O P   W i t h   S e l f   I s o l a t i o n Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	WordWrap	mmHeight�mmLeft�	 mmTop�� mmWidth�  BandType	LayerNameForeground3  TppLabel
ppLabel306DesignLayerppDesignLayer4UserNameLabel306Captionl   ลงชื่อผู้ป่วย/ญาติ........................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft  mmTop�� mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel307DesignLayerppDesignLayer4UserNameLabel307Caption_   ลงชื่อพยาน.................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft  mmTop� mmWidthz�  BandType	LayerNameForeground3  TppLineppLine98DesignLayerppDesignLayer4UserNameLine98	Pen.WidthPositionlpBottomWeight       ��?mmHeight9mmLeft4mmTop� mmWidth�� BandType	LayerNameForeground3  TppLine	ppLine100DesignLayerppDesignLayer4UserNameLine100	Pen.WidthPositionlpBottomWeight       ��?mmHeight0mmLeft"mmTop�2 mmWidth~ BandType	LayerNameForeground3  TppLine	ppLine101DesignLayerppDesignLayer4UserNameLine1	Pen.WidthPositionlpLeftWeight       ��?mmHeight��  mmLeftԔ  mmTop� mmWidth BandType	LayerNameForeground3  TppLabel
ppLabel309DesignLayerppDesignLayer4UserNameLabel5Caption   @+7H-"Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTopȧ mmWidth�BandType	LayerNameForeground3  TppLabel
ppLabel310DesignLayerppDesignLayer4UserNameLabel310Caption   DIFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop�� mmWidthV
BandType	LayerNameForeground3  TppLabel
ppLabel311DesignLayerppDesignLayer4UserNameLabel311Caption
   @G+I2-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTopY� mmWidth�0BandType	LayerNameForeground3  TppLabel
ppLabel312DesignLayerppDesignLayer4UserNameLabel312CaptionResting O2 sat <= 94%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop!� mmWidth�vBandType	LayerNameForeground3  TppLabel
ppLabel313DesignLayerppDesignLayer4UserNameLabel313Caption   -7H  FFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop� mmWidth�BandType	LayerNameForeground3  TppLabel
ppLabel316DesignLayerppDesignLayer4UserNameLabel316Caption   -22#A#I-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft� mmTopX� mmWidthjJBandType	LayerNameForeground3  TppLabel
ppLabel317DesignLayerppDesignLayer4UserNameLabel317Caption   2#9A%#1)2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft��  mmTop`� mmWidth>BandType	LayerNameForeground3  TppLabel
ppLabel318DesignLayerppDesignLayer4UserNameLabel318Caption   -22#A#I-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft!mmTopX� mmWidthjJBandType	LayerNameForeground3  TppLabel
ppLabel319DesignLayerppDesignLayer4UserNameLabel901Caption   2#9A%#1)2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftct mmTopG� mmWidth>BandType	LayerNameForeground3  TppLine	ppLine102DesignLayerppDesignLayer4UserNameLine2	Pen.WidthWeight       ��?mmHeight mmLeft"mmTop� mmWidth� BandType	LayerNameForeground3  	TppDBText
ppDBText51DesignLayerppDesignLayer4UserNameDBText51	DataFieldbwDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeftt mmTop|�  mmWidth$#BandType	LayerNameForeground3  	TppDBText
ppDBText52DesignLayerppDesignLayer4UserNameDBText1	DataFieldhtDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�e mmTop��  mmWidth.CBandType	LayerNameForeground3  	TppDBText
ppDBText54DesignLayerppDesignLayer4UserNameDBText54	DataFieldtemperatureDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�e mmTop��  mmWidth.CBandType	LayerNameForeground3  	TppDBText
ppDBText55DesignLayerppDesignLayer4UserNameDBText55	DataFieldpulseDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�e mmTopn�  mmWidth.CBandType	LayerNameForeground3  	TppDBText
ppDBText59DesignLayerppDesignLayer4UserNameDBText59BlankWhenZero		DataFieldrrDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�e mmTop"�  mmWidth.CBandType	LayerNameForeground3  	TppDBText
ppDBText60DesignLayerppDesignLayer4UserNameDBText60	DataFieldbpdDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft� mmTop� mmWidth!BandType	LayerNameForeground3  	TppDBText
ppDBText61DesignLayerppDesignLayer4UserName	DBText201	DataFieldbpsDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeftU mmTop� mmWidthW)BandType	LayerNameForeground3  TppLine	ppLine106DesignLayerppDesignLayer4UserNameLine106	Pen.WidthPositionlpBottomWeight       ��?mmHeight��mmLeftmmTopG� mmWidth% BandType	LayerNameForeground3  TppLine	ppLine107DesignLayerppDesignLayer4UserNameLine107	Pen.WidthWeight       ��?mmHeight<mmLeftmmTop�� mmWidth0 BandType	LayerNameForeground3  TppLabel
ppLabel322DesignLayerppDesignLayer4UserNameLabel322Caption   1+2A%02#'44	1"-7HFFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�mmTop� mmWidth�tBandType	LayerNameForeground3  TppLabel
ppLabel336DesignLayerppDesignLayer4UserNameLabel336Caption!   11"@*5H"H-2#@4-22##8A#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftAmmTop��  mmWidth�  BandType	LayerNameForeground3  TppLine	ppLine110DesignLayerppDesignLayer4UserNameLine301	Pen.WidthPositionlpBottomWeight       ��?mmHeight�mmLeft"mmTop��  mmWidth' BandType	LayerNameForeground3  TppLine	ppLine115DesignLayerppDesignLayer4UserNameLine115	Pen.WidthPositionlpLeftWeight       ��?mmHeighta� mmLeftA mmTopɓ  mmWidthV
BandType	LayerNameForeground3  TppLine	ppLine118DesignLayerppDesignLayer4UserNameLine118	Pen.WidthWeight       ��?mmHeight!mmLeft4mmTopԣ mmWidth�� BandType	LayerNameForeground3  TppLabel
ppLabel445DesignLayerppDesignLayer4UserName	Label1402Caption�   การติดตามประเมินอาการ เมื่อครบ 48 ชั่วโมง  วันที่.........................เวลา..................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftgmmTopyv mmWidth�� BandType	LayerNameForeground3  TppLabel
ppLabel456DesignLayerppDesignLayer4UserNameLabel456Caption   D-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�[mmTopȧ mmWidthV
BandType	LayerNameForeground3  TppLine	ppLine126DesignLayerppDesignLayer4UserNameLine126	Pen.WidthPositionlpRightWeight       ��?mmHeight< mmLeft% mmTop��  mmWidthBandType	LayerNameForeground3  TppLine	ppLine128DesignLayerppDesignLayer4UserNameLine128	Pen.WidthPositionlpBottomWeight       ��?mmHeight�mmLeft� mmTop� mmWidth@�  BandType	LayerNameForeground3  TppVariableppVariable61DesignLayerppDesignLayer4UserNameinformname1BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLefttv mmTop� mmWidth?BandType	LayerNameForeground3  TppVariableppVariable62DesignLayerppDesignLayer4UserNameonlineuser1BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�| mmTop/ mmWidth�8BandType	LayerNameForeground3  TppLabel
ppLabel479DesignLayerppDesignLayer4UserNameLabel501Caption[   หน่วยที่คัดกรอง..............................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�& mmTopw� mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel481DesignLayerppDesignLayer4UserNameLabel481Caption   !5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTopV mmWidth4BandType	LayerNameForeground3  TppLabel
ppLabel482DesignLayerppDesignLayer4UserNameLabel482Caption   D!H!5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftb� mmTopV mmWidth�BandType	LayerNameForeground3  TppLine	ppLine129DesignLayerppDesignLayer4UserNameLine129	Pen.WidthPositionlpDiagRightWeight       ��?mmHeight�mmLeft�� mmTop� mmWidthM	BandType	LayerNameForeground3  TppLabel
ppLabel483DesignLayerppDesignLayer4UserNameLabel483CaptionmmHgFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop� mmWidth!BandType	LayerNameForeground3  TppLabel
ppLabel484DesignLayerppDesignLayer4UserNameLabel484Captionq   ฟ้าทะลายโจร................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop2�  mmWidth6�  BandType	LayerNameForeground3  TppLabel
ppLabel485DesignLayerppDesignLayer4UserNameLabel485CaptionUParacetamol (500)....................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop��  mmWidthG�  BandType	LayerNameForeground3  TppLabel
ppLabel486DesignLayerppDesignLayer4UserName	Label1804CaptionQDextromethorphan.................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop� mmWidthG�  BandType	LayerNameForeground3  TppLabel
ppLabel487DesignLayerppDesignLayer4UserNameLabel487CaptioneCPM .................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTopO mmWidthG�  BandType	LayerNameForeground3  TppLabel
ppLabel488DesignLayerppDesignLayer4UserNameLabel488CaptionfORS ..................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop4 mmWidthG�  BandType	LayerNameForeground3  TppLabel
ppLabel489DesignLayerppDesignLayer4UserNameLabel489Caption�   ยาคนไข้ทีจำเป็นต้องสั่ง เพิ่ม.....................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop�I mmWidth>�  BandType	LayerNameForeground3  TmyCheckBoxmyCheckBox8DesignLayerppDesignLayer4UserName	CheckBox8Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft  mmTop;�  mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox9DesignLayerppDesignLayer4UserName	CheckBox9Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft  mmTop��  mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox10DesignLayerppDesignLayer4UserName
CheckBox10Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft  mmTop> mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox11DesignLayerppDesignLayer4UserNameCheckBox301Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft  mmTop� mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox12DesignLayerppDesignLayer4UserName
CheckBox12Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft  mmTop�1 mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox13DesignLayerppDesignLayer4UserName
CheckBox13Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft  mmTop�G mmWidthxBandType	LayerNameForeground3  TppLabel
ppLabel492DesignLayerppDesignLayer4UserNameLabel492Caption�   แบบบันทึกการดูแลรักษาผู้ป่วย Covid-19 กรณี OP With Self IsolationColorclWindowFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftL�  mmToplmmWidth�� BandType	LayerNameForeground3  	TppDBText
ppDBText62DesignLayerppDesignLayer4UserNameDBText62	DataFieldfullnameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	VerticalAlignmentavBottomDataPipelineNameppDBPipelinemmHeight�mmLefti+mmTop�;mmWidthݕ  BandType	LayerNameForeground3  	TppDBText
ppDBText63DesignLayerppDesignLayer4UserNameDBText63	DataFieldage_yDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�� mmTop�<mmWidthO(BandType	LayerNameForeground3  	TppDBText
ppDBText64DesignLayerppDesignLayer4UserNameDBText64	DataFieldhometelDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�� mmTop�TmmWidthaIBandType	LayerNameForeground3  	TppDBText
ppDBText65DesignLayerppDesignLayer4UserNameDBText65	DataFieldhnDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	VerticalAlignmentavCenterDataPipelineNameppDBPipelinemmHeight�mmLeft�N mmTop?mmWidth7DBandType	LayerNameForeground3  	TppDBText
ppDBText66DesignLayerppDesignLayer4UserNameDBText66	DataFieldFulladdDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft?mmTop�TmmWidthnA BandType	LayerNameForeground3  	TppDBText
ppDBText67DesignLayerppDesignLayer4UserNameDBText67	DataFieldcidDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�  mmTop?mmWidth]BandType	LayerNameForeground3  	TppDBText
ppDBText68DesignLayerppDesignLayer4UserNameDBText68	DataField	ptty_nameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	VerticalAlignmentavBottomDataPipelineNameppDBPipelinemmHeight�mmLeft,0 mmTop�;mmWidthE�  BandType	LayerNameForeground3  	TppDBText
ppDBText69DesignLayerppDesignLayer4UserName	DBText103CharWrap		DataFieldccDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	WordWrap	DataPipelineNameppDBPipelinemmHeight!mmLeft?EmmTopNemmWidth�d BandType	LayerNameForeground3  	TppDBText
ppDBText70DesignLayerppDesignLayer4UserNameDBText70	DataFieldsexDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft&� mmTop�<mmWidth�BandType	LayerNameForeground3  TppLabel
ppLabel493DesignLayerppDesignLayer4UserNameLabel493Caption   
7H-+H'"#42#  Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft+mmTopK'mmWidthHFBandType	LayerNameForeground3  TppLabel
ppLabel495DesignLayerppDesignLayer4UserNameLabel495Caption   #+1*+H'"#42#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTopK'mmWidthaIBandType	LayerNameForeground3  TppLabel
ppLabel497DesignLayerppDesignLayer4UserNameLabel497Caption   '15H#1#42#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�b mmTop:%mmWidth�<BandType	LayerNameForeground3  TppLabel
ppLabel498DesignLayerppDesignLayer4UserNameLabel498Caption   '15H3+H2"Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftp mmTop:%mmWidth�8BandType	LayerNameForeground3  TppLabel
ppLabel499DesignLayerppDesignLayer4UserNameLabel499Caption	   
7H-- *8%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft+mmTop>mmWidth,$BandType	LayerNameForeground3  TppLabel
ppLabel500DesignLayerppDesignLayer4UserNameLabel500CaptionPIDFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeftN�  mmTop?mmWidth�BandType	LayerNameForeground3  TppLabel
ppLabel501DesignLayerppDesignLayer4UserNameLabel6CaptionHNFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftK= mmTop�<mmWidthxBandType	LayerNameForeground3  TppLabel
ppLabel502DesignLayerppDesignLayer4UserNameLabel7Caption   @(Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeftr� mmTop�<mmWidth�BandType	LayerNameForeground3  TppLabel
ppLabel503DesignLayerppDesignLayer4UserNameLabel802Caption   -2"8Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft(� mmTop�<mmWidth�BandType	LayerNameForeground3  TppLabel
ppLabel504DesignLayerppDesignLayer4UserNameLabel504Caption   5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeft mmTop>mmWidth<BandType	LayerNameForeground3  TppLabel
ppLabel505DesignLayerppDesignLayer4UserNameLabel505Caption   *44Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop�<mmWidth�BandType	LayerNameForeground3  TppLabel
ppLabel506DesignLayerppDesignLayer4UserNameLabel506Caption   5H-"9H181Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft+mmTop�TmmWidth�5BandType	LayerNameForeground3  TppLabel
ppLabel507DesignLayerppDesignLayer4UserNameLabel507Caption   @-#LB#Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLefta� mmTop�TmmWidth>&BandType	LayerNameForeground3  TppLabel
ppLabel508DesignLayerppDesignLayer4UserNameLabel508Caption   ID Line  ถ้ามีFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTop�TmmWidthjJBandType	LayerNameForeground3  TppLabel
ppLabel509DesignLayerppDesignLayer4UserNameLabel509Caption	   -2#*31Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftEmmTopNemmWidth�:BandType	LayerNameForeground3  TppLabel
ppLabel510DesignLayerppDesignLayer4UserNameLabel510Caption   9I16I-!9%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop�kmmWidth�:BandType	LayerNameForeground3  TppLabel
ppLabel511DesignLayerppDesignLayer4UserNameLabel511Caption   @%C#0-'4
2
5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�f mmTop�kmmWidth_BandType	LayerNameForeground3  TppVariableppVariable63DesignLayerppDesignLayer4UserName
Variable63BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft� mmTop�kmmWidth�<BandType	LayerNameForeground3  TppVariableppVariable64DesignLayerppDesignLayer4UserName
Variable64BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft� mmTop�kmmWidth�oBandType	LayerNameForeground3  TppLabel
ppLabel512DesignLayerppDesignLayer4UserNameLabel512Caption   @-#LB#24Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft+ mmTop�TmmWidth�9BandType	LayerNameForeground3  	TppDBText
ppDBText71DesignLayerppDesignLayer4UserNameDBText71	DataField	informtelDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft?Q mmTop�TmmWidthYHBandType	LayerNameForeground3  TppVariableppVariable65DesignLayerppDesignLayer4UserName
Variable65BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftYT mmTop:%mmWidthS�  BandType	LayerNameForeground3  	TppDBText
ppDBText72DesignLayerppDesignLayer4UserNameDBText72	DataFieldvsstdateDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeftȨ mmTop:%mmWidthIeBandType	LayerNameForeground3  TppLabel
ppLabel330DesignLayerppDesignLayer4UserNameLabel330Caption   D!H!5 2'0@*5H"Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft"mmTopҲ  mmWidth�<BandType	LayerNameForeground3  TmyCheckBoxmyCheckBox14DesignLayerppDesignLayer4UserName
CheckBox14Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�mmTop߳  mmWidthxBandType	LayerNameForeground3  TppLine	ppLine108DesignLayerppDesignLayer4UserNameLine108	Pen.WidthWeight       ��?mmHeightmmLeftmmTopy�  mmWidth' BandType	LayerNameForeground3  TmyCheckBoxmyCheckBox15DesignLayerppDesignLayer4UserName
CheckBox15Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�2 mmTop� mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox16DesignLayerppDesignLayer4UserName
CheckBox16Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�2 mmTopS� mmWidthxBandType	LayerNameForeground3  TppLabel
ppLabel480DesignLayerppDesignLayer4UserNameLabel480Caption^   ถ้ามีผล          ปกติ           ผิดปกติ...................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�% mmTop�p mmWidth��  BandType	LayerNameForeground3  TmyCheckBoxmyCheckBox17DesignLayerppDesignLayer4UserName
CheckBox17Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�� mmTopV mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox18DesignLayerppDesignLayer4UserName
CheckBox18Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�o mmTopV mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox19DesignLayerppDesignLayer4UserName
CheckBox19Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�P mmTopr mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox20DesignLayerppDesignLayer4UserName
CheckBox20Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�� mmTopr mmWidthxBandType	LayerNameForeground3  TppLineppLine91DesignLayerppDesignLayer4UserNameLine91	Pen.WidthWeight       ��?mmHeight�mmLeftA mmTop�� mmWidth��  BandType	LayerNameForeground3  TppLine	ppLine109DesignLayerppDesignLayer4UserNameLine109	Pen.WidthWeight       ��?mmHeight<mmLeftmmTop}� mmWidth0 BandType	LayerNameForeground3  TppLabel
ppLabel106DesignLayerppDesignLayer4UserNameLabel106Caption   #2"2#*1H"2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft) mmTop��  mmWidth�7BandType	LayerNameForeground3  TppLabel
ppLabel107DesignLayerppDesignLayer4UserNameLabel107CaptionbFavipiravir.......................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop~�  mmWidthG�  BandType	LayerNameForeground3  TmyCheckBoxmyCheckBox21DesignLayerppDesignLayer4UserName
CheckBox21Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft  mmTop��  mmWidthxBandType	LayerNameForeground3  TppLabel
ppLabel275DesignLayerppDesignLayer4UserNameLabel275Captiont....................................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft mmTop�c mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel276DesignLayerppDesignLayer4UserNameLabel276Captiont....................................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft mmTopKy mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel277DesignLayerppDesignLayer4UserNameLabel277Captiont....................................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft mmTop� mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel278DesignLayerppDesignLayer4UserNameLabel278Captionf   ผ่าน เบอร์โทรศัพท์..................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft  mmTop�% mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel279DesignLayerppDesignLayer4UserNameLabel279Caption   หรือสื่ออิเล็กทรอนิกส์........................วันที่...................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft  mmTop�= mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel280DesignLayerppDesignLayer4UserNameLabel280Caption[   หน่วยที่คัดกรอง..............................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�& mmTop�" mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel281DesignLayerppDesignLayer4UserNameLabel281Caption   B##02@4+2"CFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop+�  mmWidth'aBandType	LayerNameForeground3  TppLabel
ppLabel282DesignLayerppDesignLayer4UserNameLabel282Caption   B#+%-@%7-*!-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop� mmWidth�TBandType	LayerNameForeground3  TppLabel
ppLabel283DesignLayerppDesignLayer4UserNameLabel283Caption   B#+1'CA%0+%-@%7-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop�& mmWidthIeBandType	LayerNameForeground3  TppLabel
ppLabel297DesignLayerppDesignLayer4UserNameLabel297Caption	   B#!0@#GFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTopH< mmWidthF'BandType	LayerNameForeground3  TppLabel
ppLabel299DesignLayerppDesignLayer4UserNameLabel299Caption
   B#@2+'2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop�Q mmWidth�4BandType	LayerNameForeground3  TppLabel
ppLabel323DesignLayerppDesignLayer4UserNameLabel323Caption.   โรคอ้วน (BMI > 30 or BW > 90 kg)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop�g mmWidthԔ  BandType	LayerNameForeground3  TmyCheckBoxmyCheckBox22DesignLayerppDesignLayer4UserName
CheckBox22Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft~mmTop@�  mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox23DesignLayerppDesignLayer4UserName
CheckBox23Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft~mmTop� mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox24DesignLayerppDesignLayer4UserNameCheckBox101Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft~mmTopC: mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox25DesignLayerppDesignLayer4UserName
CheckBox25Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft~mmTop�$ mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox26DesignLayerppDesignLayer4UserName
CheckBox26Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft~mmTop�O mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox33DesignLayerppDesignLayer4UserName
CheckBox33Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft~mmTop�e mmWidthxBandType	LayerNameForeground3  TppLabel
ppLabel324DesignLayerppDesignLayer4UserNameLabel324Caption   อายุ  > 60 ปีFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTopw�  mmWidth�4BandType	LayerNameForeground3  TmyCheckBoxmyCheckBox34DesignLayerppDesignLayer4UserName
CheckBox34Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft~mmTop��  mmWidthxBandType	LayerNameForeground3  TppLabel
ppLabel325DesignLayerppDesignLayer4UserNameLabel325Caption   C K D   ( B#D'2"@#7I-#1) Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTopd} mmWidth^BandType	LayerNameForeground3  TmyCheckBoxmyCheckBox35DesignLayerppDesignLayer4UserName
CheckBox35Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeftEmmTop\{ mmWidthxBandType	LayerNameForeground3  TppLabel
ppLabel326DesignLayerppDesignLayer4UserNameLabel326Caption   +41I## L  1 2   *12+L6IDFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop� mmWidth�xBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox36DesignLayerppDesignLayer4UserName
CheckBox36Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeftEmmTop� mmWidthxBandType	LayerNameForeground3  TppLine	ppLine114DesignLayerppDesignLayer4UserNameLine114	Pen.WidthWeight       ��?mmHeight<mmLeftmmTop* mmWidth0 BandType	LayerNameForeground3  TppLine	ppLine116DesignLayerppDesignLayer4UserNameLine116	Pen.WidthWeight       ��?mmHeight<mmLeftmmTop�$ mmWidth0 BandType	LayerNameForeground3  TppLabel
ppLabel331DesignLayerppDesignLayer4UserNameLabel331CaptionPlanFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeftnmmTop mmWidth�BandType	LayerNameForeground3  TppLabel
ppLabel332DesignLayerppDesignLayer4UserNameLabel332Captionm.............................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft^mmTop�� mmWidthP�  BandType	LayerNameForeground3  TppLabel
ppLabel333DesignLayerppDesignLayer4UserNameLabel333Captionm.............................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft^mmTop�� mmWidthP�  BandType	LayerNameForeground3  TppLabel
ppLabel334DesignLayerppDesignLayer4UserNameLabel334Captionm.............................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft^mmTopL� mmWidthP�  BandType	LayerNameForeground3  TppLabel
ppLabel335DesignLayerppDesignLayer4UserNameLabel335Captionn..............................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft^mmTop
, mmWidtha�  BandType	LayerNameForeground3  TppLabel
ppLabel337DesignLayerppDesignLayer4UserNameLabel337Captionp................................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft^mmTop�A mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel338DesignLayerppDesignLayer4UserNameLabel338Captiono...............................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft^mmTopsW mmWidthr�  BandType	LayerNameForeground3  TppLine	ppLine135DesignLayerppDesignLayer4UserNameLine135	Pen.WidthWeight       ��?mmHeightmmLeft+mmTopT� mmWidth� BandType	LayerNameForeground3  TppShape	ppShape81DesignLayerppDesignLayer4UserNameShape81Brush.ColorclInfoBkmmHeight mmLeft�� mmTopBp mmWidth&r BandType	LayerNameForeground3  TppLineppLine99DesignLayerppDesignLayer4UserNameLine99	Pen.WidthPositionlpLeftWeight       ��?mmHeight��  mmLeft� mmTopp mmWidth BandType	LayerNameForeground3  TppLabel
ppLabel339DesignLayerppDesignLayer4UserNameLabel339CaptionZ   2#42!#0@!4-22#  @!7H-@4  4 8   
1H'B!    '15H. . . . . . . . . . . . . . . . . . . . @'%2. . . . . . . . . . . . . . . . Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft6� mmTopyv mmWidth�k BandType	LayerNameForeground3  TmyCheckBoxmyCheckBox37DesignLayerppDesignLayer4UserName
CheckBox37Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeftEmmTop� mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox38DesignLayerppDesignLayer4UserName
CheckBox38Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeftEmmTop� mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox39DesignLayerppDesignLayer4UserName
CheckBox39Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeftEmmTop�� mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox40DesignLayerppDesignLayer4UserName
CheckBox40Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeftEmmTopo� mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox41DesignLayerppDesignLayer4UserNameCheckBox401Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeftEmmTop4 mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox42DesignLayerppDesignLayer4UserName
CheckBox42Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeftaFmmTop� mmWidthxBandType	LayerNameForeground3  TppLabel
ppLabel308DesignLayerppDesignLayer4UserNameLabel308Caption   @+7H-"Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLefth� mmTop� mmWidth�BandType	LayerNameForeground3  TppLabel
ppLabel422DesignLayerppDesignLayer4UserName	Label3101Caption   DIFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLefth� mmTopۿ mmWidthV
BandType	LayerNameForeground3  TppLabel
ppLabel423DesignLayerppDesignLayer4UserNameLabel423Caption
   @G+I2-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLefth� mmTop�� mmWidth�0BandType	LayerNameForeground3  TppLabel
ppLabel424DesignLayerppDesignLayer4UserNameLabel424CaptionResting O2 sat <= 94%Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLefth� mmTope� mmWidth�vBandType	LayerNameForeground3  TppLabel
ppLabel425DesignLayerppDesignLayer4UserNameLabel425Caption   -7H  FFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLefth� mmTop+ mmWidth�BandType	LayerNameForeground3  TppLabel
ppLabel426DesignLayerppDesignLayer4UserNameLabel426Caption   D-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTop� mmWidthV
BandType	LayerNameForeground3  TmyCheckBoxmyCheckBox43DesignLayerppDesignLayer4UserName
CheckBox43Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeftΖ mmTop� mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox44DesignLayerppDesignLayer4UserName
CheckBox44Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeftΖ mmTopۿ mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox45DesignLayerppDesignLayer4UserName
CheckBox45Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeftΖ mmTop�� mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox46DesignLayerppDesignLayer4UserNameCheckBox402Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeftΖ mmTope� mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox47DesignLayerppDesignLayer4UserName
CheckBox47Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeftΖ mmTop+ mmWidthxBandType	LayerNameForeground3  TmyCheckBoxmyCheckBox48DesignLayerppDesignLayer4UserName
CheckBox48Checked	FormFieldBooleanFalseFalseBooleanTrueTrueCheckBoxColorclBlackmmHeight�mmLeft�� mmTop� mmWidthxBandType	LayerNameForeground3  TppLineppLine88DesignLayerppDesignLayer4UserNameLine88	Pen.WidthPositionlpLeftWeight       ��?mmHeight��  mmLeft]# mmTopX� mmWidth BandType	LayerNameForeground3  TppLabel
ppLabel427DesignLayerppDesignLayer4UserNameLabel427Captiond....................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop� mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel428DesignLayerppDesignLayer4UserNameLabel428Captiond....................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTopĽ mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel429DesignLayerppDesignLayer4UserNameLabel429Captiond....................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTopy� mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel430DesignLayerppDesignLayer4UserNameLabel430Captione.....................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop-� mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel431DesignLayerppDesignLayer4UserNameLabel431Captionf......................................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop�� mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel432DesignLayerppDesignLayer4UserNameLabel432CaptionW.......................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�( mmTop� mmWidthֳ  BandType	LayerNameForeground3  TppLabel
ppLabel433DesignLayerppDesignLayer4UserNameLabel433CaptionW.......................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�( mmTopĽ mmWidthֳ  BandType	LayerNameForeground3  TppLabel
ppLabel434DesignLayerppDesignLayer4UserNameLabel434CaptionW.......................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�( mmTopy� mmWidthֳ  BandType	LayerNameForeground3  TppLabel
ppLabel435DesignLayerppDesignLayer4UserName	Label4301CaptionW.......................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�( mmTop-� mmWidthֳ  BandType	LayerNameForeground3  TppLabel
ppLabel436DesignLayerppDesignLayer4UserNameLabel436CaptionV......................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�( mmTop�� mmWidthű  BandType	LayerNameForeground3  TppLine	ppLine134DesignLayerppDesignLayer4UserNameLine134	Pen.WidthPositionlpLeftWeight       ��?mmHeightF mmLeft"mmTop��  mmWidth)BandType	LayerNameForeground3  TppLabel
ppLabel284DesignLayerppDesignLayer4UserNameLabel284Caption\   Refer ไปยัง : ....................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftgmmTop@ mmWidth� BandType	LayerNameForeground3  TppLabel
ppLabel314DesignLayerppDesignLayer4UserNameLabel314Captionl   ส่งตัวเพื่อ : ........................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftgmmTop�U mmWidth� BandType	LayerNameForeground3  TppLabel
ppLabel315DesignLayerppDesignLayer4UserNameLabel315Captionm   สาเหตุที่ส่ง : ......................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftgmmToplk mmWidth� BandType	LayerNameForeground3  TppLabel
ppLabel320DesignLayerppDesignLayer4UserNameLabel320CaptionX........................................................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftgmmTop � mmWidth� BandType	LayerNameForeground3  TppLine	ppLine103DesignLayerppDesignLayer4UserNameLine3	Pen.WidthPositionlpLeftWeight       ��?mmHeight)�  mmLeft�  mmTop;! mmWidth BandType	LayerNameForeground3  TppLine	ppLine104DesignLayerppDesignLayer4UserNameLine104	Pen.WidthPositionlpLeftWeight       ��?mmHeight)�  mmLeft.$ mmTop! mmWidth BandType	LayerNameForeground3  TppLabel
ppLabel321DesignLayerppDesignLayer4UserNameLabel321Captionk   ลงชื่อแพทย์ผู้รักษา .................................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�' mmTop�V mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel327DesignLayerppDesignLayer4UserNameLabel327Caption.(............................................)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�� mmToprl mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel328DesignLayerppDesignLayer4UserNameLabel328Captionm   เลขใบอนุญาตประกอบวิชาชีพ.....................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�' mmTop(� mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel329DesignLayerppDesignLayer4UserNameLabel329CaptionS   ลงชื่อพยาบาล ..............................................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�) mmTop�V mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel437DesignLayerppDesignLayer4UserNameLabel437Caption,(..........................................)Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftk mmToptl mmWidth�  BandType	LayerNameForeground3  TppLabel
ppLabel438DesignLayerppDesignLayer4UserNameLabel438Captionc   เลขใบอนุญาตประกอบวิชาชีพ...........................Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�) mmTop(� mmWidth��  BandType	LayerNameForeground3  TppLabel
ppLabel439DesignLayerppDesignLayer4UserNameLabel439Caption	   2#*HH-Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�vmmTop! mmWidthW)BandType	LayerNameForeground3  TppVariableppVariable59DesignLayerppDesignLayer4UserName
Variable59BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft� mmTopcj mmWidth�5BandType	LayerNameForeground3  TppVariableppVariable60DesignLayerppDesignLayer4UserName
Variable60BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft&� mmTop� mmWidth�5BandType	LayerNameForeground3  TppVariableppVariable66DesignLayerppDesignLayer4UserName
Variable66BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�� mmTopcj mmWidth�5BandType	LayerNameForeground3  TppVariableppVariable67DesignLayerppDesignLayer4UserNameVariable601BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft̲ mmTop� mmWidth�5BandType	LayerNameForeground3  	TppDBText
ppDBText73DesignLayerppDesignLayer4UserNameDBText73AutoSize		DataField	shortnameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�OmmTop5%mmWidthBandType	LayerNameForeground3  	TppDBText
ppDBText74DesignLayerppDesignLayer4UserNameDBText74	DataField	hospcode2DataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	VerticalAlignmentavBottomDataPipelineNameppDBPipelinemmHeight�mmLeft�# mmTop:%mmWidth�/BandType	LayerNameForeground3  	TppDBText
ppDBText79DesignLayerppDesignLayer4UserNameDBText79AutoSize		DataFieldhoure48DataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeftY mmTopZs mmWidthBandType	LayerNameForeground3  	TppDBText
ppDBText80DesignLayerppDesignLayer4UserNameDBText80AutoSize		DataFieldvsttimeDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeftM\ mmTopZs mmWidthBandType	LayerNameForeground3   TppDetailBandppDetailBand4Background1.Brush.StylebsClearBackground2.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppSummaryBandppSummaryBand3Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TraCodeModuleraCodeModule5 TraProgramInforaProgramInfo106raClassNameTraEventHandlerraProgram.ProgramNameVariable64OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable64OnCalc(var Value: Variant);
begin

 Value := GetSQLStringData('select u.name from opduser u  where '+
             ' u.loginname="'+GetCurrentUser+'" ');

end;
raProgram.ComponentName
Variable64raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo107raClassNameTraEventHandlerraProgram.ProgramNameVariable63OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable63OnCalc(var Value: Variant);
begin

  Value := GetSQLStringData('select d.licenseno from opduser u left join doctor d on u.doctorcode=d.code where '+
             ' u.loginname="'+GetCurrentUser+'" ');

end;
raProgram.ComponentName
Variable63raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo108raClassNameTraEventHandlerraProgram.ProgramNameVariable65OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable65OnCalc(var Value: Variant);
begin

Value :=  GetSQLStringData('select thaidates(date_add(vstdate,INTERVAL 10 DAY)) from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName
Variable65raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo109raClassNameTraEventHandlerraProgram.ProgramNameinformname1OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure informname1OnCalc(var Value: Variant);
begin

   Value :=   GetSQLStringData(' SELECT if("'+DBPipeline['age_y']+'" <18,informname, "'+DBPipeline['fullname']+'" ) from  patient p '+

  '  where p.hn = "'+DBPipeline['hn']+'" ');

end;
raProgram.ComponentNameinformname1raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos   TraProgramInforaProgramInfo110raClassNameTraEventHandlerraProgram.ProgramNameonlineuser1OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure onlineuser1OnCalc(var Value: Variant);
begin
            Value := '( '+ GetSQLStringData('select u.name from opduser u  where '+
             ' u.loginname="'+GetCurrentUser+'" ') +')';

end;
raProgram.ComponentNameonlineuser1raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo111raClassNameTraEventHandlerraProgram.ProgramNameVariable59OnCalcraProgram.ProgramTypettProcedureraProgram.Sources  procedure Variable59OnCalc(var Value: Variant);
begin

  Value :=    GetSQLStringData('select (select doctor_fullname from prs_hici_doctor where doctor_code = ds.doctor_code) as dname from opduser  o '+
'INNER JOIN doctor d on d.code = o.doctorcode '+
'INNER JOIN prs_doctor_select ds on ds.nurse_code = d.code '+
'where loginname ="'+getcurrentuser+'"');

end;
raProgram.ComponentName
Variable59raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo112raClassNameTraEventHandlerraProgram.ProgramNameVariable60OnCalcraProgram.ProgramTypettProcedureraProgram.Sourcej  procedure Variable60OnCalc(var Value: Variant);
begin
  Value :=    GetSQLStringData('select (select liceneno from prs_hici_doctor where doctor_code = ds.doctor_code) as dname from opduser  o '+
'INNER JOIN doctor d on d.code = o.doctorcode '+
'INNER JOIN prs_doctor_select ds on ds.nurse_code = d.code '+
'where loginname ="'+getcurrentuser+'"');

end;
raProgram.ComponentName
Variable60raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo113raClassNameTraEventHandlerraProgram.ProgramNameVariable66OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable66OnCalc(var Value: Variant);
begin
 Value := GetSQLStringData('select u.name from opduser u  where '+
             ' u.loginname="'+GetCurrentUser+'" ');

end;
raProgram.ComponentName
Variable66raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos     TraProgramInforaProgramInfo114raClassNameTraEventHandlerraProgram.ProgramNameVariable601OnCalcraProgram.ProgramTypettProcedureraProgram.Source  procedure Variable601OnCalc(var Value: Variant);
begin

           Value := GetSQLStringData('select d.licenseno from opduser u left join doctor d '+
           ' on u.doctorcode=d.`code`  where '+
             ' u.loginname="'+GetCurrentUser+'" ');



end;
raProgram.ComponentNameVariable601raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos      TppDesignLayersppDesignLayers4 TppDesignLayerppDesignLayer4UserNameForeground3	LayerTypeltBandedIndex       TraCodeModuleraCodeModule2 TraProgramInforaProgramInfo115raClassNameTraVarProgramraProgram.ChildTyperaProgram.ProgramName	VariablesraProgram.ProgramTypettProcedureraProgram.Source�procedure Variables;
var
           strNPC1, strNPC2, strNPC3, strNPC4, strNPC5 : String;
           
 list_menu,prgname,hoscode,dname,dcode,nurse,nurse0,dcode0 :string;

begin

end;
raProgram.CaretPosD   TraProgramInforaProgramInfo116raClassName
TraProgramraProgram.ChildTyperaProgram.ProgramNameGlobalOnCreateraProgram.ProgramTypettProcedureraProgram.Source�  procedure GlobalOnCreate;
begin

 list_menu := GetMultipleList('SELECT "0-เลือกชื่อแพทย์ที่ต้องการให้ออกในบรับรองแพทย์" as menu '+
    ' UNION '+
        'SELECT "1-เอกสาร Self Isolation(SI)" as menu '+
    ' UNION '+
    ' SELECT "2-เอกสาร Home Isolation(HI)" as menu ');

    list_menu := copy(list_menu,2,1);

    nurse0:=GetSQLStringData('select d.code from opduser  o '+
'INNER JOIN doctor d on d.code = o.doctorcode '+
     'where loginname ="'+getcurrentuser+'"');
     dcode0:=GetSQLStringData('select doctor_code from prs_doctor_select where nurse_code = '+nurse0+' ');


             if list_menu = '0' then
    begin
               nurse:=GetSQLStringData('select d.code from opduser  o '+
'INNER JOIN doctor d on d.code = o.doctorcode '+
     'where loginname ="'+getcurrentuser+'" group by d.code');

               dname:=GetMultipleList('select doctor_fullname from prs_hici_doctor');
               dcode:=GetSQLStringData('select doctor_code from prs_hici_doctor where doctor_fullname = '+dname+' ');


     GetSQLStringData('select getDoctorHisi('+dcode+','+nurse+');');

        list_menu := GetMultipleList('SELECT "1-เอกสาร Self Isolation(SI)" as menu '+
    ' UNION '+
    ' SELECT "2-เอกสาร Home Isolation(HI)" as menu ');

    list_menu := copy(list_menu,2,1);

        end;


    if list_menu = '1' then
    begin
              prgname:=GetSQLStringData('select hospname from prs_hici_hoscode');
               hoscode:=GetSQLStringData('select hospitalcode from opdconfig limit 1');

       //report.header.visible := false;
       report.detail.visible := false;
       SubReport1.visible := false;
       SubReport2.visible := false;
       SubReport3.visible := true;
       SubReport6.visible := true;
       SubReport7.visible := true;

     GetSQLStringData('select getSendhici("'+GetUserParameter(0)+'",'+hoscode+',"SI",'+dcode0+','+nurse0+');');

    end
    else
    
    if list_menu = '2' then
    begin

    // report.header.visible := true;
     SubReport1.visible := true;
     SubReport6.visible := false;
     SubReport2.visible := true;
     SubReport3.visible := false;
     SubReport7.visible := false;

         GetSQLStringData('select getSendhici("'+GetUserParameter(0)+'",'+hoscode+',"HI",'+dcode0+','+nurse0+');');
    end

    else

        if list_menu = '3' then
    begin

       report.detail.visible := false;
       SubReport1.visible := false;
       SubReport2.visible := false;
       SubReport3.visible := true;
       SubReport6.visible := false;
       SubReport7.visible := true;

    end

    else
    
    if list_menu = '4' then
    begin

     SubReport1.visible := true;
     SubReport6.visible := false;
     SubReport2.visible := false;
     SubReport3.visible := false;
     SubReport7.visible := false;

    end

    else
    
         begin
           // for ENG
      // report.header.visible := false;
       report.detail.visible := false;
       SubReport1.visible := false;
       SubReport2.visible := false;
       SubReport6.visible := false;
       SubReport7.visible := false;

         end;
       end;


         ChangeDBPipeLineLink1SQL('SELECT n.name '+
'FROM opitemrece o '+
'LEFT JOIN  drugitems n ON o.icode=n.icode '+
'WHERE o.vn="'+DBPipeline['vn']+'" and o.income IN("00","03") '+
'ORDER BY o.icode  ');


 ChangeDBPipeLineLink2SQL('select o.lab_items_code from lab_head h '+
  'LEFT JOIN lab_order o ON  h.lab_order_number=o.lab_order_number '+
  'WHERE  o.lab_items_code IN("3544") and vn="'+DBPipeline['vn']+'"  ');

   ChangeDBPipeLineLink3SQL('select o.lab_items_code from lab_head h '+
  'LEFT JOIN lab_order o ON  h.lab_order_number=o.lab_order_number '+
  'WHERE  o.lab_items_code IN("3540") and vn="'+DBPipeline['vn']+'"  ');

  
end;
raProgram.CaretPosUC   TraProgramInforaProgramInfo117raClassNameTraEventHandlerraProgram.ProgramNameVariable1OnCalcraProgram.ProgramTypettProcedureraProgram.Source  procedure Variable1OnCalc(var Value: Variant);
begin

  Value :=  GetSQLStringData('select h.order_date from lab_head h '+
  'LEFT JOIN lab_order o ON  h.lab_order_number=o.lab_order_number '+
  'WHERE  o.lab_items_code IN("3544") and vn="'+DBPipeline['vn']+'" ');

end;
raProgram.ComponentName	Variable1raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos   TraProgramInforaProgramInfo118raClassNameTraEventHandlerraProgram.ProgramNameVariable3OnCalcraProgram.ProgramTypettProcedureraProgram.Source  procedure Variable3OnCalc(var Value: Variant);
begin


  Value :=  GetSQLStringData('select h.order_date from lab_head h '+
  'LEFT JOIN lab_order o ON  h.lab_order_number=o.lab_order_number '+
  'WHERE  o.lab_items_code IN("3540") and vn="'+DBPipeline['vn']+'" ');

end;
raProgram.ComponentName	Variable3raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos   TraProgramInforaProgramInfo119raClassNameTraEventHandlerraProgram.ProgramNameVariable4OnCalcraProgram.ProgramTypettProcedureraProgram.Source  procedure Variable4OnCalc(var Value: Variant);
begin

   Value :=  GetSQLStringData('select o.lab_order_result from lab_head h '+
  'LEFT JOIN lab_order o ON  h.lab_order_number=o.lab_order_number '+
  'WHERE  o.lab_items_code IN("3540") and vn="'+DBPipeline['vn']+'" ');

end;
raProgram.ComponentName	Variable4raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos   TraProgramInforaProgramInfo120raClassNameTraEventHandlerraProgram.ProgramNameVariable6OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable6OnCalc(var Value: Variant);
begin

  Value := GetSQLStringData('select d.licenseno from opduser u left join doctor d on u.doctorcode=d.code where '+
             ' u.loginname="'+GetCurrentUser+'" ');

end;
raProgram.ComponentName	Variable6raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos   TraProgramInforaProgramInfo121raClassNameTraEventHandlerraProgram.ProgramNameVariable7OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable7OnCalc(var Value: Variant);
begin

 Value := GetSQLStringData('select u.name from opduser u  where '+
             ' u.loginname="'+GetCurrentUser+'" ');

end;
raProgram.ComponentName	Variable7raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos   TraProgramInforaProgramInfo122raClassName
TraProgramraProgram.ChildTyperaProgram.ProgramNameGlobalProcedure1raProgram.ProgramTypettProcedureraProgram.Source,procedure GlobalProcedure1;
begin

end;
raProgram.CaretPos   TraProgramInforaProgramInfo123raClassNameTraEventHandlerraProgram.ProgramNameinformnameOnCalcraProgram.ProgramTypettProcedureraProgram.Source  procedure informnameOnCalc(var Value: Variant);
begin

   Value :=   '( '+GetSQLStringData(' SELECT if("'+DBPipeline['age_y']+'" <18,informname, "'+DBPipeline['fullname']+'" ) from  patient p '+

  '  where p.hn = "'+DBPipeline['hn']+'" ')+' )';

end;
raProgram.ComponentName
informnameraProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos   TraProgramInforaProgramInfo124raClassNameTraEventHandlerraProgram.ProgramNameonlineuserOnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure onlineuserOnCalc(var Value: Variant);
begin
            Value := '( '+ GetSQLStringData('select u.name from opduser u  where '+
             ' u.loginname="'+GetCurrentUser+'" ') +')';

end;
raProgram.ComponentName
onlineuserraProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos   TraProgramInforaProgramInfo125raClassNameTraEventHandlerraProgram.ProgramNameVariable2OnCalcraProgram.ProgramTypettProcedureraProgram.Source�procedure Variable2OnCalc(var Value: Variant);
begin

Value :=  GetSQLStringData('select thaidates(date_add(vstdate,INTERVAL 10 DAY)) from vn_stat where vn="'+DBPipeline['vn']+'"');

end;
raProgram.ComponentName	Variable2raProgram.EventNameOnCalcraProgram.EventID!raProgram.CaretPos   TraProgramInforaProgramInfo126raClassNameTraEventHandlerraProgram.ProgramNameDetailBeforePrintraProgram.ProgramTypettProcedureraProgram.Source-procedure DetailBeforePrint;
begin

end;
raProgram.ComponentNameDetailraProgram.EventNameBeforePrintraProgram.EventIDraProgram.CaretPosB   TraProgramInforaProgramInfo127raClassNameTraEventHandlerraProgram.ProgramNameDetailBeforeGenerateraProgram.ProgramTypettProcedureraProgram.Source0procedure DetailBeforeGenerate;
begin

end;
raProgram.ComponentNameDetailraProgram.EventNameBeforeGenerateraProgram.EventIDraProgram.CaretPos	    TppDesignLayersppDesignLayers1 TppDesignLayerppDesignLayer1UserName
Foreground	LayerTypeltBandedIndex    TppParameterListppParameterList1    MySQLCOVID19 �!��B333333@N
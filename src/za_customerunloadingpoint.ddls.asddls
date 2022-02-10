/********** GENERATED on 11/25/2021 at 20:48:13 by CB9980000000**************/
 @OData.entitySet.name: 'A_CustomerUnloadingPoint' 
 @OData.entityType.name: 'A_CustomerUnloadingPointType' 
 define root abstract entity ZA_CUSTOMERUNLOADINGPOINT { 
 key Customer : abap.char( 10 ) ; 
 key UnloadingPointName : abap.char( 25 ) ; 
 @Odata.property.valueControl: 'CustomerFactoryCalenderCode_vc' 
 CustomerFactoryCalenderCode : abap.char( 2 ) ; 
 CustomerFactoryCalenderCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BPGoodsReceivingHoursCode_vc' 
 BPGoodsReceivingHoursCode : abap.char( 3 ) ; 
 BPGoodsReceivingHoursCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IsDfltBPUnloadingPoint_vc' 
 IsDfltBPUnloadingPoint : abap_boolean ; 
 IsDfltBPUnloadingPoint_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MondayMorningOpeningTime_vc' 
 MondayMorningOpeningTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 MondayMorningOpeningTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MondayMorningClosingTime_vc' 
 MondayMorningClosingTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 MondayMorningClosingTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MondayAfternoonOpeningTime_vc' 
 MondayAfternoonOpeningTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 MondayAfternoonOpeningTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MondayAfternoonClosingTime_vc' 
 MondayAfternoonClosingTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 MondayAfternoonClosingTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TuesdayMorningOpeningTime_vc' 
 TuesdayMorningOpeningTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 TuesdayMorningOpeningTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TuesdayMorningClosingTime_vc' 
 TuesdayMorningClosingTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 TuesdayMorningClosingTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TuesdayAfternoonOpeningTime_vc' 
 TuesdayAfternoonOpeningTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 TuesdayAfternoonOpeningTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'TuesdayAfternoonClosingTime_vc' 
 TuesdayAfternoonClosingTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 TuesdayAfternoonClosingTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WednesdayMorningOpeningTime_vc' 
 WednesdayMorningOpeningTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 WednesdayMorningOpeningTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WednesdayMorningClosingTime_vc' 
 WednesdayMorningClosingTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 WednesdayMorningClosingTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WednesdayAfternoonOpeningTi_vc' 
 WednesdayAfternoonOpeningTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 WednesdayAfternoonOpeningTi_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WednesdayAfternoonClosingTi_vc' 
 WednesdayAfternoonClosingTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 WednesdayAfternoonClosingTi_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ThursdayMorningOpeningTime_vc' 
 ThursdayMorningOpeningTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 ThursdayMorningOpeningTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ThursdayMorningClosingTime_vc' 
 ThursdayMorningClosingTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 ThursdayMorningClosingTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ThursdayAfternoonOpeningTim_vc' 
 ThursdayAfternoonOpeningTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 ThursdayAfternoonOpeningTim_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ThursdayAfternoonClosingTim_vc' 
 ThursdayAfternoonClosingTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 ThursdayAfternoonClosingTim_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FridayMorningOpeningTime_vc' 
 FridayMorningOpeningTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 FridayMorningOpeningTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FridayMorningClosingTime_vc' 
 FridayMorningClosingTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 FridayMorningClosingTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FridayAfternoonOpeningTime_vc' 
 FridayAfternoonOpeningTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 FridayAfternoonOpeningTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FridayAfternoonClosingTime_vc' 
 FridayAfternoonClosingTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 FridayAfternoonClosingTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SaturdayMorningOpeningTime_vc' 
 SaturdayMorningOpeningTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 SaturdayMorningOpeningTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SaturdayMorningClosingTime_vc' 
 SaturdayMorningClosingTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 SaturdayMorningClosingTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SaturdayAfternoonOpeningTim_vc' 
 SaturdayAfternoonOpeningTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 SaturdayAfternoonOpeningTim_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SaturdayAfternoonClosingTim_vc' 
 SaturdayAfternoonClosingTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 SaturdayAfternoonClosingTim_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SundayMorningOpeningTime_vc' 
 SundayMorningOpeningTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 SundayMorningOpeningTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SundayMorningClosingTime_vc' 
 SundayMorningClosingTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 SundayMorningClosingTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SundayAfternoonOpeningTime_vc' 
 SundayAfternoonOpeningTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 SundayAfternoonOpeningTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SundayAfternoonClosingTime_vc' 
 SundayAfternoonClosingTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 SundayAfternoonClosingTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 

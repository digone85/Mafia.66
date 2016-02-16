//Maximum lul
waitUntil {!isNull player};
Mission_Givers=[deviceSALT, deviceOIL,deviceMETH,deviceROCK,deviceMETAL,deviceCOKE,devicePedras,deviceSAND,deviceMETH2,deviceWEED,deviceHEROIN,deviceCOKE2,deviceMETAL2,deviceOIL2,deviceDIAMOND,deviceLOGS,deviceCOPPER,deviceIRON,reb_1_2,rebelsaldlasd,sadasdasdshop,reb_1_1,reb_1,reb_1_3,appraiser,dp_19,dp_21,Highway_Station_2,gokartshopbitch,turtledealerbitch,dsfsdafggasdfgsagsag,marker1,dp_20,metaltrader,dp_24,salttraderdafuck,truckshop2312,dp_14,marketsdasda,license_shop_2,clothinghahahaha,generalshithaha,carshop4,garagegageag,dp_13,dp_16,diamondbullshitlol,sadasdasdasdasdasdas,boatshoplolol,dp_18,Telos_Station,medicalshopsshjahs,appraiser_1_1,airstripshop,taxihqhaha,airservicestation,airgarage,Lakka_Station_1,Athira_Station,weedshopaha,auction,athiracoffeshp,carshop1_3_1,localbug,license_shop_1,carshopsadathira,athiramarker,dp_7,clothingstoehahdha,athiragaragae,Dealer_3,dp_6,reb_1_5,reb_1_3_3,airgaragagagadonator,appraiser_1,carshop1_4,jailgarage,securityguard,thunting_ai,boatshopadhjasfbha,dp_10,oiltradersad,divingasdasdsadasd,dp_12,Lakka_Station,deviceWEED2,reb_1_4,dealerasdafasdf,logtraderhahaha,dp_5,dp_22,weeedshopsadhasj,gunshosroaoira,dp_9,clothingshoasfhasfg,clothingstorrhhahhdad,choshopadhashd,Agios_Station,dp_11,garagegageagasdasdasd,license_shop_3_1,dp_3,gerneraldaskhdajkhfasjkf,Maerkrkewltjwktjrewkt,gunshopahahahahahhaha,choshopupmap,gunstorenearkavala,Highway_Station,Highway_Station_1,glastradaerhahd,dp_17,irconcoppertrader,dp_4,dp_2,Highway_1,HackFed,chopshophahahaha,dp_8,wesdddsfshfosp,dp_1,carshop1_2,boatshopahahaha,divingshopahahaha,fishmarketahhahaha,license_shop,h1_3_1,weeedshodfhafhkavala,carshop1,coffeeshoahaha,marketkavalka,carshop1_3,asdasdasdas,asdasdasdasdas,asdfafsadfgasdgasg,skydivinghahdahdha,kavala_bank,Kavala_North,Dealer_1,dp_missions,sadasdasdasda,goldbuyerhawha,dp_23,h1_3_1_1_1_1,hospitalNPC,nhsshopsahdhahda,athiragarage,h1_3_2,h1_3,kavalalalagarage,kavalalalaairshop,policeboatshops,KAVALA,AGGELOCHORI,ABDERA,NEOCHORI,CHARKIA,PYRGOS,reb_1_3_1,SELAKANO,CHALKEIA,PAROS,SOFIA,nhsshopsahdhahda_1,rebhq_1_1_1,rebelhqmarker_1,rebelsaldlasd,reb_1_3_1,h1_3,h1_3_3_1,turntupmotherfuckers,nhsshopsahdhahda_1_1];
Radius_For_Showing=18;
Enable_Add_Action="false";
Texture_For_Icon3d="\a3\ui_f\data\GUI\Cfg\CommunicationMenu\instructor_ca";
//	define color for icon3d
Color_For_Icon3d=[0,1,0,1];
Width_For_Icon3d=1.0;
Height_For_Icon3d=1.0;
Size_For_Icon3d_Text=0.0415;
Font_For_Icon3d="puristaLight";
Z_For_Icon3d=2.2;
_Fnc_Draw_Icon3d={
	_object=objNull;
	addMissionEventHandler ["Draw3D", {
			{
				if((getPosATL _x) distance (getPosATL player)<=Radius_For_Showing)then{
						_object=_x;
						_pos = visiblePositionASL _object;
						_pos set [2, (_object modelToWorld [0,0,Z_For_Icon3d]) select 2];
						drawIcon3D [Texture_For_Icon3d, Color_For_Icon3d, _pos, Width_For_Icon3d, Height_For_Icon3d, 0, /*text for icon3d*/ _x getVariable "npc_name", 1, Size_For_Icon3d_Text, Font_For_Icon3d];
					};
			} forEach Mission_Givers;
	}];
	if(_object==objNull)then{
		removeAllMissionEventHandlers "Draw3D";
	}
};
if(!isDedicated)then{
	[]spawn _Fnc_Draw_Icon3d;

};

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v97=v5(v87,v19);v19=nil;return v97;else return v87;end end end);local function v20(v31,v32,v33) if v33 then local v88=(v31/(2^(v32-1)))%(2^(((v33-1) -(v32-1)) + 1)) ;return v88-(v88%1) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and 1) or 0 ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 2 ;return (v36 * 256) + v35 ;end local function v23() local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37 ;end local function v24() local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,1,20) * (2^32)) + v41 ;local v45=v20(v42,21,31);local v46=((v20(v42,32)==1) and  -1) or 1 ;if (v45==0) then if (v44==0) then return v46 * 0 ;else v45=1;v43=0;end elseif (v45==2047) then return ((v44==0) and (v46 * (1/0))) or (v46 * NaN) ;end return v8(v46,v45-1023 ) * (v43 + (v44/(2^52))) ;end local function v25(v47) local v48;if  not v47 then v47=v23();if (v47==0) then return "";end end v48=v3(v16,v18,(v18 + v47) -1 );v18=v18 + v47 ;local v49={};for v63=1, #v48 do v49[v63]=v2(v1(v3(v48,v63,v63)));end return v6(v49);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v50={};local v51={};local v52={};local v53={v50,v51,nil,v52};local v54=v23();local v55={};for v65=1,v54 do local v66=v21();local v67;if (v66==1) then v67=v21()~=0 ;elseif (v66==2) then v67=v24();elseif (v66==3) then v67=v25();end v55[v65]=v67;end v53[3]=v21();for v69=1,v23() do local v70=v21();if (v20(v70,1,1)==0) then local v93=v20(v70,2,3);local v94=v20(v70,4,6);local v95={v22(),v22(),nil,nil};if (v93==0) then v95[3]=v22();v95[4]=v22();elseif (v93==1) then v95[3]=v23();elseif (v93==2) then v95[3]=v23() -(2^16) ;elseif (v93==3) then v95[3]=v23() -(2^16) ;v95[4]=v22();end if (v20(v94,1,1)==1) then v95[2]=v55[v95[2]];end if (v20(v94,2,2)==1) then v95[3]=v55[v95[3]];end if (v20(v94,3,3)==1) then v95[4]=v55[v95[4]];end v50[v69]=v95;end end for v71=1,v23() do v51[v71-1 ]=v28();end return v53;end local function v29(v57,v58,v59) local v60=v57[1];local v61=v57[2];local v62=v57[3];return function(...) local v73=v60;local v74=v61;local v75=v62;local v76=v27;local v77=1;local v78= -1;local v79={};local v80={...};local v81=v12("#",...) -1 ;local v82={};local v83={};for v90=0,v81 do if (v90>=v75) then v79[v90-v75 ]=v80[v90 + 1 ];else v83[v90]=v80[v90 + 1 ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do v85=v73[v77];v86=v85[1];if (v86<=23) then if (v86<=11) then if (v86<=5) then if (v86<=2) then if (v86<=0) then local v114;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v114=v85[2];v83[v114]=v83[v114](v13(v83,v114 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86>1) then local v215;local v216;v216=v85[2];v215=v83[v85[3]];v83[v216 + 1 ]=v215;v83[v216]=v215[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v216=v85[2];v83[v216]=v83[v216](v13(v83,v216 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v216=v85[2];v215=v83[v85[3]];v83[v216 + 1 ]=v215;v83[v216]=v215[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v216=v85[2];v83[v216]=v83[v216](v13(v83,v216 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v216=v85[2];v215=v83[v85[3]];v83[v216 + 1 ]=v215;v83[v216]=v215[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3]~=0 ;v77=v77 + 1 ;v85=v73[v77];v216=v85[2];v83[v216]=v83[v216](v13(v83,v216 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v216=v85[2];v215=v83[v85[3]];v83[v216 + 1 ]=v215;v83[v216]=v215[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v216=v85[2];v83[v216]=v83[v216](v13(v83,v216 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end else local v225;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v225=v85[2];v83[v225]=v83[v225](v13(v83,v225 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end elseif (v86<=3) then for v212=v85[2],v85[3] do v83[v212]=nil;end elseif (v86==4) then do return;end else v83[v85[2]][v85[3]]=v85[4];end elseif (v86<=8) then if (v86<=6) then local v122;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v122=v85[2];v83[v122]=v83[v122](v13(v83,v122 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];elseif (v86>7) then if (v83[v85[2]]==v85[4]) then v77=v77 + 1 ;else v77=v85[3];end else local v238;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v238=v85[2];v83[v238]=v83[v238](v13(v83,v238 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end elseif (v86<=9) then local v133;v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v133=v85[2];v83[v133]=v83[v133](v13(v83,v133 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86==10) then local v250=v85[2];do return v13(v83,v250,v250 + v85[3] );end else local v251;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v251=v85[2];v83[v251]=v83[v251](v13(v83,v251 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end end elseif (v86<=17) then if (v86<=14) then if (v86<=12) then v83[v85[2]]=v85[3]~=0 ;elseif (v86>13) then local v259;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v259=v85[2];v83[v259]=v83[v259](v13(v83,v259 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end else local v267;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v267=v85[2];v83[v267]=v83[v267](v13(v83,v267 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end elseif (v86<=15) then if v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86>16) then local v279=v85[2];v83[v279]=v83[v279](v13(v83,v279 + 1 ,v85[3]));else local v281;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v281=v85[2];v83[v281]=v83[v281](v13(v83,v281 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end elseif (v86<=20) then if (v86<=18) then local v142;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v142=v85[2];v83[v142]=v83[v142](v13(v83,v142 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86>19) then local v293;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v293=v85[2];v83[v293]=v83[v293](v13(v83,v293 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];else local v304=v85[2];local v305=v83[v85[3]];v83[v304 + 1 ]=v305;v83[v304]=v305[v85[4]];end elseif (v86<=21) then local v150;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v150=v85[2];v83[v150]=v83[v150](v13(v83,v150 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86==22) then local v310;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v310=v85[2];v83[v310]=v83[v310](v13(v83,v310 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];elseif (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=35) then if (v86<=29) then if (v86<=26) then if (v86<=24) then local v158;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v158=v85[2];v83[v158]=v83[v158](v13(v83,v158 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86==25) then local v322;v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v322=v85[2];v83[v322]=v83[v322](v13(v83,v322 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end else local v330;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v330=v85[2];v83[v330]=v83[v330](v13(v83,v330 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end elseif (v86<=27) then do return v83[v85[2]];end elseif (v86>28) then v83[v85[2]]=v59[v85[3]];else v77=v85[3];end elseif (v86<=32) then if (v86<=30) then v83[v85[2]]=v85[3];elseif (v86>31) then local v344;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v344=v85[2];v83[v344]=v83[v344](v13(v83,v344 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];else local v355;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v355=v85[2];v83[v355]=v83[v355](v13(v83,v355 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end elseif (v86<=33) then local v168;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v168=v85[2];v83[v168]=v83[v168](v13(v83,v168 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];elseif (v86==34) then v83[v85[2]]=v29(v74[v85[3]],nil,v59);else local v367;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v367=v85[2];v83[v367]=v83[v367](v13(v83,v367 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end end elseif (v86<=41) then if (v86<=38) then if (v86<=36) then local v179;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v179=v85[2];v83[v179]=v83[v179](v13(v83,v179 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];elseif (v86>37) then local v375;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v375=v85[2];v83[v375]=v83[v375](v13(v83,v375 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end else v83[v85[2]]=v83[v85[3]][v85[4]];end elseif (v86<=39) then local v190;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v190=v85[2];v83[v190]=v83[v190](v13(v83,v190 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end elseif (v86==40) then v83[v85[2]]={};else local v386;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v386=v85[2];v83[v386]=v83[v386](v13(v83,v386 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end end elseif (v86<=44) then if (v86<=42) then local v201;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v201=v85[2];v83[v201]=v83[v201](v13(v83,v201 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];elseif (v86==43) then local v394;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v394=v85[2];v83[v394]=v83[v394](v13(v83,v394 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end else local v402;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v402=v85[2];v83[v402]=v83[v402](v13(v83,v402 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end end elseif (v86<=45) then if  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86==46) then v83[v85[2]][v85[3]]=v83[v85[4]];else local v413;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v413=v85[2];v83[v413]=v83[v413](v13(v83,v413 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];do return v83[v85[2]];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end v77=v77 + 1 ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!5O00033O0002228O001B3O00024O00043O00013O00013O003F3O0003163O0046696E6446697273744368696C645768696368497341030A3O00506F696E744C69676874030B3O005370656369616C4D657368030F3O005061727469636C65456D692O7465722O033O0049734103083O004D6573685061727403063O004D657368496403173O00726278612O73657469643A2O2F3235323037363230373603053O00436F6C6F7203063O00436F6C6F723303073O0066726F6D524742025O00206140025O00E06940026O006E4003043O004E616D65030D3O00486F776C657220467269656E6403163O00726278612O73657469643A2O2F343339313032363538025O00E06F40025O00804540026O001440030F3O0050686F656E6978204665617468657203043O0050617274025O00405640026O0041402O033O003O3F026O006040025O00606740025O00606B40028O00030A3O004661697266726F7A656E026O003940025O00206740025O00606340030B3O0049636520452O73656E636503093O004B6579706F696E7473026O00F03F03053O0056616C75652O033O006E657702E99AC937DB2ODC3F025O00A06A4003133O004D7973746572696F7573204172746966616374029A5O99E93F030C3O0050686F656E697820446F776E025O00E0674003083O00526966742047656D030C3O0053706964657220436C6F616B030E3O00556E696F6E4F7065726174696F6E03183O00416D756C6574206F6620746865205768697465204B696E67026O006F40030C3O0055736550617274436F6C6F72030F3O004C612O6E6973277320416D756C6574026O003D40026O004740026O004D40030B3O004E696768742053746F6E6503133O005068696C6F736F7068657227732053746F6E65025O00206B40025O00405B40030A3O005363722O6F6D204B6579026O003540026O003E40026O004340030A3O00536F6C616E73204B6579014C012O00200200013O000100122O000300026O00010003000200202O00023O000100122O000400036O00020004000200202O00033O000100122O000500046O000600016O00030006000200202O00043O000500122O000600066O00040006000200062O0004002B00013O00041C3O002B000100202500043O00070026080004001D0001000800041C3O001D00012O002800043O00020012160005000A3O00202O00050005000B00122O0006000C3O00122O0007000D3O00122O0008000E6O00050008000200102O00040009000500302O0004000F00104O000400023O00044O00492O0100202500043O0007002608000400492O01001100041C3O00492O012O002800043O00020012160005000A3O00202O00050005000B00122O000600123O00122O000700133O00122O000800146O00050008000200102O00040009000500302O0004000F00154O000400023O00044O00492O0100201300043O000500121E000600164O001100040006000200060F000400C800013O00041C3O00C8000100202500043O00090012230005000A3O00202O00050005000B00122O000600173O00122O000700183O00122O000800176O00050008000200062O000400440001000500041C3O004400012O002800043O00020012160005000A3O00202O00050005000B00122O0006000C3O00122O0007000D3O00122O0008000E6O00050008000200102O00040009000500302O0004000F00194O000400023O00044O00492O0100202500043O00090012230005000A3O00202O00050005000B00122O0006001A3O00122O0007001B3O00122O0008001C6O00050008000200062O000400580001000500041C3O005800012O002800043O00020012160005000A3O00202O00050005000B00122O000600123O00122O0007001D3O00122O000800126O00050008000200102O00040009000500302O0004000F001E4O000400023O00044O00492O0100060F0003006E00013O00041C3O006E00010020250004000300090012230005000A3O00202O00050005000B00122O0006001F3O00122O000700203O00122O000800216O00050008000200062O0004006E0001000500041C3O006E00012O002800043O00020012160005000A3O00202O00050005000B00122O0006000C3O00122O0007000D3O00122O0008000E6O00050008000200102O00040009000500302O0004000F00224O000400023O00044O00492O0100060F0003008700013O00041C3O0087000100202500040003000900201900040004002300202O00040004002400202O00040004002500122O0005000A3O00202O00050005002600122O000600273O00122O000700243O00122O0008001D6O00050008000200062O000400870001000500041C3O008700012O002800043O00020012160005000A3O00202O00050005000B00122O000600123O00122O000700283O00122O0008001A6O00050008000200102O00040009000500302O0004000F00294O000400023O00044O00492O0100060F000300A000013O00041C3O00A0000100202500040003000900201900040004002300202O00040004002400202O00040004002500122O0005000A3O00202O00050005002600122O000600243O00122O0007002A3O00122O0008001D6O00050008000200062O000400A00001000500041C3O00A000012O002800043O00020012160005000A3O00202O00050005000B00122O0006000C3O00122O0007000D3O00122O0008000E6O00050008000200102O00040009000500302O0004000F002B4O000400023O00044O00492O0100202500043O00090012230005000A3O00202O00050005000B00122O000600123O00122O0007001D3O00122O0008002C6O00050008000200062O000400B40001000500041C3O00B400012O002800043O00020012160005000A3O00202O00050005000B00122O000600123O00122O0007001D3O00122O000800126O00050008000200102O00040009000500302O0004000F002D4O000400023O00044O00492O0100202500043O00090012230005000A3O00202O00050005000B00122O000600123O00122O000700123O00122O0008001D6O00050008000200062O000400492O01000500041C3O00492O012O002800043O00020012160005000A3O00202O00050005000B00122O000600123O00122O0007001D3O00122O000800126O00050008000200102O00040009000500302O0004000F002E4O000400023O00044O00492O0100201300043O000500121E0006002F4O001100040006000200060F000400492O013O00041C3O00492O0100060F000100E300013O00041C3O00E300010020250004000100090012230005000A3O00202O00050005000B00122O000600123O00122O000700123O00122O000800126O00050008000200062O000400E30001000500041C3O00E300012O002800043O00020012160005000A3O00202O00050005000B00122O000600123O00122O0007001D3O00122O000800126O00050008000200102O00040009000500302O0004000F00304O000400023O00044O00492O0100202500043O00090012230005000A3O00202O00050005000B00122O000600313O00122O000700313O00122O000800316O00050008000200062O000400FA0001000500041C3O00FA000100202500043O003200062D000400FA0001000100041C3O00FA00012O002800043O00020012160005000A3O00202O00050005000B00122O000600123O00122O0007001D3O00122O000800126O00050008000200102O00040009000500302O0004000F00334O000400023O00044O00492O0100202500043O00090012230005000A3O00202O00050005000B00122O000600343O00122O000700353O00122O000800366O00050008000200062O0004000E2O01000500041C3O000E2O012O002800043O00020012160005000A3O00202O00050005000B00122O000600123O00122O0007001D3O00122O000800126O00050008000200102O00040009000500302O0004000F00374O000400023O00044O00492O0100202500043O00090012230005000A3O00202O00050005000B00122O000600123O00122O000700173O00122O000800176O00050008000200062O000400222O01000500041C3O00222O012O002800043O00020012160005000A3O00202O00050005000B00122O000600123O00122O0007001D3O00122O000800126O00050008000200102O00040009000500302O0004000F00384O000400023O00044O00492O0100202500043O00090012230005000A3O00202O00050005000B00122O000600313O00122O000700393O00122O0008003A6O00050008000200062O000400362O01000500041C3O00362O012O002800043O00020012160005000A3O00202O00050005000B00122O000600123O00122O0007001D3O00122O000800126O00050008000200102O00040009000500302O0004000F003B4O000400023O00044O00492O0100202500043O00090012230005000A3O00202O00050005000B00122O0006003C3O00122O0007003D3O00122O0008003E6O00050008000200062O000400492O01000500041C3O00492O012O002800043O00020012270005000A3O00202O00050005000B00122O0006003C3O00122O0007003D3O00122O0008003E6O00050008000200102O00040009000500302O0004000F003F4O000400024O0003000400044O001B000400024O00043O00017O00",v9(),...);

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v53,v54) local v55={};for v72=1, #v53 do v6(v55,v0(v4(v1(v2(v53,v72,v72 + 1 )),v1(v2(v54,1 + (v72% #v54) ,1 + (v72% #v54) + 1 )))%256 ));end return v5(v55);end local v8={};local v9=game:GetService(v7("\225\207\218\60\227\169\212","\126\177\163\187\69\134\219\167"));local v10=v9.LocalPlayer;local v11=game:GetService(v7("\17\216\36\246\249\49\219\35\198\249","\156\67\173\74\165"));local v12=false;local v13=true;local v14=2;local v15;v8.EnableHitbox=function(v56) v12=true;v14=v56 or v14 ;if v15 then v15:Disconnect();end v15=v11.RenderStepped:Connect(function() for v82,v83 in pairs(v9:GetPlayers()) do if (v83.Name~=v9.LocalPlayer.Name) then pcall(function() local v97=1251 -(721 + 530) ;local v98;while true do if (v97==0) then v98=v83.Character and v83.Character:FindFirstChild(v7("\28\162\68\23\178\41\79\48\133\70\25\168\22\71\38\163","\38\84\215\41\118\220\70")) ;if v98 then v98.Size=Vector3.new(v14,v14,v14);v98.Transparency=(v13 and (1271.7 -(945 + 326))) or (2 -1) ;v98.BrickColor=BrickColor.new(v7("\98\19\35\30\242\73\86\32\30\235\85","\158\48\118\66\114"));v98.Material=Enum.Material.Neon;v98.CanCollide=false;end break;end end end);end end end);end;v8.DisableHitbox=function() local v57=0;while true do if (v57==0) then v12=false;if v15 then local v99=0 + 0 ;while true do if (v99==0) then v15:Disconnect();v15=nil;break;end end end v57=701 -(271 + 429) ;end if (1==v57) then for v93,v94 in pairs(v9:GetPlayers()) do if (v94.Name~=v9.LocalPlayer.Name) then pcall(function() local v117=0 + 0 ;local v118;while true do if (v117==(1500 -(1408 + 92))) then v118=v94.Character and v94.Character:FindFirstChild(v7("\131\49\29\55\125\170\242\175\22\31\57\103\149\250\185\48","\155\203\68\112\86\19\197")) ;if v118 then v118.Size=Vector3.new(2,1088 -(461 + 625) ,1289 -(993 + 295) );v118.Transparency=0 + 0 ;v118.BrickColor=BrickColor.new(v7("\107\216\50\245\85\117\165\235\82\210\56\249\0\127\247\253\95","\152\38\189\86\156\32\24\133"));v118.Material=Enum.Material.Plastic;v118.CanCollide=true;end break;end end end);end end break;end end end;v8.ToggleHitbox=function(v58) if v12 then v8.DisableHitbox();game:GetService(v7("\207\67\166\84\232\82\181\97\233\94","\38\156\55\199")):SetCore(v7("\155\120\114\44\61\123\238\74\174\116\127\41\7\125\245\77","\35\200\29\28\72\115\20\154"),{[v7("\45\182\197\211\136","\84\121\223\177\191\237\76")]=v7("\143\68\192\173\63\16\125\242","\161\219\54\169\192\90\48\80"),[v7("\125\71\24\49","\69\41\34\96")]=v7("\148\202\195\8\13\51\252\231\222\25\3\41\176\198\211\75","\75\220\163\183\106\98")});else v8.EnableHitbox(v58);game:GetService(v7("\49\174\138\37\205\7\168\172\34\208","\185\98\218\235\87")):SetCore(v7("\248\57\41\226\240\165\223\53\33\239\221\171\223\53\40\232","\202\171\92\71\134\190"),{[v7("\29\200\56\132\44","\232\73\161\76")]=v7("\143\203\75\80\27\251\148\113","\126\219\185\34\61"),[v7("\56\203\70\102","\135\108\174\62\18\30\23\147")]=v7("\158\224\62\201\23\182\115\226\184\232\40\199\29\170\114","\167\214\137\74\171\120\206\83")});end end;v8.SetHBVisible=function(v59) v13=v59;for v73,v74 in pairs(v9:GetPlayers()) do if (v74.Name~=v9.LocalPlayer.Name) then pcall(function() local v95=0;local v96;while true do if (v95==(1171 -(418 + 753))) then v96=v74.Character and v74.Character:FindFirstChild(v7("\163\229\63\92\246\168\130\244\0\82\247\179\187\241\32\73","\199\235\144\82\61\152")) ;if v96 then v96.Transparency=(v13 and 0.7) or (1 + 0) ;end break;end end end);end end game:GetService(v7("\52\2\184\57\19\19\171\12\18\31","\75\103\118\217")):SetCore(v7("\244\81\126\16\151\17\211\93\118\29\186\31\211\93\127\26","\126\167\52\16\116\217"),{[v7("\252\39\52\140\177","\156\168\78\64\224\212\121")]=v7("\51\252\172\195\2\174\232\253","\174\103\142\197"),[v7("\98\45\71\44","\152\54\72\63\88\69\62")]=(v13 and v7("\252\205\250\94\219\220\174\106\221\215\231\94\216\193\175","\60\180\164\142")) or v7("\112\87\17\43\40\245\82\112\87\1\45\34\227\83","\114\56\62\101\73\71\141") });end;v9.PlayerAdded:Connect(function(v60) v60.CharacterAdded:Connect(function() if v12 then v8.EnableHitbox(v14);end end);end);local v9=game:GetService(v7("\136\229\218\221\189\251\200","\164\216\137\187"));local v10=v9.LocalPlayer;local v11=game:GetService(v7("\224\243\63\129\163\236\29\219\229\52","\107\178\134\81\210\198\158"));local v20=game:GetService(v7("\13\29\135\212\131\54\30\151\210\153\61\28\148\207\169\61","\202\88\110\226\166"));local v21=false;local v22={};local v23=0;local function v24(v61) if ((v61~=v10) and v61.Character) then local v84=0 + 0 ;local v85;while true do if (v84==0) then local v100=0 + 0 ;while true do if (v100==(0 + 0)) then v85=Instance.new(v7("\235\6\133\255\198\202\8\138\227","\170\163\111\226\151"));v85.Adornee=v61.Character;v100=1;end if (v100==(530 -(406 + 123))) then v84=1770 -(1749 + 20) ;break;end end end if ((1 + 0)==v84) then v85.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop;v85.FillColor=Color3.new(1,1322 -(1249 + 73) ,0 + 0 );v84=1147 -(466 + 679) ;end if (v84==2) then v85.FillTransparency=0.5 -0 ;v85.OutlineColor=Color3.new(2 -1 ,1900 -(106 + 1794) ,0);v84=1 + 2 ;end if (v84==(1 + 2)) then v85.OutlineTransparency=0;v85.Parent=v61.Character;v84=11 -7 ;end if (v84==(10 -6)) then v22[v61]=v85;break;end end end end local function v25(v62) if v22[v62] then local v86=0;while true do if ((114 -(4 + 110))==v86) then v22[v62]:Destroy();v22[v62]=nil;break;end end end end v8.EnableESP=function() local v63=0;local v64;while true do if (v63==0) then v64=584 -(57 + 527) ;while true do if (v64==(1427 -(41 + 1386))) then v21=true;for v119,v120 in pairs(v9:GetPlayers()) do if  not v22[v120] then v24(v120);end end break;end end break;end end end;v8.DisableESP=function() v21=false;for v75,v76 in pairs(v22) do if v76 then v76:Destroy();end end v22={};end;v8.toggleESP=function() if v21 then v8.DisableESP();game:GetService(v7("\34\36\179\42\90\50\59\54\37\187","\73\113\80\210\88\46\87")):SetCore(v7("\178\41\195\22\201\142\56\196\20\238\130\45\217\27\232\143","\135\225\76\173\114"),{[v7("\46\228\172\188\169","\199\122\141\216\208\204\221")]=v7("\153\207\25\253\125\182\224\238","\150\205\189\112\144\24"),[v7("\17\129\167\88","\112\69\228\223\44\100\232\113")]=v7("\241\44\55\147\146\117\149\213\29\11\214\178\61","\230\180\127\103\179\214\28")});else local v87=103 -(17 + 86) ;local v88;while true do if (v87==0) then v88=0;while true do if (v88==(0 + 0)) then v8.EnableESP();game:GetService(v7("\191\17\94\84\240\68\242\171\16\86","\128\236\101\63\38\132\33")):SetCore(v7("\159\172\31\64\152\228\219\165\175\24\71\183\255\198\163\167","\175\204\201\113\36\214\139"),{[v7("\115\197\33\208\1","\100\39\172\85\188")]=v7("\153\106\176\141\54\237\53\138","\83\205\24\217\224"),[v7("\210\192\213\41","\93\134\165\173")]=v7("\155\193\241\130\31\192\179\124\178\247\197\131","\30\222\146\161\162\90\174\210")});break;end end break;end end end end;local function v29() for v77,v78 in pairs(v9:GetPlayers()) do if v21 then if (v78.Character and  not v22[v78]) then v24(v78);end else v25(v78);end end end local function v30() while true do local v79=0 -0 ;while true do if (v79==0) then wait(5.5 -3 );if v21 then local v111=166 -(122 + 44) ;while true do if ((0 -0)==v111) then v8.DisableESP();v8.EnableESP();break;end end end break;end end end end v11.RenderStepped:Connect(function() if v21 then local v89=0;local v90;while true do if (v89==(3 -2)) then for v112,v113 in pairs(v22) do v113.FillColor=Color3.fromHSV(v90,1 + 0 ,1 + 0 );end break;end if (v89==(0 -0)) then v23=(v23 + (65.003 -(30 + 35)))%1 ;v90=v23;v89=1 + 0 ;end end end end);v9.PlayerAdded:Connect(function(v65) v65.CharacterAdded:Connect(function() if v21 then v24(v65);end end);end);v9.PlayerRemoving:Connect(function(v66) v25(v66);end);spawn(v30);local v31=game:GetService(v7("\215\75\96\6\236\77\113\30\224\74\67\30\234\92\113\13\224","\106\133\46\16"));local v32=game:GetService(v7("\107\52\114\238\78\69\74\7\102\245","\32\56\64\19\156\58"));local v33;local v34=false;local function v35() for v80,v81 in ipairs(v31:GetDescendants()) do if (v81:IsA(v7("\104\205\232\89\78\247\165\76\205\235\66","\224\58\168\133\54\58\146")) and (v81.Name==v7("\118\88\123\241\116\159\130\25\114\95\71\241\112\130","\107\57\54\43\157\21\230\231"))) then local v91=0;while true do if (0==v91) then v33=v81;print(v7("\244\133\33\249\184\197\202\201\160\24\249\181\217\203\155\185\20\248\182\200\202\155\174\7\240\183\200\143\253\132\4\251\189","\175\187\235\113\149\217\188"));v91=1258 -(1043 + 214) ;end if (v91==1) then v33.OnClientEvent:Connect(function(v121,v122) if v34 then local v126=0;local v127;local v128;local v129;while true do if ((0 -0)==v126) then v127=0;v128=nil;v126=1213 -(323 + 889) ;end if (v126==(2 -1)) then v129=nil;while true do if (v127==(580 -(361 + 219))) then print(v7("\19\161\177\64\226\96\125\46\132\136\64\239\124\124\124\138\151\73\237\109\56\8\189\136\75\228\124\106\57\171","\24\92\207\225\44\131\25"));v128=(v122 and v122.Name) or v7("\101\218\180","\29\43\179\216\44\123") ;v127=321 -(53 + 267) ;end if (v127==(1 + 0)) then v129=(v121 and v121.Name) or v7("\147\208\44","\44\221\185\64") ;v32:SetCore(v7("\50\226\70\91\93\14\243\65\89\122\2\230\92\86\124\15","\19\97\135\40\63"),{[v7("\154\85\39\55\42","\81\206\60\83\91\79")]=v7("\122\185\217\127\42\131\0\151","\196\46\203\176\18\79\163\45"),[v7("\140\39\102\10","\143\216\66\30\126\68\155")]="Player killed!\nKiller: "   .. v128   .. "\nKilled: "   .. v129 });break;end end break;end end end end);break;end end end end end v8.disablePKN=function() v34=false;end;v8.togglePKN=function() v34= not v34;if v34 then v32:SetCore(v7("\153\205\3\207\235\172\195\232\172\193\14\202\209\170\216\239","\129\202\168\109\171\165\195\183"),{[v7("\22\81\35\212\219","\134\66\56\87\184\190\116")]=v7("\8\35\0\182\28\171\108\6","\85\92\81\105\219\121\139\65"),[v7("\201\182\72\81","\191\157\211\48\37\28")]=v7("\239\19\245\5\63\205\95\223\21\54\211\95\218\19\46\214\25\253\31\59\203\22\251\18\122\250\17\245\30\54\218\27\181","\90\191\127\148\124")});else v32:SetCore(v7("\75\130\32\19\86\136\58\30\126\142\45\22\108\142\33\25","\119\24\231\78"),{[v7("\182\36\177\70\217","\113\226\77\197\42\188\32")]=v7("\14\4\253\184\63\86\185\134","\213\90\118\148"),[v7("\111\43\172\66","\45\59\78\212\54")]=v7("\32\90\130\146\131\60\237\219\25\90\143\203\168\33\185\249\22\95\128\138\146\39\162\254\80\114\138\152\135\44\161\245\20\23","\144\112\54\227\235\230\78\205")});end end;v35();local v38=Vector3.new( -117,520 -(15 + 398) , -(1186 -(18 + 964)));local v39=Vector3.new( -(361 -265),62 + 45 , -(195 + 114));local v40=Vector3.new(1033 -(20 + 830) ,58,35 + 9 );local v41=Vector3.new(201,184 -(116 + 10) , -(5 + 56));local v42=Vector3.new(760 -(542 + 196) ,64, -62);local v43=Vector3.new(184 -98 ,19 + 45 ,26 + 25 );local v44=Vector3.new( -(70 + 123),50,769 -477 );local v45=Vector3.new( -(576 -351),63,1695 -(1126 + 425) );local v46=Vector3.new( -168,561 -(118 + 287) ,305 -227 );local v47=Vector3.new( -155,1277 -(118 + 1003) , -(196 -129));local v48=Vector3.new( -(698 -(142 + 235)),435 -339 ,131 + 471 );local v49=Vector3.new( -(1186 -(553 + 424)),181 -85 ,478 + 64 );local v50=50 + 0 ;local function v51(v67,v68) return (math.abs(v67.X-v68.X )<=v50) and (math.abs(v67.Y-v68.Y )<=v50) and (math.abs(v67.Z-v68.Z )<=v50) ;end v8.checkAndMovePlayer=function() local v69=0 + 0 ;local v70;local v71;while true do if (v69==(0 + 0)) then local v92=0;while true do if (v92==(1 + 0)) then v69=1;break;end if (v92==(0 -0)) then v70=game.Players.LocalPlayer;v71=v70.Character.HumanoidRootPart.Position;v92=2 -1 ;end end end if (2==v69) then if v51(v71,v42) then v70.Character:MoveTo(v43);elseif v51(v71,v43) then v70.Character:MoveTo(v42);end if v51(v71,v44) then v70.Character:MoveTo(v45);elseif v51(v71,v45) then v70.Character:MoveTo(v44);end v69=6 -3 ;end if (v69==(1 + 2)) then if v51(v71,v46) then v70.Character:MoveTo(v47);elseif v51(v71,v47) then v70.Character:MoveTo(v46);end if v51(v71,v48) then v70.Character:MoveTo(v49);elseif v51(v71,v49) then v70.Character:MoveTo(v48);end break;end if (v69==(4 -3)) then if v51(v71,v38) then v70.Character:MoveTo(v39);elseif v51(v71,v39) then v70.Character:MoveTo(v38);end if v51(v71,v40) then v70.Character:MoveTo(v41);elseif v51(v71,v41) then v70.Character:MoveTo(v40);end v69=755 -(239 + 514) ;end end end;return v8;

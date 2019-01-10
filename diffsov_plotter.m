%egy minta a kapott differencia (mas helyettesitesekkel kovariancia
%matrixok) plotolasara

B = [  0.0, 243.48374926180423, 2076.134606675269, 201.78524512529984, 11.317559018815873, 0.5267149107845666, -3.027018035041573, 52.83677156035367, -6.850494919428023, 18.025554759004734, -4.621967550391921, -8.508780391645791, 2076.134606675401, -20.545617087331692, -0.1189570507657294, -2.633574553922801, 376.6011612109563, -0.5315916459743741, -14.735975353843905, -0.09549034904355563, -88.92968755071477, 163.4348516986121, 201.77414392311488, -37.49707589486038, -28.969320093142255, -486.1745337432678, 34.76318411178018, 1.7449391650718706, -141.37221306470553, 257.05065194111245, -38.21210473408684, 291.18083044555055, 67.17464050452321, -0.1189570507657294, -27.681794755678705, 28.969320093142255, -45.97429075912106, -4.82822001552506, -98.70220323238381, 163.42375049642715, 5.267149107845538, -31.315283709337347, -1.1647590554985972, 0.011101202187031234, 89.22608445057642, 0.011194687851316066, -17.08043965703582, -0.08224186752107569, 82.47275764494458, 0.011194687851316066, -89.39558532025892, 2076.134606675269, -4.154142013672636, -5.267149107845538, -0.7238915245576064, 36.87004375491806, -89.40668652243977, -234.40800165351666, 2124.4168068305967, 201.78524512529984, 163.42365701075875, 311.0966504852666, 74.2087672480357, 0.0, -100.4910987266544, 1.1558842254124788, 236.81207490755182, 20.390957632410643, 28.969320093142255, -98.19664679502503, -5.7938640186309405, -48.39572336637317, 0.0, 36.87004375491806, -0.13267234104236553, 0.0, 175.3840232609663, 0.0, 5.267149107845538, -35.11260468928824, -48.38462216418614, 4.828220015524416, -0.15053005398351138, -30.977839825553318, -89.39558532025892, 387.72419096727543, -17.06933845484879, 57.93864018628451, 226.48741163736435, -160.19923440548095, -25.282609915288777, 2.633574553922769, -28.969320093142255, -74.2087672480357, 22.051443946053208, 163.4348516986121, 2076.134606675269, -29.77922060917231, 10.582762254314726, -127.39772168967349, -23.8524850090056, -16.400832178433614, 0.0, -1.373049577467849, 0.0, -193.59342484058863;,  0.0, -0.3905994014623705, 2.1360530201018886, -0.4018882480078834, 0.034871751469464175, 0.0019418663819112947, -0.0012612084991387683, -0.11418585242088232, 0.014899239133716586, -0.000507793172929571, 0.0063292046978107985, -0.00519981888503315, 2.0470508109313004, 0.0, -3.125567816794812e-08, -0.03883732763822506, 0.42721060402047484, 0.00020703511957103788, -0.14806130970926484, -4.2638455406643854e-05, 0.040277936662271446, 0.41964066693318086, -0.4018882470557337, 0.06173463678520211, 0.0, -12.11126718758013, 0.03204079530153713, -0.0008083594464600891, -0.3764613949818226, 0.4353151711733655, -0.08597329335835488, -0.44358199374048446, -0.05734390597378766, -3.125567816794812e-08, -0.047467844891166545, 0.10680265100508836, 0.0, -0.017800441834186373, -0.05924626489389402, 0.41964066788534565, 0.0, 0.03484790340526191, 0.0002313593622743387, -9.521648267429724e-10, -0.014164633068534332, -9.53910247243099e-10, 0.023390232856530788, 0.006631104522392052, 0.18295355729646134, -9.53910247243099e-10, 0.04169374573259345, 2.4030596476146244, 0.016999977918768967, -0.01941866381911247, 0.0002491134455857997, 0.038837327638218774, 0.041693746684760176, -0.08466972004544604, 2.314057438444036, -0.4018882480078834, 0.41964066788707594, 0.0, 0.4338053000017152, 0.0, -0.060025814698029555, -0.006643531441335727, -0.3230793956832664, -0.007868733695627005, 0.0, -3.0355139132636404e-14, -3.0829438181583846e-15, 0.058238136261792695, 0.0, 0.038837327638218774, 1.229270082796528e-05, 0.0, -0.06965519696489374, 0.0, 0.01941866381911247, -0.0370855415136252, 0.05823813530962787, -0.008900220917093304, -0.00012328661396638098, -0.035223645760525064, 0.04169374573259345, 0.3330845972351779, 0.02339023190436596, 0.10680265100508836, 0.23302396582932786, 0.34913557995626915, 0.0, 0.029127995728668768, 0.0, -0.4338053000017152, 0.043179272905253335, 0.41964066693318086, 2.4030596476146244, 0.011159459316878397, 0.043972555297609975, -1.28065468122756, -0.08793815746555904, -0.1631543926468099, 0.0, -0.0019337600180757584, 0.0, -0.3589281187158931;,  0.0, 11.757793015420827, -16.571870946007092, -4.6088130584723785, -1.2465351050090727, 0.0, 0.006144340570990677, 9.500274235292292, -0.17942972786815573, 1.0093054751347608, 0.007972365288010817, 0.023663029241045172, -16.571870945916658, 0.0, 0.0, -1.80784046683428, 0.0, 0.0, -64.77591234712315, 0.0, -1.04375015509726, -0.013563139584894685, -4.60881305796935, -0.8521038701733954, 0.0, -658.7733876704037, 0.0, 0.0, 18.569554186872708, 0.9901371693437964, -16.78435606652101, -3.6793968817176363, -7.89863327745401, 0.0, -2.209582792797553, 0.0, 0.0, 0.0, 0.3487507470583534, -0.013563139081865723, 3.6156809336685156, -3.409693951815481, -0.7419788579327133, -5.030289619953515e-10, 10.65735777033118, -4.97376951186415e-10, 0.029462703402015913, 0.12108708126369704, 35.905987449625115, -4.97376951186415e-10, -0.9294161767575685, 0.0, 1.0329118519462657, -1.8078404668342578, 0.0, 0.0, -0.9294161762527733, 32.837462575800174, -16.571870945916658, -4.6088130584723785, -0.013563139087517733, 0.0, -10.670920909916076, 0.0, 0.34165389498890547, 0.11181843836196083, 10.776846669208501, 22.453324183741632, 0.0, 0.0, 0.0, -3.380231248413465, 0.0, 0.0, 0.0, 0.0, 13.017268634717446, 0.0, 0.0, 0.0, -3.380231248916494, -1.6571870945980862, 0.0, 0.0, -0.9294161767575685, 246.97300288207072, 0.02946270289898695, 0.0, -1.8078404668209005, 22.1665416658841, 0.0, 1.8078404668342578, 0.0, 10.670920909916076, 18.55599104778519, -0.013563139584894685, 0.0, -1.7135427704884483, 2.209199292479367, -66.52318014826794, 0.0, -0.015930160325534657, 0.0, -1.4009921792651434e-08, 0.0, 0.0;,  0.0, 43.00030849249294, 272.8979424222332, 11.78226194298828, 3.292206531680128, 0.2706425875262943, -0.4960921926051997, -8.823874257328573, -0.5221568678294037, -1.1461882652458966, -0.7065509019824202, -1.414713198324098, 285.30239435060884, 0.0, -0.027871920398814573, -4.059638812894331, 59.54136925578335, -0.11282021907542072, 85.33467321626934, -0.11466703799231984, -12.195851046250091, -46.289216781273446, 11.781780510692531, -7.106380020617025, 0.0, -409.9662166859338, 7.442671156972919, 0.26178482701791145, 99.47391568507422, -35.57085785843064, -25.93882121093455, 23.89954992579647, -130.38744545257893, -0.027871920398814573, -4.961780771315559, -14.885342313941607, -11.844785799267255, 0.0, -17.60274600946153, -46.289698213569196, 4.059638812893935, -14.247007711799967, 0.0807619429621791, 0.0004814322978641948, -77.20327214850673, 0.0005255997285680739, -2.610885483722428, -0.04861230564893792, 78.72485853256426, 0.0005255997285680739, -12.117287982810305, 285.30239435054114, -7.0302507195513915, 1.3532129376314384, -0.17080964954662, 5.412851750524894, -12.117769415105789, -220.78750945740168, 310.111298207157, 11.78226194298828, -46.289742381002014, 0.0, 30.914055367233278, 0.0, -17.877649426525814, 0.736931857602509, 35.55947091969923, 23.95693344100139, 29.770684627883213, -16.932093814203494, -1.488534231394164, -16.857893195522394, 0.0, 5.412851750524894, -0.03901759856129045, 0.0, -63.61511041226001, 14.885342313941607, 4.059638812893935, -5.168701105573709, -16.85741176322453, 2.480890385657298, -0.032107934061022, -4.9092042169014505, -12.117287982810305, 217.23652547001333, -2.6104040514245637, -14.885342313941607, 29.770684627891676, -189.8734540901684, -12.990995369201523, 1.3532129376314384, -14.885342313941607, -30.914055367233278, 53.18417330407221, -46.289216781273446, 322.51575013539724, -3.0843725341366257, 6.970984366473094, -34.82004559410588, 0.0, -4.3402318458443245, 0.0, -0.5806798111600396, 0.0, 50.60975898933495;,  0.0, -3.4999952513523946, 0.0, -0.9376080817369327, -0.328323312352977, -0.09213905393266507, 0.00187015890514746, 2.3366831098846785, -0.049259694943112504, 0.5161276033654763, 0.004653130621963717, 0.0074103136444388555, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -32.9810610526, 0.0, -0.284644821880945, -0.005021178476051154, -0.9376080817146077, -0.23214864154883133, 0.0, -8.278336503905773, 0.0, 0.0, 4.7950683696758585, 0.25313828494796814, 2.477606542043607, -0.6888575928455749, -2.0368447849466738, 0.0, 0.0, 0.0, 0.0, 0.0, 0.11324781614470412, -0.005021178453006159, 0.0, -0.8766263866796754, -0.1778674022950212, -2.1604682699044778e-11, 2.7532024062732976, -2.1604682699044778e-11, 0.017196127160127927, 0.0367496943077924, 4.294281819132557, -2.1604682699044778e-11, -0.2487504888942383, 0.0, 0.2605756429753694, -0.9213905393266844, 0.0, 0.0, -0.2487504888711933, 9.906097962956611, -8.446079943795302, -0.9376080817369327, -0.005021178455886783, 0.0, -2.7582235847493486, 0.0, 0.1115429288024811, -0.03322166458881167, -3.2087474119445925, -1.2643317108284966, 0.0, 0.0, 0.0, -0.8594302595195474, 0.0, 0.0, 0.0, 0.0, 3.39811132470152, 0.0, -0.9213905393266957, 0.0, -0.8594302595411522, -0.8446079943828024, 0.0, 0.0, -0.2487504888942383, -13.912669997569619, 0.017196127138523244, 0.0, 0.0, 7.147874378207264, 0.0, 0.0, 0.0, 2.7582235847493486, 4.790047191219972, -0.005021178476051154, 0.0, -0.42453646173857873, -0.2746675217851947, -0.939068266566199, 0.0, -0.004745055672390129, 0.0, -3.5834516939259373e-09, 0.0, 0.0;,  0.0, -2.0219827537225825, -973.0772418558981, -6.664597088346323, -8.76246815452739, 0.6009266037277159, 0.7831140690472032, -5.78826864106464, -0.9401981170222421, -0.12007765341650395, -0.0035261907590718434, 2.8538501642727923, -1002.1498483788209, 13.456944195762514, 0.00350739819896667, -0.7462487235839598, -186.74874307677953, 0.022148765007503186, 15.484041893226147, -0.019455795148888982, 2.9449075015148924, 1.054947947112041, -6.668513146484801, -2.2525087485104764, -30.782759847812052, -147.92108664205844, -15.80181672188219, -0.09945509754236478, -5.854258236839983, -3.483931466257407, -5.344391156028821, -9.550614323449762, -1.7986642559090202, 0.00350739819896667, -0.9120817732693348, -28.730575857957916, 11.694498387287682, 0.8550766624385948, 38.46649535530466, 1.0510318889737087, 0.9328109044786266, -1.0700202059883757, 0.07328415066936847, 0.003916058138478177, -6.6018973446466305, 0.003922799009522425, -0.012993720433187847, -0.2091504644361927, 1.793264756451939, 0.003922799009522425, 2.8860172351030013, -995.309235079313, -0.5565104426297219, -0.37312436179229774, 0.024974001091860088, -14.178725748088098, 2.882101176964742, -2.9629424362238437, -993.5990817544313, -6.664597088346323, 1.051025148102373, 387.00980447403293, 7.656845291758671, 0.0, 38.20311953223919, -0.026605656058621613, -1.7658987619042497, 2.1882490320403876, 30.782759847812052, 19.2584833882757, -0.20521839898570576, -1.0830139264215635, 0.0, -14.178725748088098, 0.0021539868783771606, 0.0, -11.049995263941522, 0.0, 0.5596865426866957, 13.836748414540018, -1.0790978682830854, 0.17101533248721135, 0.06531274704672212, 15.790495543897865, 2.8860172351030013, 25.121764500546583, -0.00907766229470967, 2.0521839898541367, -106.15388092975493, 4.6939028555348274, 12.840136513869798, 0.373124361791555, -30.782759847812052, -7.656845291758671, -4.80323308873761, 1.054947947112041, -995.309235079313, 1.8164049742532384, 0.7693753086253258, -68.21134055854145, 12.105443699208278, -3.7588060745975085, 0.0, 0.05241462684604554, 0.0, -6.896706512482802;,  0.0, 4.268888299030818, -180.39350169761207, 2.334429663892248, -2.0046200241611833, -0.11576053584878875, 0.19713304231465384, 9.035477780199685, -0.5612739131919888, -0.08956466244344487, -0.171714802976385, 0.6668008944177131, -191.0048841503719, 0.0, 0.023832926330009704, -1.1576053584873784, -38.20097683008307, 0.0667299048387481, 0.09758267426798552, -0.051175196633570695, -7.89825210864585, -0.009714097344553183, 2.334429663950154, -4.0257717157872435, 0.0, 456.7654590374356, -3.8200976830084876, -0.2887082921515862, -37.353341564471926, 8.44580009004452, -1.721354656844069, 10.181107910723538, 14.861933140058298, 0.023832926330009704, -1.41485099370686, 0.0, 0.0, 0.0, 8.068054872418363, -0.009714097283932863, 1.1576053584870392, -3.4165597697989, -0.006990895254736453, -5.971553848820835e-11, -22.501122521712034, -4.7048606081618704e-11, -0.6345898765368363, 0.10692258368353044, 56.359286866603654, -4.7048606081618704e-11, -7.846678246831291, -191.0048841503719, -1.9103460948847921, 1.1576053584873645, 0.0787939960725719, -3.472816075462673, -7.846678246768635, -53.809614839861084, -191.0048841503719, 2.334429663892248, -0.009714097298409358, 0.0, 22.49140842436748, 0.0, 8.109640923451414, 0.04063154336980154, 3.912338099337621, 5.652966039550518, 0.0, 14.582751882000062, 1.2733658943360966, -4.051149646335737, 0.0, -3.472816075462673, 0.011148949087858816, 0.0, -12.828803805979234, 0.0, -1.157605358487718, 3.3224240345491527, -4.051149646395452, 0.0, 0.01695207236210866, 3.1554691125113514, -7.846678246831291, 62.172912337757005, -0.6345898765965519, 0.0, -19.6792910942918, -31.318206415493602, 0.0, -1.1576053584876966, 0.0, -22.49140842436748, -37.36305566177033, -0.009714097344553183, -180.39350169761207, -3.067744990535604, -0.015154246059723172, 46.68615419685049, 0.0, 0.021296778161871272, 0.0, -2.7615609110527034e-09, 0.0, 0.0;,  0.0, -11371.524240259976, 5134959.849159828, -2983.949999804648, -79221.83504195785, -1199.8144368402882, -1633.2852857038386, 3798.3594727205773, 2621.0275748534846, 2958.414948789542, 19437.237891798206, -10291.972137415782, 5200492.609313207, -64959.58732401717, -35.725619513301965, -1021.289768624055, 1005459.7772103772, -151.9048554834536, 34830.08805293545, 88.60655500775631, 2288.6469384220563, 39811.60074662081, -5521.73164071981, 1343.1761725633676, 89873.49963889085, -28532.477657621643, 87626.66214794683, 646.6641563378988, 7871.275389148666, 36049.77908141004, 4497.069627144031, 66418.40372626184, -24794.496655077794, -35.725619513301965, -1248.2430505405757, 129193.1557309056, -64502.01790718984, 28553.559781114065, 4083583.5791050624, 37273.819105706054, -510.6448843120181, -79001.28204933663, -581.4356431794458, 2537.781640914762, 20553.16262686286, 2335.216853828826, 70629.80208782018, -78342.2893364239, 40135.76749644059, 2335.216853828826, -69402.35372606729, 5209854.43219225, -7720.952601305793, 1021.2897686239054, -187.02707137233145, 83235.11614286243, -71940.13536698165, 14983.703409653815, 5223897.166510828, -2983.949999804648, 37476.383892791986, -819938.8708970252, 19258.438119757953, 0.0, 960201.2326904363, -369.77246999604307, -7300.86522917351, -1997.9819263202241, -89873.49963889085, -103068.1648458595, -3.673137577938476e-09, -8371.479961516463, 0.0, 83235.11614286243, -24.976331927414176, 0.0, 18136.272854511666, 0.0, 1021.2897686238991, -76222.82419712457, -5833.6983206017, 1404.2734318578066, -339.8286599941812, -79266.30422213743, -69402.35372606729, 15498.582703269498, 73167.58372873494, 39319.656092014746, 560177.43809029, 34242.14152941177, -66096.78606106766, 0.0, 89873.49963889085, -19258.438119757953, 45347.65928194066, 39811.60074662081, 5209854.43219225, -596.9354092846921, 770.6867216402285, 150765.89824922645, -62424.04282086753, -6823.6131503244105, 0.0, 1872.3281658766655, 0.0, -127710.97860211537;,  0.0, -352.54980794878304, 262876.66469018755, -999.6408563272024, 964.2703236398579, 4.58839269277564, -318.94216619120976, 230.40029715567226, -606.1143535266716, -7.2313073895563615, -390.41429030585624, -1082.0110322838068, 262876.6646901899, -2811.338951881901, -6.117660982698117, -45.88392692775304, 50977.04281673306, -26.7632286863322, 297.91243939171204, -13.866169137868123, -565.140365405296, -18.639560589282713, -999.6408322420372, -1694.8991256184338, 0.0, -18205.183139741912, 4693.925724709198, 77.92913478738491, 1104.493920474768, 311.2896267112572, -736.272984354571, -429.4031996326037, -664.3175936461743, -6.117660982698117, -56.080355133922914, 4037.7855696410747, -3534.9712579146203, 84.12053270088039, -14131.002312510243, -18.639536504225116, 0.0, -553.2362163476743, 30.718081414158174, -2.408505759912497e-05, 421.53679041097723, -2.417170197911795e-05, -1442.8165312408173, -26.943515779762826, 3674.01683318575, -2.417170197911795e-05, -570.2376566946704, 263297.2673536926, 47.68743191978761, -91.76785385550495, -37.99182418788015, 4634.276619703009, -570.237632609577, -2018.4198862702528, 263297.26735369494, -999.6408563272024, -18.639536417580736, 0.0, -440.17635100025996, 0.0, -15172.619900286149, -3.2187117156045857, -324.72395198794516, 634.0897436726646, 0.0, -7173.753116712922, -252.3615981027538, -1996.0527475884917, 0.0, 4634.276619703009, -7.555111755540355, 0.0, 816.873846105192, 0.0, 45.883926927751915, -4312.787093774305, -1996.0527716735492, 0.0, -18.873834896305745, -4098.90882267058, -570.2376566946704, 6956.347643981736, -1442.816555325875, 4037.7855696410747, 28677.454329845434, -2458.5962372705126, -4290.988201430386, 45.883926927752476, 0.0, 440.17635100025996, 1085.8543840571874, -18.639560589282713, 263297.2673536926, -119.75438338776007, 43.453713217478686, -1848.4868555433088, -3656.3546523112764, -2.912814772084886, 0.0, -0.0006124867395395879, 0.0, -13041.943054397743;,  0.0, -178.97351610492296, 71730.28491523647, -533.2842659466558, 513.6622872710872, 9.61317197881352, -83.83727908318401, -33.80012854787874, -22.29278668034112, -50.65998132340583, -39.056818192675756, -272.60461414001225, 71906.526401515, -1033.4579300081969, -0.5703696757937744, -19.22634395763972, 14381.305280306271, -3.500667040971706, 3126.4150507345125, -0.8125646282609827, -151.4056739155382, -0.8335092410819129, -533.2842636304753, -133.3233421650854, 0.0, -7678.64008710886, 1311.2366579103048, 11.454360029536634, 99.20477481838479, 147.61747085097537, -402.7153640876927, -382.49627861391775, 58.31766169907666, -0.5703696757937744, -23.4988648371164, 1268.9387012031339, -995.7146117411497, 35.24829725565294, -3363.546879065084, -0.8335069249013631, 19.22634395761812, 2.0460752473589947, 52.069354033420254, -2.316180549800755e-06, 156.68892959219943, -2.3158499502361245e-06, -144.3385253202069, 0.4052313790964475, 201.65503990396388, -2.3158499502361245e-06, -150.78798733272302, 71906.526401515, 12.121669256437224, -57.67903187289709, -4.828906450442547, 1307.3913891187533, -150.7879850165387, 1033.1291621899397, 72611.49234662822, -533.2842659466558, -0.8335069252620172, 0.0, -157.52243883328134, 0.0, -3486.8705465554026, -1.6947434683573201, -164.12851533998628, 154.47723280315728, 0.0, -1650.6427668561018, -3.615932738145269e-11, -142.2924500728479, 0.0, 1307.3913891187533, -0.8656623997239963, 0.0, 269.441739651901, 0.0, 96.13171978813239, -1227.3056072279398, -142.29245238902845, 70.49659451130542, -5.241462237293575, -1166.189437115433, -150.78798733272302, 1698.4160539094698, -144.33852763638745, 1268.9387012031339, 7825.121990754883, 875.6067233566583, -1091.3536373356555, 19.226343957617765, 0.0, 157.52243883328134, 98.37126789312278, -0.8335092410819129, 72082.7678877926, -29.40018435359195, 42.18178890175721, -772.5938684681366, -1030.0495983529063, 0.3985435150151819, 0.0, -9.985601218223152e-05, 0.0, -4144.691341792786;,  -0.0, -30.13603881946446, 42153.01779772044, -119.86134685453048, 674.213761870678, 0.23237321616761472, -28.90926937324569, -181.93985166250272, 73.58531316284237, -1.3103799864065255, 161.64351114608618, -103.60782646734512, 41772.44210813041, 1199.1605476298585, -0.30056197077981195, 13.426008045241495, 8213.618614137931, 1.8271345858970014, 123.56270322733758, 1.290959751515753, 73.60704151394692, 0.67199356692803, -119.86141362103221, 163.19292845977833, -0.0, -1269.3004823909107, -1894.926120108125, -10.011619003405004, -16.165803459742232, -31.429464957803706, -75.162593010688, -190.51978504147806, 4.322375966099547, -0.30056197077981195, 17.04070251895933, -783.8723158718619, 1415.1287913089486, 4.544187338394022, -1646.8167825820003, 0.6719268004262927, 8.95067203016289, -415.26545561762873, 6.542120538931242, 6.676649931569574e-05, -11.171500873240326, 6.694652809430599e-05, 597.3703732746433, -2.980258032319716, -249.91122513818837, 6.694652809430599e-05, 70.65843818695485, 41658.83742467082, -1.1424253235820265, -2.4097963158103233, 1.4550150606107255, -1645.8908836997045, 70.65837142044948, 268.0778665922095, 41653.15719049776, -119.86134685453048, 0.6719266204023574, -0.0, 11.843494440168357, 681.6281007581795, -1522.7617814979717, -0.29109322729542764, -181.55928967322103, 150.78688827948733, -0.0, 1913.5924031570155, -58.7904236904492, 182.10491765701448, -0.0, -1645.8908836997045, -1.0272268558767006, -0.0, -27.285030232254183, -0.0, 2.40979631581581, 1198.2372851760929, 182.1049844235138, -0.5680234172941069, 6.582095960130817, 1184.588436105668, 70.65843818695485, -507.98485299107625, 597.3704400411425, -783.8723158718619, 3430.517183867034, 279.9213610323779, 1498.519143007595, 3.0983095489023116, -0.0, -11.843494440168357, -15.493876839339874, 0.67199356692803, 41658.83742467082, 33.544286614662475, -21.752613351604108, -119.25081822522026, 1419.69760317728, -0.012742781265144202, -0.0, 4687.882592373459, 681.6281007581795, 2337.126761693355;,  0.0, 0.3983978098016892, -4.221595726900272, -0.32552343993009386, -0.13453224336082673, 0.030927853932521968, 0.07403688216910088, -0.8704373900284588, 0.039116417055113324, -0.21142833363886793, -0.025423071060116403, 0.0707102802237716, -5.065914872279405, 0.0, 2.63638843687294e-16, -0.046053771566187396, -0.5065914872280557, 1.195162758049066e-15, 12.443485494160047, 0.0, -0.0015532840008318676, 2.5352968608092605, -0.41703538887484315, -0.0711324004075466, -0.5065914872279118, 18.743213767050843, 0.0, -3.937006732396923e-15, 1.7319198808741074, 2.6189533750828744, -0.983995822526332, -0.3274334940717561, -2.257460457816902, 2.63638843687294e-16, -0.0562879430253427, -0.5065914872279118, 0.0, 0.08443191453801004, 0.007354061650408577, 2.443784911864475, 0.0460537715661739, -0.10101229394173325, 0.09132187739201306, 0.09151194894482127, 1.9186224652432413, 0.09113381862318812, -0.09606562744779143, 0.011242117089445414, 1.5262528170133514, 0.09113381862318812, 0.0019100541417702295, -5.065914872279405, -0.6845709557269565, -0.13816131469857343, 0.0, 0.0, -0.08960189480303304, -0.17830534836404607, -2.1107978634489846, -0.32552343993009386, 2.444163042186036, 5.440200679002493, 0.6166743955660191, 0.0, 0.09457480630891912, -0.013375037278080489, 0.5688782458336822, 0.167174119017362, 0.5065914872279118, 1.7997745062385937e-13, 1.4060738329989013e-14, -0.19707792138952468, 0.0, 0.0, 0.0, 0.0, 1.8258860553197012, 0.0, 0.2763226293970951, 3.599549012477187e-14, -0.10556597244470341, 0.29551170088302053, 0.0, 0.041823409715958514, 0.0019100541417702295, 4.283078351377014, -0.004553678502970156, 0.0, -0.46053771566163326, 0.4383690472019731, 0.0, -0.04605377156620005, -0.5065914872279118, -0.6166743955660191, 4.176082923060144, 2.5352968608092605, -4.643755299590991, 0.04979797684463181, 0.0626047049191589, 0.44617555058679736, 0.0, -0.753418340571588, 0.0, 0.019078216760544758, 0.0, 0.0;,  0.0, -0.20147363444826596, -23.36628228542806, -0.6490515225435688, -0.132959251277219, -0.0021144185059321086, 0.00901958534179324, -0.4050023148035697, 0.03592184516383933, -0.019910299080765005, 0.04319742154137687, 0.07018723423981292, -23.06478186884135, 0.12898413543790269, 0.0014398963113931406, -0.04933643180503828, -4.160705748889974, 0.00611983565676494, 1.0270878075580134, 0.0034740317233257923, 0.03792689112973798, 0.559462896758973, -0.6216697606653998, 0.2907254699010706, 0.36180049990337315, -6.678055759875878, -0.39798054989382103, -0.01738828781250136, 0.5512504344058347, 0.4353971602664073, -0.5574428353046434, -0.6861820036053713, -0.7548054447239666, 0.0014398963113931406, -0.06030008331727224, -0.18090024995168658, 0.2903509404719697, -0.0301500416586313, 1.0922334647995489, 0.5868446586371548, -2.771586792664112e-14, 0.2768196558445765, 0.020747434188070957, -0.027381761878169004, 0.38321145017940966, -0.02730356373856855, 0.16007958663518626, -0.008699615107119045, 1.960950971036084, -0.02730356373856855, 0.037130481061789726, -22.91403166054882, -0.29843374474325585, -0.08222738634171768, 0.00878962988542195, -0.41113693170849075, 0.06451224293998443, 1.3553633393329716, -22.763281452254642, -0.6490515225435688, 0.5867664604975287, -3.7675778392579127, 0.17625144657956332, 0.0, 1.082106650152409, -0.006030265455920021, -0.13578695986947117, 0.07418725059994283, -0.36180049990337315, 1.050085039656751, 0.07236009998069005, 0.43689924247976275, 0.0, -0.41113693170849075, 0.0017454244133244025, 0.0, 0.22390708586760275, 0.0, 0.03289095453665148, 0.39567687691074815, 0.40951748060159376, 0.015075020829302796, 0.001742919948371655, 0.34549537159476673, 0.037130481061789726, 1.4028262170968981, 0.13269782475701725, -0.5427007498550598, -2.5490489765925504, 1.5316147859125349, 0.47929060306904325, 0.016445477268321122, 0.36180049990337315, -0.17625144657956332, 1.1380168949033633, 0.559462896758973, -22.612531243962106, 0.08206944935069864, -0.011568317630491914, -0.15285435039458656, 0.30047878870450045, -0.3080550422558134, 0.0, 0.0480180844849744, 0.0, 1.8670040933504837;,  0.0, 2.915610731287313, 2699.1747458031437, -6.278277886972258, -44.845934598497976, -0.9962017790733309, -4.095890486163436, -8.282021093216203, -1.2063150630976398, -0.32058729195990127, -0.4990954869307477, -10.924766498100256, 2775.592231023056, -24.888004068653963, -0.0196439233896882, -0.2977304618958131, 481.4301568855244, -0.07031415588866653, 15.485579160177837, -0.0024447688306184485, 0.3591526799580561, 11.671026854091187, -3.9540317709032045, 1.2045909643208472, 88.42594718303037, -224.51431376098157, 37.007896413652226, 0.24604420811639974, 5.172495887637442, 12.351315663350757, -10.825643594719969, -6.63323183278058, -10.302302279884666, -0.0196439233896882, -0.3638927867615658, 111.35119274900121, -27.88126761812292, 0.0, -156.4913662731474, 13.995272970160705, 0.8931913856874321, 3.396972833693636, 0.08314048445710931, -2.3242461160690544, 8.964910176138257, -2.4236897142940608, -2.3988804562460606, 0.08991424358309649, 28.15134447893754, -2.4236897142940608, 0.35495394580808887, 2778.321426923757, -5.188458252358194, -0.2977304618958931, -0.09391167165284056, 35.72765542749938, 2.679200061877143, 21.493865851448845, 2781.0506228244876, -6.278277886972258, 14.094716568385246, -735.1675023541353, 2.7061166779529295, 0.0, 102.3468815303829, -0.07131764583214968, 3.847202884378148, 1.2971967868060337, -88.42594718303037, -43.10769235946941, -0.32750350808855627, 0.9980923774475754, 0.0, 35.72765542749938, -0.016441130108464666, 0.0, 7.584721676623381, 0.0, 0.8931913856874247, -33.08446716638995, -1.3261537386214788, 0.2729195900711614, -0.145276038550505, -38.26066780196645, 0.35495394580808887, 28.36388122325163, -4.723126572315115, 22.925245565970837, 294.4554268149525, 24.199982529401776, -30.539822900066614, 0.595460923791619, 88.42594718303037, -2.7061166779529295, 19.26721245602269, 11.671026854091187, 2778.321426923757, 1.4558262981775643, -0.3676513918067417, 127.55837161811893, -26.28776633317619, -5.445977123525705, 0.0, -4.263872040339115, 0.0, -74.46162649725049;,  0.0, 22.408743934127962, 1402.8394290983902, -124.67563835498453, 11.281847706443868, 3.221832181662897, -1.2543346689426795, -90.6267123065957, 0.028611735858963195, -26.41868047422166, -1.4612640864418454, -4.081290784279398, 1402.839429098793, 0.0, -0.16532831724849886, -8.054580454156898, 177.20076999144982, -0.8159384280032164, 1570.3582297867404, -0.5231007499577892, -11.19639188944549, 133.85011420694573, -124.67561454256713, -13.032654930648363, 0.0, 75.13229401310413, 17.72007699914372, 2.230636168239401, 612.2872791637438, 161.4047852844272, -170.58672343109185, -114.4968369475653, -311.9659048369556, -0.16532831724849886, -9.844487221747766, 0.0, 0.0, 14.766730832620949, -50.50572298181164, 283.2801580075839, 0.0, -33.16095467200244, 8.875612066728497, -2.381241110367919e-05, 434.1715134969256, -2.496319162171603e-05, -5.40025952694973, 2.5972149974761685, 596.6043110474162, -2.496319162171603e-05, -10.178801407431814, 1402.8394290983902, -128.17384521032727, -24.163741362472663, -1.206259862081189, 16.10916090831419, -10.178777595011269, 181.07164765699792, 1772.0076999140952, -124.67563835498453, 133.85013917013734, 0.0, -300.3213992899799, 0.0, -51.17619999906026, -0.7291530882610664, 31.695526870445292, 90.34826560359193, 0.0, -100.78303871568518, -8.86003849957255, -38.56121419895217, 0.0, 16.10916090831419, -0.26847551838961853, 0.0, 456.5207565682159, 0.0, 40.27290227078174, -15.390820034559335, -38.56123801136327, 36.91682708155001, -0.08822044212195339, -14.617917388206527, -10.178801407431814, 1127.681060809647, -5.400283339360834, 0.0, 153.03702862900687, -119.249751632982, 0.0, 0.0, 0.0, 300.3213992899799, 746.1374183338812, 283.2801341951602, 1476.6730832616117, 2.212146884725437, 24.960061833620824, -31.500696180838528, -72.95094769594995, 3.2432988182658726, 0.0, 0.14626462136681487, 0.0, 0.0;,  0.0, -68.02178079816409, -1825.7538654147427, -60.59905180207354, -15.344485848360888, 0.11126991561680302, 1.980714856114537, 2.405548181662186, 0.5581056749481756, 0.1998365843916161, 1.416751727292378, 6.701914664731729, -1876.7525767391016, 26.32191552228195, 0.037752472997923926, -7.7888940931885635, -367.19072153600194, 0.1959200400872937, -20.16045294130803, 0.08289172321457602, 1.6142450402129351, -2.5106970713241714, -60.599047590970805, 14.310151833762532, 0.0, -1014.8655888067773, -35.495103081814044, -0.5884421721501928, -112.90446684169169, -0.3197938612235498, 2.141969475115301, -62.43626596870404, 30.667623034676, 0.037752472997923926, -8.159793811912776, -12.239690717863253, 19.645112220501385, -3.0599226794669545, 87.1247946695989, -2.510692860222303, -3.3380974685103686, 13.750891211937024, -2.1983636632150714, -4.21110099897526e-06, -84.74753643769664, -4.440644953882049e-06, 5.235751766368911, 0.5891616152095637, 50.459352043320685, -4.440644953882049e-06, 1.8372141666296302, -1805.3543808849324, -6.809079282670704, -3.338097468510056, 0.27533795464343636, -33.3809746850914, 1.837218377731064, -66.5102570468125, -1815.5541231497818, -60.59905180207354, -2.5106926306800874, 0.0, 82.23683936637246, 0.0, 87.75475514220041, -0.6287762399407296, -62.56252345087708, 0.4286208620550664, -12.239690717863253, 56.64425545107424, 1.2239690717866678, 18.986642978305934, 0.0, -33.3809746850914, 0.05211337119158586, 0.0, -85.91710595498807, -12.239690717863253, 1.1126991561681117, 32.16932204441512, 18.986638767204937, -1.0199742264891751, 0.1478549232287279, 30.54708673598387, 1.8372141666296302, 2.2041368519253712, 5.2357475552679125, -12.239690717863253, -199.17314895436607, 15.726582319559967, 32.42874870050961, 2.2253983123381396, 0.0, -82.23683936637246, -115.41515947237177, -2.5106970713241714, -1805.3543808849324, -0.46116326463177776, 1.5759496248989309, -98.80624611469743, 30.583934827239503, -0.7107343160805041, 0.0, -0.15055694656091928, 0.0, 41.61461552381531;,  0.0, -0.06415147070957262, 29.751709006240837, -0.4220174831357156, 0.22405279528766556, 0.008216812613923926, -0.04714375677316937, 0.15468787964852826, -0.01709383637251474, -0.056405243719661005, -0.02250782198832697, -0.12094134570985386, 29.94001096197688, -0.3196637975353376, -0.0010148104842794088, -0.04108406306961762, 5.87502101895529, -0.004426468862523705, 3.1546769570492557, -0.0022782971615171415, -0.3385003805264773, 0.4194019047080989, -0.4212962213112037, -0.13988199391602543, 0.0, -7.929993754137149, 0.5649058672072395, 0.012978396628491226, 1.4571366703578066, 0.8455104286128017, -0.43435868404827, -0.0892699563302569, -1.4076698878856324, -0.0010148104842794088, -0.05021385486286856, 0.22596234688283157, -0.5363963986203184, 0.018830195573569297, -1.3548631544017333, 0.4201231665326429, 0.10271015767403766, -0.2129211084078784, 0.034920773054367145, -0.0007212618245279696, 0.46964587817243436, -0.0007771909921612896, -0.0834921056294884, 0.01424021709367567, 1.1356270327471845, -0.0007771909921612896, -0.3327475268054427, 29.94001096197688, -0.20507057841331566, 0.020542031534808686, -0.006292433218632606, 0.5340928199050132, -0.33202626498091065, 0.9169448692936736, 30.69321878492004, -0.4220174831357156, 0.42017909570024414, 0.0, -0.05024397346433544, 0.0, -1.37830436314818, -0.0035639163818836305, -0.023790590175447986, 0.19635914293715176, 0.22596234688283157, -1.017848409382591, -0.04519246937658573, -0.2964132140373668, 0.0, 0.5340928199050132, -0.0012214224470215615, 0.0, 0.8636645760975217, 0.22596234688283157, 0.10271015767403766, -0.5070037625113468, -0.2971344758618948, 0.07532078229429325, -0.002342774242369826, -0.4816213751371045, -0.3327475268054427, 2.580129668008907, -0.08421336745401638, 0.22596234688283157, 3.2456409824998107, 0.8667008958293381, -0.588147495747262, 0.020542031534808686, 0.0, 0.05024397346433544, 1.8773157660580508, 0.4194019047080989, 30.316614873447946, -0.14562971742707093, 0.09147247340672482, -0.9061961793525473, -0.3710383364249461, 0.06323040689537232, 0.0, -0.0013279645056982414, 0.0, -0.7593841473412374;,  0.0, 4.4942666617856695, 2749.9999999999977, -19.383996165376498, 6.644785132634461, 0.36363636363641005, -11.103398686289257, -18.52451210466322, -3.22435364351463, -2.3976406964329775, -2.2552070664396218, -19.15398274542211, 2758.333333333346, -62.49999999998573, 0.05721983522994004, -5.218048215738231e-13, 680.000000000154, 0.3201657874767794, 145.58758835722884, 0.5402524485042272, -0.480311054041493, 15.13011891501462, -19.351723437488015, -3.3827901308526944, 0.0, -340.10365899720483, 67.00000000001504, -0.4733438173689537, 71.72946703009012, 15.320186104062813, -27.015909652652656, -18.81291851894387, -58.97679830297373, 0.05721983522994004, -6.300515664747757e-13, 9.999999999999423, -54.77565456905959, 2.4999999999998557, -161.94176572308677, 15.162391642903103, 0.9090909090906144, 2.7721979430395978, 2.1410367133936163, -0.03227272788848265, 27.91754671533437, -0.034759073203360885, -8.348195554968633, -0.1254039066977754, 48.13738054056809, -0.034759073203360885, -0.5710776464319162, 2758.3333333333007, -11.48347795945044, -4.545454545456091, 0.5219316026831714, 61.81818181819588, -0.538804918542723, 5.453533936913142, 2791.6666666666947, -19.383996165376498, 15.164877988217981, 0.0, -12.787427800319751, 0.0, -167.30543118886118, -0.06405708139916583, 5.38348427231909, 10.375969592485825, 0.0, -45.045045045063105, 5.000000000000844, -5.575997611929035, 0.0, 61.81818181819588, 0.13102589872039858, 0.0, 25.903089145295134, 0.0, 4.545454545454781, -58.031437108705525, -5.608270339817517, 3.333333333333385, -0.25739247874726456, -55.141644084603264, -0.5710776464319162, 129.3005435055618, -8.380468282857116, 9.999999999999423, 300.0000000000679, -7.333893863406609, -34.60327346966207, 0.909090909091114, 0.0, 12.787427800319751, 86.8943450183081, 15.13011891501462, 2758.3333333333007, 1.773006624481342, 1.385923736354365, -38.55290516837236, -40.70202858909543, 1.3575842380039271, 0.0, -0.056412149272144725, 0.0, -33.60666756284655]


disp(size(B))



figure(1)
pcolor(sign(B))
colormap jet
colorbar
%set(gca,'colorscale','log')
title('Signs of the diff matrix')
xlabel('feature')
ylabel('parameter')
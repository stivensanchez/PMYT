{"filter":false,"title":"operations_controller.rb","tooltip":"/app/controllers/operations_controller.rb","undoManager":{"mark":68,"position":68,"stack":[[{"group":"doc","deltas":[{"start":{"row":6,"column":40},"end":{"row":7,"column":0},"action":"insert","lines":["",""]},{"start":{"row":7,"column":0},"end":{"row":7,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":4},"end":{"row":12,"column":7},"action":"insert","lines":["#descargar en xls (excel)","   respond_to do |format|","      format.html","      format.csv { send_data @maquinas.to_csv }","      format.xls","    end"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":39},"end":{"row":6,"column":40},"action":"remove","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":38},"end":{"row":6,"column":39},"action":"remove","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":37},"end":{"row":6,"column":38},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":36},"end":{"row":6,"column":37},"action":"remove","lines":["."]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":36},"end":{"row":6,"column":75},"action":"insert","lines":[".search(params[:search], params[:page])"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":75},"end":{"row":7,"column":0},"action":"insert","lines":["",""]},{"start":{"row":7,"column":0},"end":{"row":7,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":4},"end":{"row":8,"column":4},"action":"remove","lines":["","    "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":75},"end":{"row":7,"column":0},"action":"insert","lines":["",""]},{"start":{"row":7,"column":0},"end":{"row":7,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":4},"end":{"row":7,"column":5},"action":"insert","lines":["@"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":5},"end":{"row":7,"column":6},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":6},"end":{"row":7,"column":7},"action":"insert","lines":["p"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":7},"end":{"row":7,"column":8},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":8},"end":{"row":7,"column":9},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":9},"end":{"row":7,"column":10},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":10},"end":{"row":7,"column":11},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":11},"end":{"row":7,"column":12},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":12},"end":{"row":7,"column":13},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":13},"end":{"row":7,"column":14},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":13},"end":{"row":7,"column":14},"action":"remove","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":12},"end":{"row":7,"column":13},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":12},"end":{"row":7,"column":13},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":13},"end":{"row":7,"column":14},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":14},"end":{"row":7,"column":15},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":15},"end":{"row":7,"column":16},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":16},"end":{"row":7,"column":17},"action":"insert","lines":["="]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":17},"end":{"row":7,"column":18},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":18},"end":{"row":7,"column":19},"action":"insert","lines":["@"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":19},"end":{"row":7,"column":20},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":20},"end":{"row":7,"column":21},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":21},"end":{"row":7,"column":22},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":22},"end":{"row":7,"column":23},"action":"insert","lines":["u"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":23},"end":{"row":7,"column":24},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":24},"end":{"row":7,"column":25},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":25},"end":{"row":7,"column":26},"action":"insert","lines":["."]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":26},"end":{"row":7,"column":27},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":27},"end":{"row":7,"column":28},"action":"insert","lines":["p"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":28},"end":{"row":7,"column":29},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":29},"end":{"row":7,"column":30},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":30},"end":{"row":7,"column":31},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":31},"end":{"row":7,"column":32},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":32},"end":{"row":7,"column":33},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":33},"end":{"row":7,"column":34},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":34},"end":{"row":7,"column":35},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":35},"end":{"row":7,"column":36},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":36},"end":{"row":7,"column":37},"action":"insert","lines":["."]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":37},"end":{"row":7,"column":38},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":38},"end":{"row":7,"column":39},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":39},"end":{"row":7,"column":40},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":11},"end":{"row":6,"column":0},"action":"insert","lines":["",""]},{"start":{"row":6,"column":0},"end":{"row":6,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"insert","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":5},"end":{"row":6,"column":6},"action":"insert","lines":["b"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":6},"end":{"row":6,"column":7},"action":"insert","lines":["u"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":7},"end":{"row":6,"column":8},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":8},"end":{"row":6,"column":9},"action":"insert","lines":["c"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":9},"end":{"row":6,"column":10},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":10},"end":{"row":6,"column":11},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":11},"end":{"row":6,"column":12},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":12},"end":{"row":6,"column":13},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":75},"end":{"row":8,"column":0},"action":"insert","lines":["",""]},{"start":{"row":8,"column":0},"end":{"row":8,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":5,"column":11},"end":{"row":6,"column":13},"action":"remove","lines":["","    #buscador"]},{"start":{"row":6,"column":75},"end":{"row":7,"column":4},"action":"remove","lines":["","    "]},{"start":{"row":7,"column":11},"end":{"row":7,"column":40},"action":"remove","lines":["ions = @modulo.operations.all"]},{"start":{"row":6,"column":0},"end":{"row":7,"column":0},"action":"insert","lines":["    #buscador",""]},{"start":{"row":8,"column":0},"end":{"row":9,"column":0},"action":"insert","lines":["    ",""]},{"start":{"row":9,"column":11},"end":{"row":9,"column":40},"action":"insert","lines":["ions = @modulo.operations.all"]}]}],[{"group":"doc","deltas":[{"start":{"row":9,"column":3},"end":{"row":9,"column":40},"action":"remove","lines":[" @operations = @modulo.operations.all"]}]}],[{"group":"doc","deltas":[{"start":{"row":9,"column":2},"end":{"row":9,"column":3},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":9,"column":0},"end":{"row":9,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":8,"column":4},"end":{"row":9,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":8,"column":2},"end":{"row":8,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":8,"column":0},"end":{"row":8,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":75},"end":{"row":8,"column":0},"action":"remove","lines":["",""]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":7,"column":75},"end":{"row":7,"column":75},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1425399765770,"hash":"f2920c8893fc8c6e46e3b8f3b5fb58237ec3e355"}
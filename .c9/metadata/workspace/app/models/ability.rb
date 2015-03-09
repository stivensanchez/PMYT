{"changed":true,"filter":false,"title":"ability.rb","tooltip":"/app/models/ability.rb","value":"class Ability\n  include CanCan::Ability\n\n  def initialize(user)\n    # Define abilities for the passed in user here. For example:\n    #\n      user ||= User.new # guest user (not logged in)\n       if user.has_role? :admin\n         can :manage, :all\n       else\n     can :read, :all\n    end\n    #\n    # The first argument to `can` is the action you are giving the user \n    # permission to do.\n    # If you pass :manage it will apply to every action. Other common actions\n    # here are :read, :create, :update and :destroy.\n    #\n    # The second argument is the resource the user can perform the action on. \n    # If you pass :all it will apply to every resource. Otherwise pass a Ruby\n    # class of the resource.\n    #\n    # The third argument is an optional hash of conditions to further filter the\n    # objects.\n    # For example, here the user can only update published articles.\n    #\n    #   can :update, Article, :published => true\n    #\n    # See the wiki for details:\n    # https://github.com/ryanb/cancan/wiki/Defining-Abilities\n  end\nend\n","undoManager":{"mark":10,"position":54,"stack":[[{"group":"doc","deltas":[{"start":{"row":6,"column":5},"end":{"row":6,"column":6},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"remove","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":4},"end":{"row":7,"column":5},"action":"remove","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":8,"column":4},"end":{"row":8,"column":5},"action":"remove","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":9,"column":4},"end":{"row":9,"column":5},"action":"remove","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":10,"column":5},"end":{"row":10,"column":10},"action":"remove","lines":["     "]}]}],[{"group":"doc","deltas":[{"start":{"row":10,"column":4},"end":{"row":10,"column":5},"action":"remove","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":5},"end":{"row":11,"column":6},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":4},"end":{"row":11,"column":5},"action":"remove","lines":["#"]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":2},"end":{"row":11,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":10,"column":2},"end":{"row":10,"column":3},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":11,"column":7},"end":{"row":12,"column":0},"action":"insert","lines":["",""]},{"start":{"row":12,"column":0},"end":{"row":12,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":4},"end":{"row":13,"column":0},"action":"insert","lines":["",""]},{"start":{"row":13,"column":0},"end":{"row":13,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":4},"end":{"row":14,"column":0},"action":"insert","lines":["",""]},{"start":{"row":14,"column":0},"end":{"row":14,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":14,"column":4},"end":{"row":15,"column":0},"action":"insert","lines":["",""]},{"start":{"row":15,"column":0},"end":{"row":15,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":15,"column":4},"end":{"row":24,"column":3},"action":"insert","lines":["class Ability","  include CanCan::Ability","","  def initialize(user)","    user ||= User.new # guest user (not logged in)","    if user.has_role? :admin","      can :manage, :all","    end","  end","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":15,"column":3},"end":{"row":16,"column":25},"action":"remove","lines":[" class Ability","  include CanCan::Ability"]}]}],[{"group":"doc","deltas":[{"start":{"row":15,"column":3},"end":{"row":16,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":15,"column":2},"end":{"row":15,"column":3},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":15,"column":0},"end":{"row":15,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":15,"column":0},"end":{"row":16,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":15,"column":0},"end":{"row":15,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":14,"column":4},"end":{"row":15,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":14,"column":2},"end":{"row":14,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":14,"column":0},"end":{"row":14,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":4},"end":{"row":14,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":15},"end":{"row":7,"column":16},"action":"insert","lines":["h"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":16},"end":{"row":7,"column":17},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":17},"end":{"row":7,"column":18},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":18},"end":{"row":7,"column":19},"action":"insert","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":19},"end":{"row":7,"column":20},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":20},"end":{"row":7,"column":21},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":21},"end":{"row":7,"column":22},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":22},"end":{"row":7,"column":23},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":23},"end":{"row":7,"column":24},"action":"insert","lines":["?"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":24},"end":{"row":7,"column":25},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":25},"end":{"row":7,"column":26},"action":"insert","lines":[":"]}]}],[{"group":"doc","deltas":[{"start":{"row":7,"column":31},"end":{"row":7,"column":32},"action":"remove","lines":["?"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":3},"end":{"row":17,"column":7},"action":"remove","lines":[" def initialize(user)","    user ||= User.new # guest user (not logged in)","    if user.has_role? :admin","      can :manage, :all","    end"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":3},"end":{"row":14,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":3},"end":{"row":13,"column":4},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":3},"end":{"row":13,"column":4},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":3},"end":{"row":13,"column":4},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":3},"end":{"row":13,"column":4},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":3},"end":{"row":13,"column":4},"action":"remove","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":3},"end":{"row":14,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":3},"end":{"row":13,"column":4},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":3},"end":{"row":13,"column":4},"action":"remove","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":3},"end":{"row":13,"column":4},"action":"remove","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":3},"end":{"row":14,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":2},"end":{"row":13,"column":3},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":13,"column":0},"end":{"row":13,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":4},"end":{"row":13,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":2},"end":{"row":12,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":12,"column":0},"end":{"row":12,"column":2},"action":"remove","lines":["  "]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":12,"column":0},"end":{"row":12,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1425683382000}
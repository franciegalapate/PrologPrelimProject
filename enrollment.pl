% UNITS - units(course, num_units) for standing

% first year
units(cs111, 2).   units(cs111l, 1).
units(cs112, 2).   units(cs112l, 1).
units(cs113, 3).

units(cs121, 3).   units(cs122, 2).
units(cs122l, 1).  units(cs123, 2).
units(cs123l, 1).

units(cs131, 3).
units(cs132, 3).

% second year
units(cs211, 2).    units(cs211l, 1).
units(cs212, 2).    units(cs212l, 1).
units(cs213, 3).

units(cs221, 2).    units(cs221l, 1).
units(cs222, 2).    units(cs222l, 1).
units(cs223, 3).

units(cs231, 2).
units(cs231l, 1).

% third year
units(cs311, 2).    units(cs311l, 1).
units(cs312, 2).    units(cs312l, 1).
units(cs313, 3).    units(cs314, 3).
units(cs315, 3).    units(csm316, 3).

units(cs321, 3).    units(cs322, 2).
units(cs322l, 1).   units(cs323, 2).
units(cs323l, 1).   units(cs324, 3).
units(cs325, 3).

units(cs331, 6).

% fourth year
units(cs411, 3).
units(cs412, 3).
units(cs413, 3).
units(cse1, 3).
units(cse2, 3).

units(cs421, 3).
units(cs422, 3).
units(cse3, 3).
units(cse4, 3).

% PREREQUISITES - prereq(course, list of prerequisites)

% courses w/ no prereq
prereq(cs111, []).
prereq(cs112, []).
prereq(cs113, []).

% first year second sem
prereq(cs121,[cs111]).
prereq(cs122,[cs112]).
prereq(cs122l,[cs112]).
prereq(cs123,[cs112]).
prereq(cs123l,[cs112]).

% first year short term
prereq(cs131,[cs111]).

% second year first sem
prereq(cs211,[cs112,cs113]).
prereq(cs211l,[cs112,cs113]).
prereq(cs212,[cs123]).
prereq(cs212l,[cs123]).
prereq(cs213,[cs122]).

% second year second sem
prereq(cs221,[cs211]).
prereq(cs221l,[cs211]).
prereq(cs222,[cs122]).
prereq(cs222l,[cs122]).
prereq(cs223,[cs132]).

% second year short term
prereq(cs231,[cs212]).
prereq(cs231l,[cs212]).

% third year first sem
prereq(cs311,[cs122]).
prereq(cs311l,[cs122]).
prereq(cs312,[cs211]).
prereq(cs312l,[cs211]).
prereq(cs313,[cs131,cs221]).
prereq(cs314,[cs111,gself]).
prereq(cs315,[cs111,gpcom]).
prereq(csm316,[cs132]).

% third year second sem
prereq(cs321,[cs132,cs211]).
prereq(cs322,[cs221]).
prereq(cs322l,[cs221]).
prereq(cs323,[cs132,cs211]).
prereq(cs323l,[cs132,cs211]).
prereq(cs325,[cs211]).

% third year & fourth year standing reqs
prereq(cs324, [third_year_standing]).
prereq(cse1, [third_year_standing]).
prereq(cse2, [third_year_standing]).
prereq(cs331, [fourth_year_standing]).
prereq(cs422, [fourth_year_standing]).
prereq(cse3, [fourth_year_standing]).
prereq(cse4, [fourth_year_standing]).

% fourth year
prereq(cs411, [cs324]).
prereq(cs421, [cs411]).

% LOGIC
can_enroll(CompletedList, TargetCourse) :-
    prereq(TargetCourse, PrereqList),
    check_all_prereqs(PrereqList, CompletedList).

check_all_prereqs([], _).

check_all_prereqs([third_year_standing | Tail], CompletedList) :-
    calculate_total_units(CompletedList, Total),
    Total >= 100,
    check_all_prereqs(Tail, CompletedList).

check_all_prereqs([fourth_year_standing | Tail], CompletedList) :-
    calculate_total_units(CompletedList, Total),
    Total >= 145,
    check_all_prereqs(Tail, CompletedList).

check_all_prereqs([Course | Tail], CompletedList) :-
    Course \= third_year_standing,
    Course \= fourth_year_standing,
    member(Course, CompletedList),
    check_all_prereqs(Tail, CompletedList).

calculate_total_units([], 0).
calculate_total_units([Course | Tail], Total) :-
    (units(Course, U) -> U = U ; U = 0), % If course not in list, 0 units
    calculate_total_units(Tail, RemainingUnits),
    Total is U + RemainingUnits.
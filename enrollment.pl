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
prereq(cs324,[]). % third year standing

% third year short term
prereq(cs331,[]). % 4th year standing

do_all_prereqs_met([], _). % base case: all prerequisites met
do_all_prereqs_met([H|T], CompletedCourses) :- % recursive case
    member(H, CompletedCourses), % check if the head of the list is in completed courses
    do_all_prereqs_met(T, CompletedCourses). % check the tail of the list

check_eligibility(_, []). % Base case: List is empty, stop.
check_eligibility(Completed, [Course|Rest]) :-
    nl, write('--- Checking Course: '), write(Course), write(' ---'), nl,
    process_course(Completed, Course), % Check specific course
    check_eligibility(Completed, Rest). % Move to next course in list

% the user passed a single course (Atom), not a list.
check_eligibility(Completed, Course) :-
    atom(Course),
    process_course(Completed, Course).

% Course is already completed
process_course(CompletedCourses, DesiredCourse) :-
    member(DesiredCourse, CompletedCourses),
    write('Status: Denied'), nl,
    write('Reason: You have already completed '), write(DesiredCourse), write('.'), nl, !. 

% Eligible (All prereqs met)
process_course(CompletedCourses, DesiredCourse) :-
    prereq(DesiredCourse, Prereqs), 
    do_all_prereqs_met(Prereqs, CompletedCourses), 
    write('Status: Approved'), nl,
    write('Reason: You are eligible to enroll in '), write(DesiredCourse), write('.'), nl, !. 

% Missing Prerequisites
process_course(CompletedCourses, DesiredCourse) :-
    prereq(DesiredCourse, Prereqs), 
    findall(P, (member(P, Prereqs), \+ member(P, CompletedCourses)), Missing), 
    write('Status: Denied'), nl,
    write('Reason: Missing prerequisites for '), write(DesiredCourse), write(': '), write(Missing), nl.

% Course is Invalid (Not in curriculum)
process_course(_, DesiredCourse) :-
    \+ prereq(DesiredCourse, _), 
    write('Status: Denied'), nl,
    write('Reason: The Course '), write(DesiredCourse), write(' is not in the curriculum database.'), nl, !.


% query format: check_eligibility([completed courses], [desired courses]).
% query: check_eligibility([cs111,cs111l, cs112, cs112l, cs113], [cs211, cs212]).
% query: check_eligibility([cs111,cs111l], cs121).
% UNITS - units(course, num_units) for standing

% first year
units(cs111, 2).   units(cs111l, 1).
units(cs112, 2).   units(cs112l, 1).
units(cs113, 3).
units(gmath, 3).
units(gart, 3).
units(ghist, 3).
units(fithw, 2).
units(cfe101, 3).

units(cs121, 3).
units(cs122, 2).   units(cs122l, 1).
units(cs123, 2).   units(cs123l, 1).
units(gself, 3).
units(gpcom, 3).
units(genvi, 3).
units(fitcs, 2).
units(cfe102, 3).

units(cs131, 3).
units(cs132, 3).

% second year
units(cs211, 2).    units(cs211l, 1).
units(cs212, 2).    units(cs212l, 1).
units(cs213, 3).    units(gsts, 3).
units(grva, 3).     units(nstpcwts1, 3).
units(fitoa, 2).    units(cfe103, 3).

units(cs231, 2).    units(cs231l, 1).
units(grizal, 3).   units(gentrep, 3).

units(cs221, 2).    units(cs221l, 1).
units(cs222, 2).    units(cs222l, 1).
units(cs223, 3).    units(gethics, 3).
units(gcworld, 3).  units(nstpcwts2, 3).
units(fitaq, 2).    units(cfe104, 3).

% third year
units(cs311, 2).    units(cs311l, 1).
units(cs312, 2).    units(cs312l, 1).
units(cs313, 3).    units(cs314, 3).
units(cs315, 3).    units(csm316, 3).
units(cfe105a, 1.5).

units(cs321, 3).    units(cs322, 2).
units(cs322l, 1).   units(cs323, 2).
units(cs323l, 1).   units(cs324, 3).
units(cs325, 3).    units(cfe105b, 1.5).

units(cs331, 6).

% fourth year
units(cfe106a, 1.5).
units(cs411, 3).
units(cs412, 3).
units(cs413, 3).
units(cse1, 3).
units(cse2, 3).

units(cfe106b, 1.5).
units(cs421, 3).
units(cs422, 3).
units(for_lang1, 3).
units(cse3, 3).
units(cse4, 3).

% cs electives
units(cse10, 3). units(cse11, 3). units(cse12, 3). units(cse13, 3).
units(cse14, 3). units(cse15, 3). units(cse16, 3). units(cse17, 3).
units(cse18, 3). units(cse19, 3). units(cse20, 3). units(cse21, 3).
units(cse22, 3). units(cse23, 3). units(cse24, 3). units(cse25, 3).
units(cse26, 3). units(cse27, 3). units(cse28, 3). units(cse29, 3).
units(cse30, 3). units(cse31, 3). units(cse32, 3).

% PREREQUISITES - prereq(course, list of prerequisites)

% first year
prereq(cs111, []).   prereq(cs111l, []).
prereq(cs112, []).   prereq(cs112l, []).
prereq(cs113, []).
prereq(gmath, []).
prereq(gart, []).
prereq(ghist, []).
prereq(fithw, []).
prereq(cfe101, []).

prereq(cs121, [cs111]).
prereq(cs122, [cs112]).  prereq(cs122l, [cs112]).
prereq(cs123, [cs112]).  prereq(cs123l, [cs112]).
prereq(gself, []).
prereq(gpcom, []).
prereq(genvi, []).
prereq(fitcs, []).
prereq(cfe102, []).

prereq(cs131, [cs111]).
prereq(cs132, []).

% second year
prereq(cs211, [cs112, cs113, cs212]).
prereq(cs211l, [cs112, cs113, cs212]).
prereq(cs212, [cs123, cs211]).
prereq(cs212l, [cs123, cs211]).
prereq(cs213, [cs122]).
prereq(gsts, []).
prereq(grva, []).
prereq(nstpcwts1, []).
prereq(fitoa, []).
prereq(cfe103, []).

prereq(cs221, [cs211]).
prereq(cs221l, [cs211]).
prereq(cs222, [cs122]).
prereq(cs222l, [cs122]).
prereq(cs223, [cs132]).
prereq(gethics, []).
prereq(gcworld, []).
prereq(nstpcwts2, [nstpcwts1]).
prereq(fitaq, []).
prereq(cfe104, [cfe103]).

prereq(cs231, [cs212]).
prereq(cs231l, [cs212]).
prereq(grizal, []).
prereq(gentrep, []).

% third year
prereq(cs311, [cs122]).
prereq(cs311l, [cs122]).
prereq(cs312, [cs211]).
prereq(cs312l, [cs211]).
prereq(cs313, [cs131, cs221]).
prereq(cs314, [cs111, gself]).
prereq(cs315, [cs111, gpcom]).
prereq(csm316, [cs132]).
prereq(cfe105a, [cfe103, cfe104]).

prereq(cs321, [cs132, cs211]).
prereq(cs322, [cs221]).
prereq(cs322l, [cs221]).
prereq(cs323, [cs132, cs211]).
prereq(cs323l, [cs132, cs211]).
prereq(cs324, [third_year_standing]).
prereq(cs325, [cs211]).
prereq(cfe105b, [cfe105a]).

% fourth year
prereq(cfe106a, [cfe105b]).
prereq(cs411, [cs324]).
prereq(cs412, [third_year_standing]).
prereq(cs413, [gethics, cs231, cs221]).
prereq(cse1, [third_year_standing]).
prereq(cse2, [third_year_standing]).

prereq(cfe106b, [cfe106a]).
prereq(cs421, [cs411]).
prereq(cs422, [fourth_year_standing]).
prereq(for_lang1, []).
prereq(cse3, [fourth_year_standing]).
prereq(cse4, [fourth_year_standing]).

% cs electives
prereq(cse10, [third_year_standing]). prereq(cse11, [third_year_standing]).
prereq(cse12, [third_year_standing]). prereq(cse13, [third_year_standing]).
prereq(cse14, [third_year_standing]). prereq(cse15, [third_year_standing]).
prereq(cse16, [third_year_standing]). prereq(cse17, [third_year_standing]).
prereq(cse18, [third_year_standing]). prereq(cse19, [third_year_standing]).
prereq(cse20, [third_year_standing]). prereq(cse21, [third_year_standing]).
prereq(cse22, [third_year_standing]). prereq(cse23, [third_year_standing]).
prereq(cse24, [third_year_standing]). prereq(cse25, [third_year_standing]).
prereq(cse26, [third_year_standing]). prereq(cse27, [third_year_standing]).
prereq(cse28, [third_year_standing]). prereq(cse29, [third_year_standing]).
prereq(cse30, [third_year_standing]). prereq(cse31, [third_year_standing]).
prereq(cse32, [third_year_standing]).

calculate_total_units([], 0).
calculate_total_units([Course|Tail], Total) :-
    (units(Course, U) -> U = U ; U = 0),
    calculate_total_units(Tail, RemainingUnits),
    Total is U + RemainingUnits.

do_all_prereqs_met([], _). % base case: all prerequisites met

% 3rd year standing
do_all_prereqs_met([third_year_standing|T], CompletedCourses) :-
    calculate_total_units(CompletedCourses, Total),
    Total >= 40,
    do_all_prereqs_met(T, CompletedCourses).

% 4th year standing
do_all_prereqs_met([fourth_year_standing|T], CompletedCourses) :-
    calculate_total_units(CompletedCourses, Total),
    Total >= 80,
    do_all_prereqs_met(T, CompletedCourses).

% standard case
do_all_prereqs_met([H|T], CompletedCourses) :-
    H \= third_year_standing,
    H \= fourth_year_standing,
    member(H, CompletedCourses),
    do_all_prereqs_met(T, CompletedCourses).


% GNU Prolog compatibility: Implements downcase_atom for GNU Prolog
% this is because, unlike SWI-Prolog, GNU Prolog does not have built-in support for downcase_atom, 
% which is used to normalize course names to lowercase for case-insensitive comparison.
downcase_atom(Atom, LowerAtom) :-
    atom_codes(Atom, Codes),
    map_to_lower(Codes, LowerCodes),
    atom_codes(LowerAtom, LowerCodes).

map_to_lower([], []).
map_to_lower([H|T], [L|R]) :-
    to_lower(H, L),
    map_to_lower(T, R).

% Helper: Converts Upper (65-90) to Lower (add 32)
to_lower(C, L) :- C >= 65, C =< 90, !, L is C + 32.
to_lower(C, C).


% interactive shell & normalization
start :-
    nl, write('========================================='), nl,
    write('   BSCS COURSE ELIGIBILITY CHECKER'), nl,
    write('========================================='), nl,
    write('1. Enter lists using brackets: [CS111, cs112]'), nl,
    write('2. You do NOT need to type a dot (added automatically).'), nl,
    write('3. Course input is case-insensitive.'), nl,
    loop.

loop :-
    nl, write('-----------------------------------------'), nl,
    write('Enter Completed Courses (or "stop." to exit): '), 
    read_input(Completed),
    
    (Completed = stop -> 
        write('Exiting program. Goodbye!'), nl
    ;
        write('Enter Target Course(s) to Check: '), 
        read_input(Target),
        nl, write('--- RESULTS ---'), nl,
        check_eligibility(Completed, Target),
        loop
    ).

% Normalizer: Handles List and Single inputs
check_eligibility(CompletedRaw, TargetRaw) :-
    normalize(CompletedRaw, CompletedClean),
    normalize(TargetRaw, TargetClean),
    run_check(CompletedClean, TargetClean).

normalize([], []).
normalize([H|T], [H_Low|T_Low]) :- 
    downcase_atom(H, H_Low), 
    normalize(T, T_Low).
normalize(X, X_Low) :- 
    atom(X), 
    downcase_atom(X, X_Low).

% input handler with auto-dot
read_input(Term) :-
    read_line_codes(Codes),
    append(Codes, [46], CodesWithDot), % Adds ASCII 46 (.) automatically
    parse_term(CodesWithDot, Term).

read_line_codes(Codes) :- get_code(C), process_char(C, Codes).

process_char(10, []) :- !. % Newline
process_char(13, []) :- !. % Return
process_char(-1, []) :- !. % End of Stream
process_char(C, [Lower|Rest]) :- 
    to_lower(C, Lower), 
    read_line_codes(Rest).

parse_term(Codes, Term) :- 
    atom_codes(AtomStr, Codes), 
    read_term_from_atom(AtomStr, Term, []).



% MAIN LOGIC
% Flow: Input -> Normalize -> Check Eligibility -> Output Result

% Handle List of Targets
run_check(_, []). % Base case: List is empty, stop.
run_check(Completed, [Course|Rest]) :-
    nl, write('--- Checking Course: '), write(Course), write(' ---'), nl,
    process_course(Completed, Course), % Check specific course
    run_check(Completed, Rest). % Move to next course in list

% the user passed a single course (Atom), not a list.
run_check(Completed, Course) :-
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
    findall(P, (member(P, Prereqs), \+ member(P, CompletedCourses), P \= third_year_standing, P \= fourth_year_standing), Missing), % Find missing prereqs
    % Check if standing was the issue
    ( (member(third_year_standing, Prereqs); member(fourth_year_standing, Prereqs)) -> 
        calculate_total_units(CompletedCourses, Total),
        write('Status: Denied'), nl,
        write('Reason: Missing Prereqs: '), write(Missing), nl,
        write('        (Note: Check if your Total Units ['), write(Total), write('] meet the Year Standing requirement)'), nl
    ;
        write('Status: Denied'), nl,
        write('Reason: Missing prerequisites for '), write(DesiredCourse), write(': '), write(Missing), nl
    ).

% Course is Invalid (Not in curriculum)
process_course(_, DesiredCourse) :-
    \+ prereq(DesiredCourse, _), 
    write('Status: Denied'), nl,
    write('Reason: The Course '), write(DesiredCourse), write(' is not in the curriculum database.'), nl, !.

% query format: check_eligibility([completed courses], [desired courses]).
% query: check_eligibility([cs111,cs111l, cs112, cs112l, cs113], [cs211, cs212]).
% query: check_eligibility([cs111,cs111l], cs121).
% query (3rd year standing): check_eligibility([cs111, cs111l, cs112, cs112l, cs113, cs121, cs122, cs122l, cs123, cs123l, cs131, cs132, cs211, cs211l, cs212, cs212l, cs213, cs221, cs221l, cs222, cs222l, cs223, cs231, cs231l], [cs324,cs315]).
% query (cs elective): check_eligibility([cs111, cs111l, cs112, cs112l, cs113, gmath, gart, ghist, fithw, cfe101, cs131, cs132, cs121, cs122, cs122l, cs123, cs123l, gself, gpcom, genvi, fitcs, cfe102, cs211, cs211l, cs212, cs212l, cs213, gsts, grva, nstpcwts1, fitoa, cfe103, cs231, cs231l, grizal, gentrep, cs221, cs221l, cs222, cs222l, cs223, gethics, gcworld, nstpcwts2, fitaq, cfe104], cse10).
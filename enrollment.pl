% Format: prereq(course, list of prerequisites)

% first year first sem
prereq(cs111,[]).
prereq(cs111l,[]).
prereq(cs112,[]).
prereq(cs112l,[]).
prereq(cs113,[]).

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



pr_rule(reachable(V),[chosen(U,V),reachable(U)]).
pr_rule(reachable(O),[chosen(V,O)]).
pr_rule(other(U,V),[vertex(U),vertex(V),vertex(W),V .\=. W,chosen(U,W)]).
pr_rule(chosen(U,V),[vertex(U),vertex(V),edge_h(U,V),not(other(U,V))]).
pr_rule(vertex(0),[]).
pr_rule(vertex(1),[]).
pr_rule(vertex(2),[]).
pr_rule(vertex(3),[]).
pr_rule(vertex(4),[]).
pr_rule(edge_h(0,1),[]).
pr_rule(edge_h(1,2),[]).
pr_rule(edge_h(2,3),[]).
pr_rule(edge_h(3,4),[]).
pr_rule(edge_h(4,0),[]).
pr_rule(edge_h(4,1),[]).
pr_rule(edge_h(4,2),[]).
pr_rule(edge_h(4,3),[]).
pr_rule(edge_h(0,2),[]).
pr_rule(edge_h(2,1),[]).
pr_rule(edge_h(1,3),[]).
pr_rule(not(o_edge_h1(_X0,_X1)),[_X0 .\=. 0]).
pr_rule(not(o_edge_h1(_X0,_X1)),[_X0=0,_X1 .\=. 1]).
pr_rule(not(o_edge_h2(_X0,_X1)),[_X0 .\=. 1]).
pr_rule(not(o_edge_h2(_X0,_X1)),[_X0=1,_X1 .\=. 2]).
pr_rule(not(o_edge_h3(_X0,_X1)),[_X0 .\=. 2]).
pr_rule(not(o_edge_h3(_X0,_X1)),[_X0=2,_X1 .\=. 3]).
pr_rule(not(o_edge_h4(_X0,_X1)),[_X0 .\=. 3]).
pr_rule(not(o_edge_h4(_X0,_X1)),[_X0=3,_X1 .\=. 4]).
pr_rule(not(o_edge_h5(_X0,_X1)),[_X0 .\=. 4]).
pr_rule(not(o_edge_h5(_X0,_X1)),[_X0=4,_X1 .\=. 0]).
pr_rule(not(o_edge_h6(_X0,_X1)),[_X0 .\=. 4]).
pr_rule(not(o_edge_h6(_X0,_X1)),[_X0=4,_X1 .\=. 1]).
pr_rule(not(o_edge_h7(_X0,_X1)),[_X0 .\=. 4]).
pr_rule(not(o_edge_h7(_X0,_X1)),[_X0=4,_X1 .\=. 2]).
pr_rule(not(o_edge_h8(_X0,_X1)),[_X0 .\=. 4]).
pr_rule(not(o_edge_h8(_X0,_X1)),[_X0=4,_X1 .\=. 3]).
pr_rule(not(o_edge_h9(_X0,_X1)),[_X0 .\=. 0]).
pr_rule(not(o_edge_h9(_X0,_X1)),[_X0=0,_X1 .\=. 2]).
pr_rule(not(o_edge_h10(_X0,_X1)),[_X0 .\=. 2]).
pr_rule(not(o_edge_h10(_X0,_X1)),[_X0=2,_X1 .\=. 1]).
pr_rule(not(o_edge_h11(_X0,_X1)),[_X0 .\=. 1]).
pr_rule(not(o_edge_h11(_X0,_X1)),[_X0=1,_X1 .\=. 3]).
pr_rule(not(edge_h(_X0,_X1)),[not(o_edge_h1(_X0,_X1)),not(o_edge_h2(_X0,_X1)),not(o_edge_h3(_X0,_X1)),not(o_edge_h4(_X0,_X1)),not(o_edge_h5(_X0,_X1)),not(o_edge_h6(_X0,_X1)),not(o_edge_h7(_X0,_X1)),not(o_edge_h8(_X0,_X1)),not(o_edge_h9(_X0,_X1)),not(o_edge_h10(_X0,_X1)),not(o_edge_h11(_X0,_X1))]).
pr_rule(not(o_other1(U,V,W)),[not(vertex(U))]).
pr_rule(not(o_other1(U,V,W)),[vertex(U),not(vertex(V))]).
pr_rule(not(o_other1(U,V,W)),[vertex(U),vertex(V),not(vertex(W))]).
pr_rule(not(o_other1(U,V,W)),[vertex(U),vertex(V),vertex(W),V=W]).
pr_rule(not(o_other1(U,V,W)),[vertex(U),vertex(V),vertex(W),V .\=. W,not(chosen(U,W))]).
pr_rule(not(o_other1(U,V)),[forall(W,not(o_other1(U,V,W)))]).
pr_rule(not(other(_X0,_X1)),[not(o_other1(_X0,_X1))]).
pr_rule(not(o_vertex1(_X0)),[_X0 .\=. 0]).
pr_rule(not(o_vertex2(_X0)),[_X0 .\=. 1]).
pr_rule(not(o_vertex3(_X0)),[_X0 .\=. 2]).
pr_rule(not(o_vertex4(_X0)),[_X0 .\=. 3]).
pr_rule(not(o_vertex5(_X0)),[_X0 .\=. 4]).
pr_rule(not(vertex(_X0)),[not(o_vertex1(_X0)),not(o_vertex2(_X0)),not(o_vertex3(_X0)),not(o_vertex4(_X0)),not(o_vertex5(_X0))]).
pr_rule(not(o_chosen1(U,V)),[not(vertex(U))]).
pr_rule(not(o_chosen1(U,V)),[vertex(U),not(vertex(V))]).
pr_rule(not(o_chosen1(U,V)),[vertex(U),vertex(V),not(edge_h(U,V))]).
pr_rule(not(o_chosen1(U,V)),[vertex(U),vertex(V),edge_h(U,V),other(U,V)]).
pr_rule(not(chosen(_X0,_X1)),[not(o_chosen1(_X0,_X1))]).
pr_rule(not(o_reachable1(V,U)),[not(chosen(U,V))]).
pr_rule(not(o_reachable1(V,U)),[chosen(U,V),not(reachable(U))]).
pr_rule(not(o_reachable1(V)),[forall(U,not(o_reachable1(V,U)))]).
pr_rule(not(o_reachable2(O,V)),[not(chosen(V,O))]).
pr_rule(not(o_reachable2(O)),[forall(V,not(o_reachable2(O,V)))]).
pr_rule(not(reachable(_X0)),[not(o_reachable1(_X0)),not(o_reachable2(_X0))]).
pr_rule(not(o__false1(U)),[not(vertex(U))]).
pr_rule(not(o__false1(U)),[vertex(U),reachable(U)]).
pr_rule(not(o__false1),[forall(U,not(o__false1(U)))]).
pr_rule(not(o__false2(U,W,V)),[not(chosen(U,W))]).
pr_rule(not(o__false2(U,W,V)),[chosen(U,W),not(chosen(V,W))]).
pr_rule(not(o__false2(U,W,V)),[chosen(U,W),chosen(V,W),U=V]).
pr_rule(not(o__false2),[forall(U,forall(W,forall(V,not(o__false2(U,W,V)))))]).
pr_rule(not(o_false),[not(o__false1),not(o__false2)]).
pr_rule(not(o__chk11(U)),[not(vertex(U))]).
pr_rule(not(o__chk11(U)),[vertex(U),reachable(U)]).
pr_rule(not(o__chk11),[forall(U,not(o__chk11(U)))]).
pr_rule(not(o_chk1),[not(o__chk11)]).
pr_rule(not(o__chk21(U,W,V)),[not(chosen(U,W))]).
pr_rule(not(o__chk21(U,W,V)),[chosen(U,W),not(chosen(V,W))]).
pr_rule(not(o__chk21(U,W,V)),[chosen(U,W),chosen(V,W),U=V]).
pr_rule(not(o__chk21),[forall(U,forall(W,forall(V,not(o__chk21(U,W,V)))))]).
pr_rule(not(o_chk2),[not(o__chk21)]).
pr_rule(not(o__chk31(U,V)),[not(vertex(U))]).
pr_rule(not(o__chk31(U,V)),[vertex(U),not(vertex(V))]).
pr_rule(not(o__chk31(U,V)),[vertex(U),vertex(V),not(edge_h(U,V))]).
pr_rule(not(o__chk31(U,V)),[vertex(U),vertex(V),edge_h(U,V),other(U,V)]).
pr_rule(not(o__chk31(U,V)),[vertex(U),vertex(V),edge_h(U,V),not(other(U,V)),chosen(U,V)]).
pr_rule(not(o_chk3(_X0,_X1)),[not(o__chk31(_X0,_X1))]).
pr_rule(not(o__chk41(U,V,W)),[not(vertex(U))]).
pr_rule(not(o__chk41(U,V,W)),[vertex(U),not(vertex(V))]).
pr_rule(not(o__chk41(U,V,W)),[vertex(U),vertex(V),not(vertex(W))]).
pr_rule(not(o__chk41(U,V,W)),[vertex(U),vertex(V),vertex(W),V=W]).
pr_rule(not(o__chk41(U,V,W)),[vertex(U),vertex(V),vertex(W),V .\=. W,not(chosen(U,W))]).
pr_rule(not(o__chk41(U,V,W)),[vertex(U),vertex(V),vertex(W),V .\=. W,chosen(U,W),other(U,V)]).
pr_rule(not(o__chk41(U,V)),[forall(W,not(o__chk41(U,V,W)))]).
pr_rule(not(o_chk4(_X0,_X1)),[not(o__chk41(_X0,_X1))]).
pr_rule(not(o_false),[]).
pr_rule(o_nmr_check,[not(o_chk1),not(o_chk2),forall(_X0,forall(_X1,not(o_chk3(_X0,_X1)))),forall(_X0,forall(_X1,not(o_chk4(_X0,_X1))))]).
pr_rule(add_to_query,[o_nmr_check]).

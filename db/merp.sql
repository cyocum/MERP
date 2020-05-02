pragma foreign_keys = ON;

begin transaction;
drop table if exists open_ended_roll;

create table open_ended_roll (roll_value_min integer,
       	     		      roll_value_max integer,
       	     		      routine tinyint,
			      easy tinyint,
			      light tinyint,
			      medium tinyint,
			      hard tinyint,
			      very_hard tinyint,
			      extremely_hard tinyint,
			      sheer_folly tinyint,
			      absurd tinyint);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (-9223372036854775808,
			     	    -151,
				    0,0,0,0,0,0,0,0,0);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (-150,
			     	     -101,
				     10,0,0,0,0,0,0,0,0);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (-100,
			     	     -51,
				     30,10,0,0,0,0,0,0,0);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (-50,
			     	     -26,
				     50,30,10,0,0,0,0,0,0);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (-25,
			     	     -0,
				     70,50,30,5,0,0,0,0,0);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (-25,
			     	     0,
				     70,50,30,5,0,0,0,0,0);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (1,
			     	     20,
				     80,60,50,10,5,0,0,0,0);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (21,
			     	     40,
				     90,70,60,20,10,5,0,0,0);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (41,
			     	     55,
				     100,80,70,30,20,10,5,0,0);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (56,
			     	     65,
				     100,90,80,40,30,20,10,0,0);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (66,
			     	     75,
				     100,100,90,50,40,30,20,5,0);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (76,
			     	     85,
				     100,100,100,60,50,40,30,10,0);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (86,
			     	     95,
				     100,100,100,70,60,50,40,20,5);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (96,
			     	     105,
				     110,100,100,80,70,60,50,25,10);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (106,
			     	     115,
				     110,110,100,90,80,70,60,30,20);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (116,
			     	     125,
				     120,110,110,100,90,80,70,40,30);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (126,
			     	     135,
				     120,120,110,100,100,90,80,50,40);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (136,
			     	     145,
				     130,120,120,110,100,100,90,60,50);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (146,
			     	     155,
				     130,130,120,110,100,100,100,70,60);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (156,
			     	     165,
				     140,130,130,120,110,110,100,80,70);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (166,
			     	     185,
				     140,140,130,120,120,110,110,90,80);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (166,
			     	     185,
				     140,140,130,120,120,110,110,90,80);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (186,
			     	     225,
				     150,140,140,130,120,120,110,100,90);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (226,
			     	     275,
				     150,150,140,130,130,120,120,100,100);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (226,
			     	     275,
				     150,150,140,130,130,120,120,100,100);

insert into open_ended_roll (roll_value_min,
			     roll_value_max,
			     routine,
			     easy,
			     light,
			     medium,
			     hard,
			     very_hard,
			     extremely_hard,
			     sheer_folly,
			     absurd)
			     values (276,
			     	     9223372036854775807,
				     150,150,140,130,130,120,120,100,100);

drop table if exists static_action;

create table static_action (roll_value_min integer,
       	     	     roll_value_max integer,
		     disarming_traps_and_picking_locks text,
		     general text,
		     interaction_and_influence text,
		     reading_runes_and_using_items text,
		     perception_and_tracking text		
 	     	    );

insert into static_action (roll_value_min,
       	     	    roll_value_max,
		    disarming_traps_and_picking_locks,
		    general,
		    interaction_and_influence,
		    reading_runes_and_using_items,
		    perception_and_tracking
 	     	    )
		    values
		    (-9223372036854775808,
		    -26,
       	    	    'BLUNDER: If picking a lock, your lockpick is broken and stuck in the lock, rendering it unopenable until removed (this requires another roll to pick the lock by someone other than you). Any traps are set off.',
		    'BLUNDER: You fail spectacularly. If possible, your static action has the opposite effect from what you intended',
		    'BLUNDER: Your blatant attempt at coercion alienates your audience.  They are infuenced to do the opposite of what you were attempting to get them to do.  Until a change in circumstances occurs, any influence attempts by you will fail.',
		    'BLUNDER: Whatever spells or abilities are in the item or on the rune paper are activated and directed against you.  Any runes on rune paper are gone, and you will never be able to use any of the spells or abilities contained in the item.',
		    'BLUNDER: You not only fail to get any valid information but you pick up invalid information due to a misconception or improperly sensed details.  You may never try again on the same topic in the same area.'
       	    	   );

insert into static_action (roll_value_min,
       	     	    roll_value_max,
		    disarming_traps_and_picking_locks,
		    general,
		    interaction_and_influence,
		    reading_runes_and_using_items,
		    perception_and_tracking
 	     	    )
		    values
		    (-25,
		    4,
       	    	    'ABSOLUTE FAILURE: You have developed a mental block on this lock/trap and will automatically fail on any further attempts to pck/disarm it.  there is a 50% chance that any traps will be activated',
		    'ABSOLUTE FAILURE: Utter incompetence causes a mental lapse. Any static actions attempted during the next 10 min (60 rounds) will result in failure (see 05-75 below)',
		    'ABSOLUTE FAILURE: Your audience rejects you, causing you to lose confidence and your air of authority.  Any influence attempts during the next hour (360 rounds) will results in failure (see 05-75 below).',
		    'ABSOLUTE FAILURE: You have developed a mental block on this rune/item and will automatically fail on any further attempts to read or use it. There is a 50% chance that a spell will be activated.',
		    'ABSOLUTE FAILURE: Confusion causes a mental lapse. This perception roll and any persception rolls made during the next 10 min (60 rounds) will result in failure (see 05-75 below).'
       	    	   );

insert into static_action (roll_value_min,
       	     	    roll_value_max,
		    disarming_traps_and_picking_locks,
		    general,
		    interaction_and_influence,
		    reading_runes_and_using_items,
		    perception_and_tracking
 	     	    )
		    values
		    (5,
		    75,
       	    	    'FAILURE: Currently you have no furthe ideas on how to pick/disarm this lock/trap.  After 24 hours you may make a perception roll and if it succeeds you may make another attempt.',
		    'FAILURE: You have failed.  You may not try again the same static action in the same place for 1 day.',
		    'FAILURE: You have failed.  Your audience will not be receptive to any of your attempts at influence at least 1 day.',
		    'FAILURE: Currently you have no further ideas on how read/use this rune/item.  After you have gone up a level, you may make make another attempt to read/use this rune/item.',
		    'FAILURE: You gain no information, but you think that you have learned everything avaliable.  You may not try again on the same topic in the same area for 1 day.'
       	    	   );

insert into static_action (roll_value_min,
       	     	    roll_value_max,
		    disarming_traps_and_picking_locks,
		    general,
		    interaction_and_influence,
		    reading_runes_and_using_items,
		    perception_and_tracking
 	     	    )
		    values
		    (76,
		    90,
       	    	    'PARTIAL SUCCESS: You have figured out part of the lock/trap and have an intuitive feel for the rest.  Do something else for 10 minutes and then you can try again.',
		    'PARTIAL SUCCESS: If partial success is possible, you accomplish 20% of your static action.  You may not try the same static action in the same place for 1 hour.',
		    'PARTIAL SUCCESS: Your audience is still listening. You can continue to try to influence them.',
		    'PARTIAL SUCCESS: You learn how many spells and abilities it contains and what they are.  However you can not yet read/use it, and you may not make another attempt until 1 week has passed.',
		    'PARTIAL SUCCESS: You gain some of the information on the topick that required the perception roll, but you are not aware that you missed something.  You may not try again on the same topic in the same area for 1 hour.'
       	    	   );

insert into static_action (roll_value_min,
       	     	    roll_value_max,
		    disarming_traps_and_picking_locks,
		    general,
		    interaction_and_influence,
		    reading_runes_and_using_items,
		    perception_and_tracking
 	     	    )
		    values
		    (91,
		    110,
       	    	    'NEAR SUCCESS: You almost had it.  If you spend 2 rounds thinking about your attempt (no other activity), you may try again with an extra +5 bonus.',
		    'NEAR SUCCESS: If partial success is possible, you accomplish half of your static action.  You may try again after 3 rounds of contemplation.',
		    'NEAR SUCCESS: Keep talking, your audience is becoming more friendly.  Modify your next roll by +20.',
		    'NEAR SUCCESS: You learn how many spells and abilities it contains and what they are.  If you wait 24 hours, you may try again with an extra +10 bonus.',
		    'NEAR SUCCESS: You gain some of the information on the topic that required the perception roll, and you are aware that you missed something.  Think about it for 3 rounds, and you may try again.'
       	    	   );

insert into static_action (roll_value_min,
       	     	    roll_value_max,
		    disarming_traps_and_picking_locks,
		    general,
		    interaction_and_influence,
		    reading_runes_and_using_items,
		    perception_and_tracking
 	     	    )
		    values
		    (111,
		    175,
       	    	    'SUCCESS: The lock/trap is picked/disarmed ; +50 on any future attempts to pick/disarm this lock/trap.',
		    'SUCCESS: Your static action is successful.',
		    'SUCCESS: you have influenced your audience.',
		    'SUCCESS: You learn one of the spells or abilities in an item or on a piece of rune paper, and you may use it whenever you hold the item or rune paper (runes are only useable once).',
		    'SUCCESS: You gain all of the information on the topic that required perception roll.'
       	    	   );

insert into static_action (roll_value_min,
       	     	    roll_value_max,
		    disarming_traps_and_picking_locks,
		    general,
		    interaction_and_influence,
		    reading_runes_and_using_items,
		    perception_and_tracking
 	     	    )
		    values
		    (176,
		    9223372036854775808,
       	    	    'ABSOLUTE SUCCESS: In the future you may automatically pick/disarm (takes one round) this lock/trap or any identical lock/trap. +10 to attempts on similar locks/traps in the future.',
		    'ABSOLUTE SUCCESS: Your static action is successful and you get a +20 bonus to further static actions for the next ten minutes (60 rounds)',
		    'ABSOLUTE SUCCESS: Not only did you influence your audience, but you recieve a +50 bonus on influencing them until you do something to caus them to lose confidence in you.',
		    'ABSOLUTE SUCCESS: You learn all of the spells and abilities in an item or on a piece of rune paper, and you may use them whenever you hold the item or rune paper (runes are only usable once).',
		    'ABSOLUTE SUCCESS: You are aware of everything in the area that you are examining. This includes information on topics other than the one requiring the perception roll.'
       	    	   );

drop table if exists criticals;

create table criticals (
			critical_id integer primary key,
			critical_type text,
			critical_roll_mod tinyint
       	     	       );

insert into criticals (critical_id,
       	    	       critical_type,
		       critical_roll_mod)
		       values
		       (0, 'None', 0);

insert into criticals (critical_id,
       	    	       critical_type,
		       critical_roll_mod)
		       values
		       (1, 'Failure', 0);

insert into criticals (critical_id,
       	    	       critical_type,
		       critical_roll_mod)
		       values
		       (2, 'T', -50);

insert into criticals (critical_id,
       	    	       critical_type,
		       critical_roll_mod)
		       values
		       (3, 'A', -20);

insert into criticals (critical_id,
       	    	       critical_type,
		       critical_roll_mod)
		       values
		       (4, 'B', -10);

insert into criticals (critical_id,
       	    	       critical_type,
		       critical_roll_mod)
		       values
		       (5, 'C', 0);

insert into criticals (critical_id,
       	    	       critical_type,
		       critical_roll_mod)
		       values
		       (6, 'D', 10);

insert into criticals (critical_id,
       	    	       critical_type,
		       critical_roll_mod)
		       values
		       (7, 'E', 20);

drop table if exists tooth_and_claw_attack;

create table tooth_and_claw_attack (roll_value_min integer,
       	     			    roll_value_max integer,
				    plate unsigned tinyint,
				    plate_crit_mod tinyint,
				    chain unsigned tinyint,
				    chain_crit_mod tinyint,
				    rigid_leather unsigned tinyint,
				    rigid_leather_crit_mod tinyint,
				    soft_leather unsigned tinyint,
				    soft_leather_crit_mod tinyint,
				    none unsigned tinyint,
				    none_crit_mod tinyint,
    				    foreign key(plate_crit_mod) references criticals(critical_id),
				    foreign key(chain_crit_mod) references criticals(critical_id),
				    foreign key(rigid_leather_crit_mod) references criticals(critical_id),
				    foreign key(soft_leather_crit_mod) references criticals(critical_id),
				    foreign key(none_crit_mod) references criticals(critical_id)
				   );

insert into tooth_and_claw_attack (roll_value_min,
       	     			    roll_value_max,
				    plate,
				    plate_crit_mod,
				    chain,
				    chain_crit_mod,
				    rigid_leather,
				    rigid_leather_crit_mod,
				    soft_leather,
				    soft_leather_crit_mod,
				    none,
				    none_crit_mod
				   )
				   values
				   (1, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			    roll_value_max,
				    plate,
				    plate_crit_mod,
				    chain,
				    chain_crit_mod,
				    rigid_leather,
				    rigid_leather_crit_mod,
				    soft_leather,
				    soft_leather_crit_mod,
				    none,
				    none_crit_mod
				   )
				   values
				   (3, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			    roll_value_max,
				    plate,
				    plate_crit_mod,
				    chain,
				    chain_crit_mod,
				    rigid_leather,
				    rigid_leather_crit_mod,
				    soft_leather,
				    soft_leather_crit_mod,
				    none,
				    none_crit_mod
				   )
				   values
				   (46, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (51, 55, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (56, 60, 1, 0, 0, 0, 0, 0, 1, 0, 4, 0); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (61, 65, 1, 0, 1, 0, 1, 0, 2, 0, 5, 2); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (66, 70, 2, 0, 2, 0, 2, 0, 4, 0, 6, 2); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (71, 75, 3, 0, 3, 0, 3, 0, 5, 0, 8, 2); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (76, 80, 4, 0, 4, 0, 5, 0, 7, 2, 9, 3); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (81, 85, 5, 0, 5, 0, 7, 2, 9, 2, 10, 3); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (86, 90, 6, 0, 6, 2, 8, 2, 10, 3, 12, 3); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (91, 95, 6, 2, 7, 2, 9, 3, 11, 3, 13, 4); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (96, 100, 7, 2, 8, 3, 10, 3, 12, 3, 14, 4); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (101, 105, 7, 3, 9, 3, 11, 3, 13, 4, 15, 4); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (106, 110, 8, 3, 10, 3, 12, 4, 15, 4, 17, 5); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (111, 115, 9, 3, 11, 4, 13, 4, 16, 5, 19, 5); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (116, 120, 10, 4, 11, 4, 14, 5, 17, 5, 20, 6); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (121, 125, 14, 4, 15, 4, 18, 5, 20, 5, 26, 6); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (126, 130, 16, 4, 18, 5, 20, 5, 23, 6, 28, 7); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (131, 135, 18, 5, 20, 5, 22, 6, 25, 6, 30, 7); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (136, 140, 20, 5, 23, 6, 26, 6, 30, 7, 36, 7); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (141, 145, 22, 6, 25, 6, 29, 7, 33, 7, 38, 7); 

insert into tooth_and_claw_attack (roll_value_min,
       	     			   roll_value_max,
				   plate,
				   plate_crit_mod,
				   chain,
				   chain_crit_mod,
				   rigid_leather,
				   rigid_leather_crit_mod,
				   soft_leather,
				   soft_leather_crit_mod,
				   none,
				   none_crit_mod
				   )
				   values
				   (146, 150, 24, 7, 27, 7, 32, 7, 36, 7, 40, 7); 

drop table if exists grapping_and_unbalancing_attack_table;

create table grapping_and_unbalancing_attack_table(roll_value_min integer,
       	      roll_value_max integer,
	      plate unsigned tinyint,
	      plate_crit_mod tinyint,
	      chain unsigned tinyint,
	      chain_crit_mod tinyint,
	      rigid_leather unsigned tinyint,
	      rigid_leather_crit_mod tinyint,
	      soft_leather unsigned tinyint,
	      soft_leather_crit_mod tinyint,
	      none unsigned tinyint,
	      none_crit_mod tinyint,
    	      foreign key(plate_crit_mod) references criticals(critical_id),
	      foreign key(chain_crit_mod) references criticals(critical_id),
	      foreign key(rigid_leather_crit_mod) references criticals(critical_id),
	      foreign key(soft_leather_crit_mod) references criticals(critical_id),
	      foreign key(none_crit_mod) references criticals(critical_id));


insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max ,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (1, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (3, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (3, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (46, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (51, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (56, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (61, 65, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (66, 70, 2, 2, 1, 0, 0, 0, 1, 0, 1, 0);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (71, 75, 2, 3, 2, 2, 1, 0, 3, 0, 2, 0);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (76, 80, 3, 3, 3, 2, 2, 0, 4, 2, 4, 0);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (81, 85, 3, 3, 4, 3, 4, 2, 6, 2, 5, 0);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (86, 90, 4, 3, 4, 3, 5, 2, 7, 2, 7, 2);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (91, 95, 4, 3, 5, 3, 6, 2, 8, 3, 8, 2);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (96, 100, 5, 4, 6, 3, 7, 3, 9, 3, 10, 2);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (101, 105, 5, 4, 7, 3, 8, 3, 10, 3, 11, 3);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (106, 110, 6, 5, 8, 4, 10, 3, 12, 4, 14, 3);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (111, 115, 7, 5, 9, 4, 11, 4, 13, 4, 15, 3);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (116, 120, 8, 5, 10, 5, 12, 4, 14, 5, 16, 4);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (121, 125, 10, 6, 11, 5, 14, 4, 16, 5, 18, 4);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (126, 130, 11, 6, 13, 6, 16, 5, 18, 5, 20, 4);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (131, 135, 12, 6, 15, 6, 18, 5, 20, 6, 22, 5);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (136, 140, 14, 7, 19, 6, 22, 5, 26, 6, 28, 5);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (141, 145, 16, 7, 21, 7, 25, 6, 28, 6, 30, 5);

insert into grapping_and_unbalancing_attack_table
       	    (roll_value_min,
       	    roll_value_max,
	    plate,
	    plate_crit_mod,
	    chain,
	    chain_crit_mod,
	    rigid_leather,
	    rigid_leather_crit_mod,
	    soft_leather,
	    soft_leather_crit_mod,
	    none,
	    none_crit_mod)
	    values
	    (146, 150, 18, 7, 23, 7, 27, 6, 30, 6, 33, 5);

commit;

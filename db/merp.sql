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
			     values
			     (-9223372036854775808, 151, 0,0,0,0,0,0,0,0,0),
			     (-150, -101, 10,0,0,0,0,0,0,0,0),
			     (-100, -51, 30,10,0,0,0,0,0,0,0),
			     (-50, -26, 50,30,10,0,0,0,0,0,0),
			     (-25, -0, 70,50,30,5,0,0,0,0,0),
			     (-25, 0, 70,50,30,5,0,0,0,0,0),
			     (1, 20, 80,60,50,10,5,0,0,0,0),
			     (21, 40, 90,70,60,20,10,5,0,0,0),
			     (41, 55, 100,80,70,30,20,10,5,0,0),
			     (56, 65, 100,90,80,40,30,20,10,0,0),
			     (66, 75, 100,100,90,50,40,30,20,5,0),
			     (76, 85, 100,100,100,60,50,40,30,10,0),
			     (86, 95, 100,100,100,70,60,50,40,20,5),
			     (96, 105, 110,100,100,80,70,60,50,25,10),
			     (106, 115, 110,110,100,90,80,70,60,30,20),
			     (116, 125, 120,110,110,100,90,80,70,40,30),
			     (126, 135, 120,120,110,100,100,90,80,50,40),
			     (136, 145, 130,120,120,110,100,100,90,60,50),
			     (146, 155, 130,130,120,110,100,100,100,70,60),
			     (156, 165, 140,130,130,120,110,110,100,80,70),
			     (166, 185, 140,140,130,120,120,110,110,90,80),
			     (166, 185, 140,140,130,120,120,110,110,90,80),
			     (186, 225, 150,140,140,130,120,120,110,100,90),
			     (226, 275, 150,150,140,130,130,120,120,100,100),
			     (226, 275, 150,150,140,130,130,120,120,100,100),
			     (276, 9223372036854775807, 150,150,140,130,130,120,120,100,100);

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
			critical_id unsigned tinyint primary key,
			critical_type text,
			critical_roll_mod tinyint
       	     	       );

insert into criticals (critical_id,
       	    	       critical_type,
		       critical_roll_mod)
		       values
		       (0, 'None', 0),
		       (1, 'Failure', 0),
		       (2, 'T', -50),
		       (3, 'A', -20),
		       (4, 'B', -10),
		       (5, 'C', 0),
		       (6, 'D', 10),
		       (7, 'E', 20),
		       (8, 'Possible Fumble', 0);

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
				   (1, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1),
				   (3, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
				   (46, 50, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
				   (51, 55, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0),
				   (56, 60, 1, 0, 0, 0, 0, 0, 1, 0, 4, 0),
				   (61, 65, 1, 0, 1, 0, 1, 0, 2, 0, 5, 2),
				   (66, 70, 2, 0, 2, 0, 2, 0, 4, 0, 6, 2),
				   (71, 75, 3, 0, 3, 0, 3, 0, 5, 0, 8, 2),
				   (76, 80, 4, 0, 4, 0, 5, 0, 7, 2, 9, 3),
				   (81, 85, 5, 0, 5, 0, 7, 2, 9, 2, 10, 3),
				   (86, 90, 6, 0, 6, 2, 8, 2, 10, 3, 12, 3),
				   (91, 95, 6, 2, 7, 2, 9, 3, 11, 3, 13, 4),
				   (96, 100, 7, 2, 8, 3, 10, 3, 12, 3, 14, 4),
				   (101, 105, 7, 3, 9, 3, 11, 3, 13, 4, 15, 4),
				   (106, 110, 8, 3, 10, 3, 12, 4, 15, 4, 17, 5),
				   (111, 115, 9, 3, 11, 4, 13, 4, 16, 5, 19, 5),
				   (116, 120, 10, 4, 11, 4, 14, 5, 17, 5, 20, 6),
				   (121, 125, 14, 4, 15, 4, 18, 5, 20, 5, 26, 6),
				   (126, 130, 16, 4, 18, 5, 20, 5, 23, 6, 28, 7),
				   (131, 135, 18, 5, 20, 5, 22, 6, 25, 6, 30, 7),
				   (136, 140, 20, 5, 23, 6, 26, 6, 30, 7, 36, 7),
				   (141, 145, 22, 6, 25, 6, 29, 7, 33, 7, 38, 7),
				   (146, 150, 24, 7, 27, 7, 32, 7, 36, 7, 40, 7); 

drop table if exists grapping_and_unbalancing_attack_table;

create table grapping_and_unbalancing_attack_table
       	     (roll_value_min integer,
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
	    (1, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1),
	    (3, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (3, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (46, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (51, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (56, 60, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (61, 65, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0),
	    (66, 70, 2, 2, 1, 0, 0, 0, 1, 0, 1, 0),
	    (71, 75, 2, 3, 2, 2, 1, 0, 3, 0, 2, 0),
	    (76, 80, 3, 3, 3, 2, 2, 0, 4, 2, 4, 0),
	    (81, 85, 3, 3, 4, 3, 4, 2, 6, 2, 5, 0),
	    (86, 90, 4, 3, 4, 3, 5, 2, 7, 2, 7, 2),
	    (91, 95, 4, 3, 5, 3, 6, 2, 8, 3, 8, 2),
	    (96, 100, 5, 4, 6, 3, 7, 3, 9, 3, 10, 2),
	    (101, 105, 5, 4, 7, 3, 8, 3, 10, 3, 11, 3),
	    (106, 110, 6, 5, 8, 4, 10, 3, 12, 4, 14, 3),
	    (111, 115, 7, 5, 9, 4, 11, 4, 13, 4, 15, 3),
	    (116, 120, 8, 5, 10, 5, 12, 4, 14, 5, 16, 4),
	    (121, 125, 10, 6, 11, 5, 14, 4, 16, 5, 18, 4),
	    (126, 130, 11, 6, 13, 6, 16, 5, 18, 5, 20, 4),
	    (131, 135, 12, 6, 15, 6, 18, 5, 20, 6, 22, 5),
	    (136, 140, 14, 7, 19, 6, 22, 5, 26, 6, 28, 5),
	    (141, 145, 16, 7, 21, 7, 25, 6, 28, 6, 30, 5),
	    (146, 150, 18, 7, 23, 7, 27, 6, 30, 6, 33, 5);

drop table if exists one_handed_slashing_weapons_attack_table;

create table one_handed_slashing_weapons_attack_table
       	     (roll_value_min integer,
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

insert into one_handed_slashing_weapons_attack_table
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
	    (1, 8, 0, 8, 0, 8, 0, 8, 0, 8, 0, 8),
	    (9, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (36, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (41, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (46, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (51, 55, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
	    (56, 60, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0),
	    (61, 65, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0),
	    (66, 70, 3, 0, 3, 0, 2, 0, 3, 0, 0, 0),
	    (71, 75, 3, 0, 4, 0, 3, 0, 5, 0, 0, 0),
	    (76, 80, 4, 0, 5, 0, 5, 0, 7, 3, 7, 0),
	    (81, 85, 5, 0, 6, 0, 6, 0, 9, 3, 9, 3),
	    (86, 90, 5, 0, 7, 0, 7, 3, 10, 4, 10, 3),
	    (91, 95, 6, 0, 8, 0, 9, 3, 12, 4, 11, 4),
	    (96, 100, 6, 0, 9, 0, 10, 4, 13, 4, 13, 5),
	    (101, 105, 7, 0, 10, 3, 11, 4, 14, 5, 15, 5),
	    (106, 110, 8, 0, 11, 3, 12, 4, 15, 5, 17, 6),
	    (111, 115, 8, 3, 12, 4, 13, 5, 17, 5, 19, 6),
	    (116, 120, 9, 3, 13, 4, 15, 5, 18, 6, 20, 6),
	    (121, 125, 9, 3, 13, 5, 16, 5, 19, 6, 21, 7),
	    (126, 130, 10, 4, 14, 5, 17, 6, 20, 6, 23, 7),
	    (131, 135, 11, 4, 15, 5, 18, 6, 22, 6, 25, 7),
	    (136, 140, 11, 5, 16, 6, 20, 6, 23, 7, 27, 7),
	    (141, 145, 12, 6, 17, 6, 21, 7, 24, 7, 28, 7),
	    (146, 150, 12, 7, 18, 7, 22, 7, 25, 7, 30, 7);

drop table if exists one_handed_concussion_weapons_attack_table;

create table one_handed_concussion_weapons_attack_table
      	     (roll_value_min integer,
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

insert into one_handed_concussion_weapons_attack_table
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
	    (1, 8, 0, 8, 0, 8, 0, 8, 0, 8, 0, 8),
	    (9, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (36, 40, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (41, 45, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0),
	    (46, 50, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0),
	    (51, 55, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0),
	    (56, 60, 3, 0, 4, 0, 0, 0, 0, 0, 0, 0),
	    (61, 65, 4, 0, 5, 0, 0, 0, 0, 0, 0, 0),
	    (66, 70, 5, 0, 6, 0, 2, 0, 3, 0, 0, 0),
	    (71, 75, 5, 0, 7, 0, 3, 0, 5, 0, 0, 0),
	    (76, 80, 6, 0, 8, 0, 4, 0, 6, 0, 0, 0),
	    (81, 85, 7, 0, 9, 0, 6, 0, 7, 3, 6, 0),
	    (86, 90, 8, 0, 10, 0, 7, 3, 8, 3, 8, 0),
	    (91, 95, 8, 0, 11, 0, 8, 3, 9, 3, 9, 3),
	    (96, 100, 9, 0, 12, 3, 9, 4, 10, 4, 10, 4),
	    (101, 105, 10, 0, 13, 3, 10, 4, 11, 4, 12, 5),
	    (106, 110, 10, 3, 14, 4, 11, 4, 12, 4, 13, 5),
	    (111, 115, 11, 3, 15, 4, 12, 5, 13, 5, 14, 6),
	    (116, 120, 12, 4, 16, 5, 13, 5, 14, 5, 15, 6),
	    (121, 125, 13, 4, 17, 5, 15, 5, 15, 5, 17, 6),
	    (126, 130, 13, 5, 18, 5, 16, 5, 16, 6, 18, 7),
	    (131, 135, 14, 5, 19, 6, 17, 6, 17, 6, 19, 7),
	    (136, 140, 15, 6, 20, 6, 18, 6, 18, 7, 21, 7),
	    (141, 145, 16, 6, 21, 7, 19, 7, 19, 7, 22, 7),
	    (146, 150, 16, 7, 22, 7, 20, 7, 20, 7, 23, 7);

drop table if exists two_handed_weapons_attack_table;

create table two_handed_weapons_attack_table
      	     (roll_value_min integer,
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


insert into two_handed_weapons_attack_table
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
	    (1, 8, 0, 8, 0, 8, 0, 8, 0, 8, 0, 8),
	    (9, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (56, 60, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (61, 65, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (66, 70, 4, 0, 3, 0, 0, 0, 0, 0, 0, 0),
	    (71, 75, 5, 0, 5, 0, 2, 0, 8, 3, 0, 0),
	    (76, 80, 6, 0, 7, 0, 4, 3, 10, 3, 0, 0),
	    (81, 85, 7, 0, 9, 0, 7, 3, 13, 4, 10, 3),
	    (86, 90, 8, 0, 11, 0, 9, 4, 15, 4, 13, 4),
	    (91, 95, 9, 0, 12, 3, 12, 4, 17, 5, 16, 5),
	    (96, 100, 11, 0, 14, 3, 14, 5, 20, 5, 19, 6),
	    (101, 105, 12, 3, 16, 4, 17, 5, 22, 5, 22, 6),
	    (106, 110, 13, 3, 18, 4, 19, 5, 24, 5, 25, 6),
	    (111, 115, 14, 4, 20, 5, 22, 5, 27, 6, 28, 7),
	    (111, 115, 14, 4, 20, 5, 22, 5, 27, 6, 28, 7),
	    (116, 120, 15, 4, 22, 5, 24, 6, 29, 6, 31, 7),
	    (121, 125, 16, 5, 24, 5, 27, 6, 31, 6, 33, 7),
	    (126, 130, 17, 5, 26, 6, 29, 6, 33, 7, 36, 7),
	    (131, 135, 19, 6, 28, 6, 32, 7, 36, 7, 39, 7),
	    (136, 140, 20, 6, 29, 7, 34, 7, 38, 7, 42, 7),
	    (141, 145, 21, 7, 31, 7, 37, 7, 40, 7, 45, 7),
	    (146, 150, 22, 7, 33, 7, 40, 7, 43, 7, 48, 7);

drop table if exists missle_weapons_attack_table;

create table missle_weapons_attack_table
      	     (roll_value_min integer,
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

insert into missle_weapons_attack_table
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
	    (1, 8, 0, 8, 0, 8, 0, 8, 0, 8, 0, 8),
    	    (9, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    	    (56, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (61, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (66, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (71, 75, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	    (76, 80, 2, 0, 2, 0, 0, 0, 4, 0, 0, 0),
	    (81, 85, 3, 0, 4, 0, 3, 0, 6, 0, 0, 0),
	    (86, 90, 4, 0, 6, 0, 5, 0, 8, 3, 0, 0),
	    (91, 95, 5, 0, 7, 0, 7, 3, 10, 3, 8, 3),
	    (96, 100, 6, 0, 8, 3, 9, 3, 12, 4, 10, 4),
    	    (101, 105, 7, 0, 10, 3, 10, 4, 13, 4, 11, 5),
	    (106, 110, 8, 3, 13, 4, 12, 4, 14, 4, 13, 5),
	    (111, 115, 9, 3, 14, 4, 13, 4, 16, 5, 15, 5),
	    (116, 120, 10, 3, 16, 4, 15, 5, 17, 5, 16, 6),
	    (121, 125, 11, 4, 17, 5, 17, 5, 19, 6, 18, 6),
	    (126, 130, 11, 4, 19, 5, 19, 6, 20, 6, 20, 6),
	    (131, 135, 12, 5, 20, 5, 21, 6, 22, 6, 20, 6),
	    (136, 140, 13, 5, 22, 6, 23, 6, 23, 7, 23, 7),
	    (141, 145, 14, 6, 25, 7, 26, 7, 26, 7, 27, 7);

drop table if exists crit_attack_table;

create table crit_attack_table 
       	     (roll_value_min integer,
	      roll_value_max integer,
	      crush text,
	      slash text,
	      puncture text,
	      unbalancing text,
	      grappling text,
	      large_creatures_physical text,
	      large_creatures_spell text);

insert into crit_attack_table
       	    (roll_value_min,
	      roll_value_max,
	      crush,
	      slash,
	      puncture,
	      unbalancing,
	      grappling,
	      large_creatures_physical,
	      large_creatures_spell)
	      values
	      (-49, 5, 'Weak grip. No extra damage. +0', 'Weak strike yields no extra damage. +0', 'Glancing blow. No extra damage.', 'Fairly weak. +0 hits. Zip.', 'an oppportunity lost.', '+10 hits. Your weapon breaks in half. You are upset.', 'Size of creature awes you. +0 hits.'),
      	      (6, 20, 'Minor fracture of ribs. +5 hits. -5 to activity.', 'Minor calf wound. 1 hit per round.', 'Glancing blow to side. +3 hits.', 'Arm strike. +2 hits. -5 to activity for 2 rounds.', 'Passing strike. +2 hits.', '+6 hits.', '+5 hits.'),
	      (21, 35, 'Blow to side. +4 hits. -40 to activity for 1 round.', 'Blow to upperleg, +5 hits. If no leg armor: +2 hits per round.', 'Thigh strke, +3 hits. If no leg armor: 3 hits per round.', 'Leg strike. +4 hits. If no leg armor: +7 hits and stunned 1 round.', 'Attack fended off. +3 hits. If arm armor: stunned 1 round', '+12 hits.', '+8 hits.'),
      	      (36, 50, 'Blow to forearm. +5 hits. Stunned 1 round.', 'Minor chest wound. +3 hits. 1 hit per round. -5 to activity.', 'Minor forearm wound. +2 hits. Stunned 1 round.', 'Chest strike.  Knocked back 3 feet. +5 hits. -10 to activity for 2 rounds.', 'Attack to upper leg. Spun about, but breaks loose. Stunned 1 round.', '+18 hits.', '+10 hits.'),
	      (51, 65, 'Blow to shield shoulder breaks shield. If no shield: shoulder broken, arm useless.', 'Minor forearm wound. +4 hits. 2 hits per round. Stunned 1 round.', 'Strike along side of chest. 1 hit per round. Stunned 1 round.', 'Blow to sheild arm. +5 hits. Shield torn away. If no shield: +8 hits and stunned 2 rounds.', 'Shield arm entangled. If shield: -50 to activity until it is dropped. If no shield: -50 to activity', 'Staggered by strong blast +20 hits. -10 to activity. Stunned 2 rounds.', '+12 hits.'),
	      (66, 79, 'Blow breaks bone in leg. _+12 hits. -40 to activity. Stunned 2 rounds', 'Medium thigh wound. +6 hits. 1 hit per round. -10 to activity. Stunned 2 rounds.', 'Strike to lower leg. Tendons torn. +3 hits. -25 to activity. Stunned 1 round.', 'Elbow strike. Forearm numbed. +8 hits. Drop weapon. -10 to activity for 10 rounds.', 'Weapon arm grasped. disarmed and wrist sprained. Stunned 2 rounds. -25 to activity.', 'Fine leg strike. +18 hits. 5 hits per round. -20 to activity. Stunned 3 rounds.', '_15 hits.'),
	      (80, 80, 'Strie to forehead. +30 hits. One eye destroyed. Stunned 24 rounds. If no helm: a 1 month coma results.', 'Neck strike severs carotid artery. Neck broken. Dies in 1 round of intense agony.', 'Striek to neck. Nerves and blood vessels severed. Dies of a massive heart failure.', 'Brutal hip strike. Knocked down. tendons torn and joint crushed. Leg useless. -80 to activity.', 'Both legs entangled. down and knocked out. +9 hits.', 'Well placed strike to neck severs the jugular vein. +15 hits. Dies in 6 rounds, but may act at -60 activity until then.', 'Unbalanced by blast +15 hits. Stunned 2 rounds.'),
	      (81, 86, 'Blow breaks weapon arm. Arm useless. tendon damage. +8 hits. Stunned 2 rounds.', 'Slash muscle and tendons in weapon arm. Arm useless. +10 hits. 1 hit per round.', 'Strike to weapon arm. Bone Broken. +10 hits. Stunned 3 rounds.', 'Shot to side. Knocked 5 feet sideways. Drop anything carried in hands. Stunned 3 rounds.', 'Weapon arm grappled. Ligaments torn and muscle pulled. Disarmed and stunned for 3 rounds. -40 to activity.', 'Hard blow. +25 hits. 3 hits per round due to light wound. -10 to activity. Stunned 2 rounds.', 'staggered by strong blast. +20 hits. Stunned 1 round.'),
	      (87, 89, 'Shatter knee. +9 hits. -60 to activity. Knocked down and stunned for 3 rounds.', 'Destroys one eye. +10 hits. Stunned for 30 rounds.', 'Strike through lower leg. Sever muscle. -50 activity. Stunned 3 rounds.', 'Side strike. Stumble ungracefully to an embarrassing prone position. Stunned 6 rounds.', 'Completely entangled and immobilized. Knocked down, but still conscious. No activity.', 'Strike severs an artery in leg. May act at -30 to activity for 4 rounds, then drops and dies after 6 more rounds.', 'Strike to leg. +15 hits. -20 to activity. Stunned 2 rounds.'),
	      (90, 90, 'Blow to back of neck paralyzes from the shoulder down. +25 hits. Foe quite stunned.', 'Disembowled, dies instance. 25% chance your weapon is stuck in opponent for 2 rounds.', 'Strike through both lungs, Drops and passes out. Dies in 6 rounds.', 'Inspired back strike. Knocked flying 10 feet and onto face. Severe nerve damage. Paralyzed from waist down.', 'Vicious hold around neck.  Knocked out. Sprained neck: -60 to activity.', 'Sever a vein in forelimb. +20 hits. Stunned for 6 rounds, then falls dead.', 'Blast into mouth. Knocked down. A month-long coma results. +30 hits.'),
	      (91, 96, 'Unconscious for 4 hours due to blow to sie of head. If no helm: skull crushed. +20 hits.', 'Knocked out for 6 hours with a strike to side of head.  +15 hits. If no helm: dies instantly.', 'Strike to side of head. Knocked out for 6 hours. +10 hits. If no helm: dies instantly.', 'Hart head strike. Knocked back 10 feet and stunned 6 rounds. If no helm: unconscious for 24 hours.', 'Head grappled. Stunned 9 rounds. If no helm, a coma results due to a fractured skull.', 'Strike to leg. +15 hits. -20 to activity. 2 hits per round. Stunned 3 rounds.', 'Spun about by blast. Off balance. +18 hits. -10 to activity. Stunned 1 around.'),
	      (97, 99, 'Blast to chest send ribcage through lungs. Drops and dies in 6 rounds. Vicious.', 'Sever lower leg. 20 hits per round. Drops and lapses into unconsciousness.', 'Strike through neck breaks backbone and severs spine.  Paralyzed from the neck down, permanently.', 'Totally awesome strike. Knocked to knees. If using 1 hand weapon: it is thrown backwards 10 feet. Stunned 15 rds.', 'Both arms entangled and pinned to chest. arms may not be moved until entanglement removed. -75 to activity.', 'Strike to head. Skull fracture. +30 hits. Knocked out. Fine shot.', 'Side strike. + 25 hits. -20 to activity due to broken ribs. Stunned 3 rounds.'),
	      (100, 100, 'Blow to jaw. Drives bone into brain. dies instantly.', 'Slash side. down, unconscious and dies in 3 rounds due to massive internal organ damage.', 'Strike through eye. Dies instantly. A read eye full.', 'Upper chest strike. Knocked 10 feet sideways. Fall down and break both arms. A 2 month coma results.', 'Neck grappled. If neck armor: -60 to activity due to neck sprain and stunned 3 rounds. If not: dies from broken neck.', 'Heart strike. Dies immediately. Weapon stuck and trapped under body. chance that weapon breaks is 60% - weapon bonus.', 'Strike to midsection. Bladder destroyed. Dies in 4 rounds, but is fully active until then.'),
	      (101, 106, 'Blow breaks hip. +15 hits. -75 to activity. Knocked down and stunned 3 rounds.', 'Major abdominal wound. +10 hits. 8 hits per round. -10 to activity. Stunned for 4 rounds', 'Major abdominal wound. +10 hits. 8 hits per round. -10 to activity. Stunned for 4 rounds', 'Blow breaks leg. +12 hits. -50 to activity. Stunned 1 round', 'Chest grasped. ribs broken. Stunned 5 rounds. -10 to activity.', 'Shatter shoulder in weapon arm.  +15 hits. Stunned 3 rounds. Arm is quite useless.', 'Head strike. Momentarily confused. +20 hits. Stunned 2 rounds.'),
	      (107, 109, 'Neck strike crushes throat. Cannot breath and stunned for 12 rounds. Poor fool then expires.', 'Sever weapon arm. 15 hits per round. Down and unconscious immediately.', 'Nailed in lower back. Down and unconscious. Dies form internal bleeding and shock in 6 rounds.', 'Strike to head. Knocked 10 feet backwards. +9 hits. Stunned 6 rounds. If no helm: a 4 week coma results.', 'Legs entangled and completely immobilized. Fall and break weapon arm. Disarmed and knocked out. +20 hits.', 'Vicious crossing strike. Blinded and upset.  Stunned 2 rounds, but then the poor brute can blunder around.', 'Blast buckles leg. Severe thigh wound. +25 hits. Dies in 5 rounds due to nerve damage, but is fully acitve until then.'),
	      (110, 110, 'Crushes hip. +35 hits. Stunned for 2 rounds. Active the following 4 rounds, but then dies of nerve failure.', 'Impaled in heart. Dies instantly. Heart destroyed. 25% change your weapon is stuck in foe for 3 rounds.', 'Shot through heart. Reels 10 feet to a spot suitable for dying. Wepaon stuck in spinning victim for at least 3 rounds.', 'Savage blow to the head. Knocked down. Dies in 12 rounds due to a severed vein.', 'Necked grappled. If neck armor: disarmed and stunned 5 rounds. If not: dies in 6 rounds.', 'Strike through cheek. Dies immediately. Unfortunately, the weapon is stuck in the bone for 2 rounds.', 'Vicious blast. Neck crunched and spine severed. Drops and dies in 3 rounds.'),
	      (111, 116, 'Shatter elbow in weapon arm. Arm useless. Stunned 5 rounds.', 'Sever hand. 12 hits per round. Knocked down and stunned for 6 rounds.', 'Strike through leg. Artery severed. Down and unconscious. 12 hits per round.', 'Awesome side shot. Knocked down and sideways 5 feet. Lower leg broken.  Stunned 7 rounds. -40 to activity.', 'Foot entangled. stumble, fall, break weapon on impack, and stunned 2 rounds. If no chest armor: take a "D" crush crit.', 'Strike to chin. Jaw shattered. Knocked out. +60 hits. A 1 month coma results.', 'Strike to eyes. Blinkded for 2 rounds.  +15 hits. -20 to activity.'),
	      (117, 119, 'Blow to side crushes chest cavity. Drops and dies in 3 rounds.', 'Sever spine. Collapses immediately. Paralyzed from the neck down - permanently. +20 hits.', 'Strike through kidneys. +9 hits. Knocked down and dies after 6 rounds of very intense agony. Sad.', 'Blow to shield shoulder. Stunned 9 rounds. -20 to activity. If no shield: unconscious and upper arm shattered.', 'Both legs wrapped up. Tumbles to ground and knocked out. -80 to activity due to a broken arm and a broken ankle. +20 hits.', 'Strike through the eye. Dies instantly and falls upon attacker, who then takes 20 hits and is pinned for 6 rounds.', 'Strike to body destroys a variety of organs.  Dies in 3 rounds, but the ignorant brute is fully active until then.'),
	      (120, 120, 'Blast to chest area. Destroy heart. Dies immediately. +25 hits. Fine work.', 'Strike to head destroys brain and makes life difficult for the unfortunate fool. Expires in a heap, immediately.', 'Shot through both ears. Hearing impaired, dies instantly. Awesome shot.', 'Frightening strike to temple. Knocked back 20 feet. Dies instantly. Not nice', 'Windpipe crushed. Dies instantly due to massive shock and savage asphyxiation.', 'Strike through ear destroys brain. The unforunate lummox dies instantly, and any ear was is removed', 'Superb strike drives ribe through heart. Drops and dies in 6 agonizing rounds.');

drop table if exists base_spells_attack;

create table base_spells_attack
       	     (roll_value_min unsigned tinyint,
	      roll_value_max unsigned tinyint,
	      plate_and_chain text,
	      leather text,
	      no_armor text);

insert into base_spells_attack
      	     (roll_value_min,
	      roll_value_max,
	      plate_and_chain,
	      leather,
	      no_armor)
	      values
	      (1, 2, 'F', 'F', 'F'),
	      (3, 4, 'F', 'F', 'F'),
	      (5, 8, 'F', 'F', '+70'),
	      (9, 12, 'F', 'F', '+65'),
	      (13, 16, 'F', '+45', '+60'),
	      (17, 20, '+45', '+40', '+50'),
	      (21, 24, '+40', '+35', '+45'),
	      (25, 28, '+35', '+30', '+35'),
	      (29, 32, '+30', '+25', '+30'),
	      (33, 36, '+25', '+20', '+20'),
	      (37, 40, '+20', '+15', '+15'),
	      (41, 44, '+15', '+10', '+5'),
	      (45, 48, '+10', '+5', '0'),
	      (49, 52, '+5', '0', '0'),
	      (53, 56, '0', '0', '-5'),
	      (57, 60, '0', '-5', '-10'),
	      (61, 64, '-5', '-5', '-15'),
	      (65, 68, '-5', '-10', '-20'),
	      (69, 72, '-10', '-15', '-25'),
	      (63, 76, '-25', '-20', '-30'),
	      (77, 80, '-30', '-25', '-35'),
	      (81, 84, '-35', '-30', '-40'),
	      (85, 88, '-40', '-35', '-45'),
	      (89, 92, '-45', '-40', '-50'),
	      (93, 96, '-50', '-45', '-55'),
	      (97, 99, '-65', '-65', '-65'),
	      (100, 100, '-90', '-90', '-90');


commit;

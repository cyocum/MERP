# Middle Earth Role Playing Utilities

This is a project to create tools to help players play Middle Earth
Role Playing Second Edition.

Much of the Rolemaster system is comprised of tables which are
consulted during play.  However, rolling, searching, and reading the
tables is a cumbersome process.  As the tables are mostly static, they
fit a relational database very well.  This small project is to create
a SQLite3 db and maybe some surrounding utilities to make playing
MERPs easier for me.

## Getting Started

The database script for creating the current database for the charts
is located in the `db` directory.  This will need to be loaded into a
SQLite3 instance.  See the [SQLite](https://www.sqlite.org) website
for instructions on how to install SQLite on your platform.  It is
particularly lightweight and will work on even low powered computers
which is why it was chosen for this project.  If you know SQL, you can
adapt the database for your database engine of choice.

Once you have SQLite, you read the database into a memory based
database thus:

```
.read db/merp.sql
```

Once you have that the database is structured around the various
charts.

## Database Tables

Many of the tables will have a `roll_value_min` and `roll_value_max`
columns.  this makes it easy to use the SQL BETWEEN keyword.  For
instance, 

```SQL
select routine from open_ended_roll where 55 between
roll_value_min and roll_value_max`.
```

### MT-1 Moving Manoeuvre Table

In the MERP DB, this is named `open_ended_roll` table.  In this is the
`roll_value_min` and `roll_value_max`, as described above, then each
difficulty level has its own column.  Choose the appropriate column
for the difficulty set by your GM.  For instance for a roll of 55 on a
light difficulty:

```SQL
select light from open_ended_roll where 55 between
roll_value_min and roll_value_max
```

On the original MT-1 table, anything less than -151 is an F.  This is
not represented in the DB so you will need to remember that when using
this table.

The difficulty list is:

* easy
* light
* medium
* hard
* very_hard
* extremely_hard
* sheer_folly
* absurd

### Static Action (ST-11)

This is named `static_action` table.  Each type of static action is
represented.  For instance, for a roll of 70 on an interaction and
influence static action:

```SQL
select interaction_and_influence from static_action 
where 70 between roll_value_min and roll_value_max
```

The columns avaliable are:

* disarming_traps_and_picking_locks
* general
* interaction_and_influence
* reading_runes_and_using_items
* perception_and_tracking

### Attack Tables (AT 1-9)

All attack table are structured similarly. each type
of armor has a corresponding column and a critical modifier column to
go with it.  For instance, for a roll of 100 on soft leather:

```SQL
select taca.soft_leather, c.critical_type, c.critical_roll_mod 
from tooth_and_claw_attack taca 
inner join criticals c on taca.soft_leather_crit_mod = c.critical_id 
where 100 between taca.roll_value_min and taca.roll_value_max
```

This is a bit more complex than the proceeding.  What is happening
here is that there is a `criticals` table which stores the critical
type and the critical table modifier.  Additionally, the `criticals`
table also stores the "Attack Failure" information so if you get a 'F'
in the critical, the attack has failed.  This table is linked to the
Tooth and Claw Attack Table via the `*_crit_mod` column that goes with
the armor type.  In the example above, to make that link, you `inner
join` the corresponding `soft_leather_crit_mod` column to the
`critical_id` column in the `criticals` table.  This will return for
the above:

```
12|A|-20
```

Which means that the attack did 12 points of damage and returned a
type 'A' critical which gives the attacker a -20 on their roll on the
critical table.

However, the "max results" for each type of attack are not
incorporated at this time so you will need to remember that when doing
the search.

The current attack tables avaliable are:

* tooth_and_claw_attack
* grappling_and_unbalancing_attack_table
* one_handed_slashing_weapons_attack_table
* one_handed_concussion_weapons_attack_table
* two_handed_weapons_attack_table
* missle_weapons_attack_table
* bolt_spells_attack_table
* ball_spells_attack_table

NB: There is an exceptional table called the `base_spells_attack`
table which only has a few of the usual armor types: plate_and_chain,
leather, no_armor.

### Critical/Fumble Tables (CT/FT)

The critical table has the resoultion for the various kinds of
criticals.  To use this table, take the critical modifier from the
appropriate attack table then roll and apply the modifier.  To search
this table, do the following:

```SQL
select unbalancing from crit_attack_table
where 120 between roll_value_min and roll_value_max;
```

For criticals, the various categories are columns and are thus:

* crush
* slash
* puncture
* unbalancing
* grappling
* large_creatures_physical
* large_creatures_spell
* heat
* cold
* electricity
* impact

For fumbles, the various categories are columns and are thus:

* hand_arms
* missle_weapons
* spell_failure
* moving_maneuver



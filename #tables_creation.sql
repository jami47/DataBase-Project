set linesize 200;
create table categories(
    category_id number(4),
    category_name varchar2(30),
    category_description varchar2(30),
    primary key(category_id)
);

create table items(
    item_id number(4),
    item_name varchar2(30),
    startBid number(10) CHECK (startBid >= 30),
    category_id number(4),
    sellerid number(4),
    primary key(item_id),
    foreign key(category_id) references categories(category_id)
    on delete cascade,
    foreign key(sellerid) references seller(sellerid)
);

create table userss(
    userid number(4),
    uname varchar2(30),
    umail varchar2(30) unique,
    ucity varchar2(15), CHECK (ucity in ('sylhet','chittagong','dhaka')),
    primary key(userid)
);

create table seller (
    sellerid number(4),
    smoney number(10),
    status varchar2(30), check (status in ('member','elite')),
    primary key (sellerid),
    constraint check_money_status check (
        (status = 'member' and smoney>=20) or
        (status = 'elite' and smoney>=100)
    )
);

create table auction (
    auc_id number(4),
    userid number(4),
    sellerid number(4),
    item_id number(4),
    primary key(auc_id),
    foreign key(userid) references userss(userid),
    foreign key(sellerid) references seller(sellerid),
    foreign key(userid) references userss(userid)
);
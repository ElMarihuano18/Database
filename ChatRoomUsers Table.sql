-- Table: chat_room_users

-- DROP TABLE chat_room_users;

CREATE TABLE chat_room_users
(
  "Room_id" integer,
  "User_id" integer,
  joined timestamp without time zone,
  CONSTRAINT "FK_Room_id" FOREIGN KEY ("Room_id")
      REFERENCES chat_room (chat_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT "FK_User_id" FOREIGN KEY ("User_id")
      REFERENCES users ("User_id") MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE chat_room_users
  OWNER TO gators;

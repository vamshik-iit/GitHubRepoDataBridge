CREATE MIGRATION m1wdsj2cjbt5bliuvsc7gh3l6dufeziudfpvh4vudieixldig4utka
    ONTO m15y25e56d5eapov7otteqcdm56abphghark3mivqpj5q5mueteyyq
{
  ALTER TYPE default::Post {
      ALTER PROPERTY creation_date {
          SET TYPE std::str USING (<std::str>.creation_date);
      };
      ALTER PROPERTY last_activity_date {
          SET TYPE std::str USING (<std::str>.last_activity_date);
      };
  };
  ALTER TYPE default::User {
      ALTER PROPERTY last_modified_date {
          SET TYPE std::datetime USING (<std::datetime>.last_modified_date);
      };
  };
};

CREATE MIGRATION m15y25e56d5eapov7otteqcdm56abphghark3mivqpj5q5mueteyyq
    ONTO m1llwnghtva7gzhumwmlh2a4rx2swagafbrtouelmhjushwkyp6n5q
{
  ALTER TYPE default::User {
      ALTER PROPERTY creation_date {
          SET TYPE std::datetime USING (<std::datetime>.creation_date);
      };
      ALTER PROPERTY last_access_date {
          SET TYPE std::datetime USING (<std::datetime>.last_access_date);
      };
  };
};

CREATE MIGRATION m1llwnghtva7gzhumwmlh2a4rx2swagafbrtouelmhjushwkyp6n5q
    ONTO m1candqqz7mzppvldk7z3txcaht5nz7hnqfngdstui2syxbczoezea
{
  ALTER TYPE default::Answer {
      ALTER PROPERTY creation_date {
          SET TYPE std::str USING (<std::str>.creation_date);
      };
  };
  ALTER TYPE default::Comments {
      ALTER PROPERTY creation_date {
          SET TYPE std::str USING (<std::str>.creation_date);
      };
  };
  ALTER TYPE default::Question {
      ALTER PROPERTY creation_date {
          SET TYPE std::str USING (<std::str>.creation_date);
      };
  };
  ALTER TYPE default::TagSynonyms {
      ALTER PROPERTY creation_date {
          SET TYPE std::str USING (<std::str>.creation_date);
      };
      ALTER PROPERTY last_applied_date {
          SET TYPE std::str USING (<std::str>.last_applied_date);
      };
  };
  ALTER TYPE default::User {
      ALTER PROPERTY creation_date {
          SET TYPE std::str USING (<std::str>.creation_date);
      };
      ALTER PROPERTY last_access_date {
          SET TYPE std::str USING (<std::str>.last_access_date);
      };
      ALTER PROPERTY last_modified_date {
          SET TYPE std::str USING (<std::str>.last_modified_date);
      };
  };
};

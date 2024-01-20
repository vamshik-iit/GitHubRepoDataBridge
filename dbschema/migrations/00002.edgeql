CREATE MIGRATION m1candqqz7mzppvldk7z3txcaht5nz7hnqfngdstui2syxbczoezea
    ONTO m1ccltob5a746pb4ml4wrhzug2ipranoj2it6kbdmeylhmy5jnaufa
{
  ALTER TYPE default::Answer {
      ALTER PROPERTY creation_date {
          SET TYPE std::datetime USING (<std::datetime>.creation_date);
      };
  };
  ALTER TYPE default::Comments {
      ALTER PROPERTY creation_date {
          SET TYPE std::datetime USING (<std::datetime>.creation_date);
      };
  };
  ALTER TYPE default::Question {
      ALTER PROPERTY creation_date {
          SET TYPE std::datetime USING (<std::datetime>.creation_date);
      };
  };
  ALTER TYPE default::TagSynonyms {
      ALTER PROPERTY creation_date {
          SET TYPE std::datetime USING (<std::datetime>.creation_date);
      };
      ALTER PROPERTY last_applied_date {
          SET TYPE std::datetime USING (<std::datetime>.last_applied_date);
      };
  };
  ALTER TYPE default::User {
      ALTER PROPERTY creation_date {
          SET TYPE std::datetime USING (<std::datetime>.creation_date);
      };
      ALTER PROPERTY last_access_date {
          SET TYPE std::datetime USING (<std::datetime>.last_access_date);
      };
      ALTER PROPERTY last_modified_date {
          SET TYPE std::datetime USING (<std::datetime>.last_modified_date);
      };
  };
};

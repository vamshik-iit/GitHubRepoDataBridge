CREATE MIGRATION m1iixpnwiyfrfqugmqitsc3xms32sdfgnj6zljdsv4utmepzu74pxa
    ONTO m1vyx2jn64krzqqawrxxgoegmmmbxy5ybdf2pmcdzx5775a4ejfwwa
{
  CREATE TYPE default::CommitsData {
      CREATE PROPERTY commit_number: std::int32;
      CREATE PROPERTY created_at: std::datetime;
      CREATE PROPERTY repo_name: std::str;
  };
  CREATE TYPE default::PullsData {
      CREATE PROPERTY Author: std::str;
      CREATE PROPERTY State: std::str;
      CREATE PROPERTY closed_at: std::datetime;
      CREATE PROPERTY created_at: std::datetime;
      CREATE PROPERTY labels: std::str;
      CREATE PROPERTY pull_req_number: std::int32;
      CREATE PROPERTY repo_name: std::str;
  };
};

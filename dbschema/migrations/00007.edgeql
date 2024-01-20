CREATE MIGRATION m1vyx2jn64krzqqawrxxgoegmmmbxy5ybdf2pmcdzx5775a4ejfwwa
    ONTO m1jmbdprtuzx4dpni5f64gxrs2kvydx3rhzdhqjl5rkefemzm22vcq
{
  CREATE TYPE default::RepoData {
      CREATE PROPERTY Author: std::str;
      CREATE PROPERTY State: std::str;
      CREATE PROPERTY closed_at: std::datetime;
      CREATE PROPERTY created_at: std::datetime;
      CREATE PROPERTY issue_number: std::int32;
      CREATE PROPERTY labels: std::str;
      CREATE PROPERTY locked: std::str;
      CREATE PROPERTY repo_name: std::str;
      CREATE PROPERTY score: std::str;
      CREATE PROPERTY state_reason: std::str;
      CREATE PROPERTY title: std::str;
      CREATE PROPERTY updated_at: std::datetime;
  };
};

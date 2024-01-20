CREATE MIGRATION m1jmbdprtuzx4dpni5f64gxrs2kvydx3rhzdhqjl5rkefemzm22vcq
    ONTO m1wdsj2cjbt5bliuvsc7gh3l6dufeziudfpvh4vudieixldig4utka
{
  CREATE TYPE default::MyTest {
      CREATE PROPERTY creation_date: std::datetime;
  };
};

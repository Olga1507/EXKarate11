Feature: Db connection

  Background:
    * def config = {username: 'diasoft', password: '123456', url: 'jdbc:jtds:sqlserver://facb01.diasoft.ru:2014/rko3', driverClassName: 'net.sourceforge.jtds.jdbc.Driver'}
    * def DbUtils = Java.type('examples.DbUtils')
    * def db = new DbUtils(config)

    @artifacts-data=one-row
    Scenario: Get 1 row from table
      * def result = db.readRows('select Number from tMSHMessage where MSHMessageID = 10000006296')
      * print result
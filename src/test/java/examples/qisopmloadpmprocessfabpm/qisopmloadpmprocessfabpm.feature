Feature: sample karate test script for qisopmloadpmprocessfabpm
* header Authorization = 'Bearer ' + accessToken

  Background:
    * url 'http://qisopmloadpmprocessfabpm.msghubtmp.qrun.diasoft.ru/qisopmloadpmprocessfabpm/latest/loadpaymentmessagesprocessfa'
    * def now = function(){ return java.lang.System.currentTimeMillis() }
    * def Utils = Java.type('examples.Utils');


  Scenario: Utils
    * print Utils.rndString(5)
    * def s = 'frg'
    * def s2 = s.replace("g", "aaa")
    * print s2

  Scenario: load process
#    * def fileName = now()+'.xml'
    * def fileName = Utils.rndString(5) + '.xml'
    * def object =
      """{
            "businessKey": "package[30291]-format[IS022CBPRP]-rule[Загрузка ISO по фтп]",
            "variables": {
              "packageId": 30291,
              "formatId": 2,
              "package": {
                "msgPackageId": "30291",
                "createAt": "2023-09-29T13:21:52.234+0000",
                "loadRuleName": "Загрузка ISO по фтп",
                "destination": "ВТБ",
                "fileName": "#(fileName)",
                "formatVersion": "IS022CBPRP",
                "source": "PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4NCjxEb2N1bWVudCB4bWxucz0idXJuOmlzbzpzdGQ6aXNvOjIwMDIyOnRlY2g6eHNkOnBhY3MuMDA5LjAwMS4wOCI+DQoJPEZJQ2R0VHJmPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIA0KCQk8R3JwSGRyPg0KCQkJPE1zZ0lkPjg4ODc8L01zZ0lkPg0KCQkJPENyZUR0VG0+MjAyMy0wMy0xOFQxMzowNToxNi42MzMrMDM6MDA8L0NyZUR0VG0+DQoJCQk8TmJPZlR4cz4xPC9OYk9mVHhzPg0KCQkJPFN0dGxtSW5mPg0KCQkJCTxTdHRsbU10ZD5JTkdBPC9TdHRsbU10ZD4NCgkJCTwvU3R0bG1JbmY+DQogICAgICA8SW5zdGdBZ3Q+DQoJCQkJPEZpbkluc3RuSWQ+DQoJCQkJCTxCSUNGST5WVEJCUlVNTVhYWDwvQklDRkk+DQoJCQkJPC9GaW5JbnN0bklkPg0KCQkJPC9JbnN0Z0FndD4NCgkJCTxJbnN0ZEFndD4NCgkJCQk8RmluSW5zdG5JZD4NCgkJCQkJPEJJQ0ZJPk9VUkJSVU1NWFhYPC9CSUNGST4NCgkJCQk8L0Zpbkluc3RuSWQ+DQoJCQk8L0luc3RkQWd0Pg0KCQk8L0dycEhkcj4NCgkJPENkdFRyZlR4SW5mPg0KCQkJPFBtdElkPg0KCQkJCTxJbnN0cklkPjg4NzY1NCA8L0luc3RySWQ+DQoJCQkJPEVuZFRvRW5kSWQ+c2xkamZnbHNkZmpnbCBmc2RqZ2xzZGZnamZsZHNrZ2o8L0VuZFRvRW5kSWQ+DQoJCQkJPFVFVFI+YWJjZGZhYzAtNDM0MC00MDAwLTgwMDAtMzQ1NDM1MzQ0NDAwPC9VRVRSPg0KCQkJPC9QbXRJZD4NCgkJCTxJbnRyQmtTdHRsbUFtdCBDY3k9IlVTRCI+MTAwPC9JbnRyQmtTdHRsbUFtdD4NCgkJCTxJbnRyQmtTdHRsbUR0PjIwMjMtMDMtMTg8L0ludHJCa1N0dGxtRHQ+DQoJCQk8SW5zdGdBZ3Q+DQoJCQkJPEZpbkluc3RuSWQ+DQoJCQkJCTxCSUNGST5WVEJCUlVNTVhYWDwvQklDRkk+DQoJCQkJPC9GaW5JbnN0bklkPg0KCQkJPC9JbnN0Z0FndD4NCgkJCTxJbnN0ZEFndD4NCgkJCQk8RmluSW5zdG5JZD4NCgkJCQkJPEJJQ0ZJPk9VUkJSVU1NWFhYPC9CSUNGST4NCgkJCQk8L0Zpbkluc3RuSWQ+DQoJCQk8L0luc3RkQWd0Pg0KCQkJPERidHI+DQoJCQkJPEZpbkluc3RuSWQ+DQogICAgIAkJCQk8QklDRkk+VlRCQlJVTU1YWFg8L0JJQ0ZJPg0KCQkJCTwvRmluSW5zdG5JZD4NCgkJCTwvRGJ0cj4NCgkJCTxDZHRyPg0KCQkJCTxGaW5JbnN0bklkPg0KICAgICAJCQkJPEJJQ0ZJPlNBQlJSVU1NWFhYPC9CSUNGST4NCgkJCQk8L0Zpbkluc3RuSWQ+DQoJCQk8L0NkdHI+DQoJCQk8Q2R0ckFjY3Q+DQoJCQkJPElkPg0KCQkJCQk8T3Rocj4NCgkJCQkJPElkPjMwMTExODQwODIwMDAwMDAwMDAwPC9JZD4NCgkJCQkJPC9PdGhyPg0KCQkJCTwvSWQ+CQkJDQoJCQk8L0NkdHJBY2N0PgkNCgkJPC9DZHRUcmZUeEluZj4NCgk8L0ZJQ2R0VHJmPg0KPC9Eb2N1bWVudD4NCg\u003d\u003d",
                "direction": "0",
                "status": "1",
                "parentMsgPackageId": "0",
                "msgFormatId": "2",
                "sourceType": "1",
                "branchName": "*НАШ_БАНК",
                "formatName": "IS022CBPRP",
                "messageCount": "0",
                "sender": "*НАШ_БАНК",
                "childCount": 0,
                "humanTaskId": "",
                "msgPackageType": "",
                "processId": "65"
              },
              "testAttr": "888"
            }
          }"""


    And request object
    When method post
    Then status 200
    * print response
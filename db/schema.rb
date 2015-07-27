# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "tbCoPhone", id: false, force: :cascade do |t|
    t.integer "CID",   limit: 4,  default: 0
    t.integer "Ph",    limit: 2,  default: 0
    t.string  "Phone", limit: 10,             null: false
  end

  add_index "tbCoPhone", ["CID"], name: "tbCoPhone$ID"

  create_table "tbIndPhone", id: false, force: :cascade do |t|
    t.integer "ID",    limit: 4,  default: 0
    t.integer "Ph",    limit: 2,  default: 0
    t.string  "Phone", limit: 10,             null: false
  end

  add_index "tbIndPhone", ["ID"], name: "tbIndPhone$ID"

  create_table "tblAddress", id: false, force: :cascade do |t|
    t.string "TOA",             limit: 2
    t.string "TOA Description", limit: 15
  end

  create_table "tblAltAddrCo", id: false, force: :cascade do |t|
    t.integer "CID",       limit: 4,  default: 0
    t.integer "CAddrType", limit: 2,  default: 0
    t.string  "CAddress1", limit: 50
    t.string  "CAddress2", limit: 50
    t.string  "CCity",     limit: 20
    t.string  "CState",    limit: 2
    t.string  "CZip",      limit: 9
    t.string  "CPhone",    limit: 10
    t.string  "CTollFree", limit: 10
    t.string  "CFax",      limit: 10
  end

  add_index "tblAltAddrCo", ["CID"], name: "tblAltAddrCo$ID"

  create_table "tblAltAddrInd", id: false, force: :cascade do |t|
    t.integer "ID",       limit: 4,  default: 0
    t.integer "AddrType", limit: 2,  default: 0
    t.string  "Address1", limit: 50
    t.string  "Address2", limit: 50
    t.string  "City",     limit: 20
    t.string  "State",    limit: 2
    t.string  "Zip",      limit: 9
    t.string  "Phone",    limit: 10
    t.string  "Mobile",   limit: 10
    t.string  "Beeper",   limit: 10
    t.string  "Work",     limit: 10
    t.string  "Ext",      limit: 4
  end

  add_index "tblAltAddrInd", ["ID"], name: "tblAltAddrInd$ID"

  create_table "tblBusiness", primary_key: "TOB", force: :cascade do |t|
    t.string "TOB Description", limit: 15
  end

  create_table "tblCompany", primary_key: "CID", force: :cascade do |t|
    t.string       "CompanyName",    limit: 50,                   null: false
    t.string       "CEO/Owner",      limit: 30
    t.string       "CDOI",           limit: 4000
    t.string       "TIN",            limit: 9
    t.string       "CTOB",           limit: 15
    t.string       "CAddress1",      limit: 50
    t.string       "CAddress2",      limit: 50
    t.string       "CCity",          limit: 20
    t.string       "CState",         limit: 2
    t.string       "CZip",           limit: 9
    t.string       "POBox",          limit: 50
    t.string       "POCity",         limit: 20
    t.string       "POState",        limit: 2
    t.string       "POZip",          limit: 9
    t.boolean      "PO",                          default: false
    t.boolean      "MC",                          default: false
    t.string       "CArC",           limit: 3
    t.string       "CPhone",         limit: 10
    t.string       "CTollFree",      limit: 10
    t.string       "CFax",           limit: 10
    t.boolean      "CContractor",                 default: false
    t.boolean      "CMisc",                       default: false
    t.string       "CInvEmail",      limit: 75
    t.ss_timestamp "SSMA_TimeStamp",                              null: false
  end

  create_table "tblCountry", primary_key: "Country", force: :cascade do |t|
    t.string "CnC", limit: 3
  end

  create_table "tblDeposit", primary_key: "DpID", force: :cascade do |t|
    t.integer "DpNo",     limit: 4,                             default: 0
    t.string  "DpDate",   limit: 4000
    t.integer "EID",      limit: 4,                             default: 0
    t.money   "DpAmount",              precision: 19, scale: 4, default: 0.0
  end

  add_index "tblDeposit", ["DpID"], name: "tblDeposit$DpID", unique: true
  add_index "tblDeposit", ["EID"], name: "tblDeposit$DpEID"

  create_table "tblEntity", primary_key: "EID", force: :cascade do |t|
    t.integer      "ID",             limit: 4,          default: 840,   null: false
    t.integer      "CID",            limit: 4,          default: 264,   null: false
    t.integer      "RID",            limit: 2,          default: 1
    t.integer      "Title",          limit: 2,          default: 0
    t.boolean      "Cnfdtl",                            default: false
    t.boolean      "Shit",                              default: false
    t.text         "email",          limit: 2147483647
    t.text         "web",            limit: 2147483647
    t.boolean      "PBook",                             default: true
    t.boolean      "XMas",                              default: false
    t.boolean      "BDay",                              default: false
    t.boolean      "ADay",                              default: false
    t.text         "Notes",          limit: 2147483647
    t.ss_timestamp "SSMA_TimeStamp",                                    null: false
  end

  add_index "tblEntity", ["CID"], name: "tblEntity$tblCompanytblEntity"
  add_index "tblEntity", ["EID"], name: "tblEntity$EID", unique: true
  add_index "tblEntity", ["ID"], name: "tblEntity$tblIndividualtblEntity"
  add_index "tblEntity", ["RID"], name: "tblEntity$RID"

  create_table "tblIndividual", primary_key: "ID", force: :cascade do |t|
    t.string       "LastName",       limit: 25,                   null: false
    t.string       "MaidenName",     limit: 25
    t.string       "FirstName",      limit: 25
    t.string       "MiddleName",     limit: 25
    t.string       "GoesBy",         limit: 15
    t.string       "Prefix",         limit: 6
    t.string       "Suffix",         limit: 6
    t.boolean      "HoH",                         default: false
    t.string       "DOB",            limit: 4000
    t.string       "DOD",            limit: 4000
    t.string       "Sex",            limit: 1,    default: "1"
    t.string       "SSNumber",       limit: 9
    t.string       "AD",             limit: 1
    t.string       "Address1",       limit: 50
    t.string       "Address2",       limit: 50
    t.string       "City",           limit: 20
    t.string       "State",          limit: 2
    t.string       "Zip",            limit: 10
    t.integer      "MC",             limit: 2,    default: 0
    t.string       "CnC",            limit: 3
    t.string       "CiC",            limit: 4
    t.string       "ArC",            limit: 3
    t.string       "Phone",          limit: 10
    t.string       "Mobile",         limit: 10
    t.string       "Beeper",         limit: 10
    t.string       "Work",           limit: 10
    t.string       "Ext",            limit: 4
    t.integer      "Spse",           limit: 4
    t.string       "Ann Dte",        limit: 4000
    t.ss_timestamp "SSMA_TimeStamp",                              null: false
  end

  create_table "tblInventoryInvoice", primary_key: "IvID", force: :cascade do |t|
    t.string       "IvNo",           limit: 10
    t.string       "IvDate",         limit: 4000
    t.integer      "EID",            limit: 4,                             default: 0
    t.money        "IvAmt",                       precision: 19, scale: 4, default: 0.0
    t.boolean      "IvPd",                                                 default: false
    t.string       "IvPdDate",       limit: 4000
    t.integer      "IvPdChkNo",      limit: 4,                             default: 0
    t.ss_timestamp "SSMA_TimeStamp",                                                       null: false
  end

  add_index "tblInventoryInvoice", ["EID"], name: "tblInventoryInvoice$EID"
  add_index "tblInventoryInvoice", ["IvID"], name: "tblInventoryInvoice$IvID"

  create_table "tblInventoryItem", primary_key: "IiID", force: :cascade do |t|
    t.integer      "MID",            limit: 4,                             default: 0
    t.string       "IiSN",           limit: 20
    t.money        "IiCost",                      precision: 19, scale: 4, default: 0.0
    t.integer      "IvID",           limit: 4,                             default: 0
    t.string       "IiScanDate",     limit: 4000
    t.boolean      "IiHistory",                                            default: false
    t.ss_timestamp "SSMA_TimeStamp",                                                       null: false
  end

  add_index "tblInventoryItem", ["IiID"], name: "tblInventoryItem$IiID"
  add_index "tblInventoryItem", ["IiSN"], name: "tblInventoryItem$IiSN", unique: true
  add_index "tblInventoryItem", ["MID"], name: "tblInventoryItem$InID"

  create_table "tblInventoryItemTemp", id: false, force: :cascade do |t|
    t.string "Type",             limit: 20
    t.string "MNtblInventoryIn", limit: 255
    t.string "SNtblInventoryIn", limit: 255
    t.string "Date",             limit: 4000
  end

  create_table "tblInvoice", primary_key: "InID", force: :cascade do |t|
    t.integer      "JID",            limit: 4,    default: 0
    t.string       "InType",         limit: 2,    default: "WO",                 null: false
    t.integer      "InNo",           limit: 4,    default: 0
    t.string       "InDoS",          limit: 4000
    t.string       "InInvDt",        limit: 4000
    t.boolean      "InPd",                        default: false
    t.string       "InPdDt",         limit: 4000
    t.integer      "InTaxCde",       limit: 4,    default: 0
    t.string       "InTaxCName",     limit: 20
    t.real         "InTaxC",                      default: 0.0
    t.real         "InTaxS",                      default: 0.054999999701976776
    t.string       "InTax",          limit: 1,    default: "T"
    t.real         "InTaxSR",                     default: 0.0
    t.ss_timestamp "SSMA_TimeStamp",                                             null: false
  end

  add_index "tblInvoice", ["InID"], name: "tblInvoice$InID"
  add_index "tblInvoice", ["InNo"], name: "tblInvoice$InNo"
  add_index "tblInvoice", ["JID"], name: "tblInvoice$JID"

  create_table "tblInvoiceDetail", id: false, force: :cascade do |t|
    t.integer      "InID",           limit: 4,   default: 0
    t.string       "InType",         limit: 2,   default: "WO",  null: false
    t.integer      "InNo",           limit: 4,   default: 0,     null: false
    t.integer      "IdItem",         limit: 2
    t.string       "IdDesc",         limit: 250
    t.boolean      "IdTax",                      default: false
    t.float        "IdPrice",                    default: 0.0
    t.ss_timestamp "SSMA_TimeStamp",                             null: false
  end

  add_index "tblInvoiceDetail", ["IdDesc"], name: "tblInvoiceDetail$IdDesc"
  add_index "tblInvoiceDetail", ["IdItem"], name: "tblInvoiceDetail$IdItem"
  add_index "tblInvoiceDetail", ["IdPrice"], name: "tblInvoiceDetail$IdPrice"
  add_index "tblInvoiceDetail", ["InID"], name: "tblInvoiceDetail$InID"

  create_table "tblInvoicePayment", id: false, force: :cascade do |t|
    t.integer "InID",      limit: 4,                             default: 0
    t.string  "IpDate",    limit: 4000
    t.money   "IpAmount",               precision: 19, scale: 4, default: 0.0
    t.integer "IpDeposit", limit: 4,                             default: 0
    t.integer "IpType",    limit: 2,                             default: 0
    t.string  "IpCheckNo", limit: 10
    t.string  "IpDesc",    limit: 255
  end

  add_index "tblInvoicePayment", ["InID"], name: "tblInvoicePayment$InID"

  create_table "tblJob", primary_key: "JID", force: :cascade do |t|
    t.string       "JStNumber",      limit: 8
    t.string       "JStName",        limit: 30
    t.string       "JStDir",         limit: 2
    t.string       "JCity",          limit: 20
    t.string       "JState",         limit: 2
    t.string       "JZip",           limit: 5
    t.string       "JStyle",         limit: 1,                                   default: "0"
    t.integer      "JSqFtg",         limit: 2,                                   default: 0
    t.integer      "JGarages",       limit: 2,                                   default: 0
    t.boolean      "JActv",                                                      default: true
    t.boolean      "JO_C",                                                       default: false
    t.integer      "JCntrc",         limit: 4,                                   default: 0
    t.integer      "JOwnr",          limit: 4,                                   default: 0
    t.integer      "JInstlr",        limit: 4,                                   default: 840
    t.integer      "JGutters",       limit: 4,                                   default: 0
    t.integer      "JGCntrc",        limit: 4,                                   default: 0
    t.boolean      "JPCity",                                                     default: false
    t.string       "JPCity#",        limit: 15
    t.string       "JPCityDate",     limit: 4000
    t.money        "JPCityCost",                        precision: 19, scale: 4, default: 0.0
    t.boolean      "JPMUD",                                                      default: false
    t.string       "JPMUD#",         limit: 7
    t.string       "JPMUDDate",      limit: 4000
    t.money        "JPMUDCost",                         precision: 19, scale: 4, default: 0.0
    t.string       "JRIComplete",    limit: 4000
    t.money        "JRIPrice",                          precision: 19, scale: 4, default: 0.0
    t.money        "JGuttersCost",                      precision: 19, scale: 4, default: 0.0
    t.text         "JExtras",        limit: 2147483647
    t.money        "JExCost",                           precision: 19, scale: 4, default: 0.0
    t.boolean      "JEW",                                                        default: false
    t.string       "JcEWNo",         limit: 10
    t.integer      "ScID",           limit: 4,                                   default: 0
    t.string       "JcStDate",       limit: 4000
    t.string       "JcEnDate",       limit: 4000
    t.money        "JcPrice",                           precision: 19, scale: 4, default: 0.0
    t.boolean      "JSvCMail",                                                   default: false
    t.integer      "JcChecks",       limit: 2,                                   default: 0
    t.boolean      "JcSpriing",                                                  default: false
    t.boolean      "JcFall",                                                     default: false
    t.text         "JcInstr",        limit: 2147483647
    t.text         "JcDesc",         limit: 2147483647
    t.ss_timestamp "SSMA_TimeStamp",                                                             null: false
  end

  create_table "tblJob Materials", id: false, force: :cascade do |t|
    t.integer      "JID",            limit: 4,                           default: 0
    t.integer      "MID",            limit: 4,                           default: 0
    t.real         "JSeq",                                               default: 0.0
    t.string       "JMDescription",  limit: 50
    t.integer      "JMUnit",         limit: 2,                           default: 0
    t.money        "JMPrice",                   precision: 19, scale: 4, default: 0.0
    t.ss_timestamp "SSMA_TimeStamp",                                                   null: false
  end

  add_index "tblJob Materials", ["JID"], name: "tblJob Materials$tblJobtblJob Materials"

  create_table "tblJob Proposal", id: false, force: :cascade do |t|
    t.integer      "JID",            limit: 4,  default: 0
    t.boolean      "SpDt",                      default: false
    t.string       "SpDt Desc",      limit: 50
    t.boolean      "SpRg",                      default: false
    t.string       "SpRg Desc",      limit: 50
    t.boolean      "RADt",                      default: false
    t.string       "RADt Desc",      limit: 50
    t.boolean      "RARg",                      default: false
    t.string       "RARg Desc",      limit: 50
    t.boolean      "SnDt",                      default: false
    t.string       "SnDt Desc",      limit: 50
    t.boolean      "GsLn",                      default: false
    t.string       "GsLn Desc",      limit: 50
    t.boolean      "Flue",                      default: false
    t.string       "Flue Desc",      limit: 50
    t.boolean      "Fan",                       default: false
    t.string       "Fan Desc",       limit: 50
    t.boolean      "Hood",                      default: false
    t.string       "Hood Desc",      limit: 50
    t.boolean      "FlFp",                      default: false
    t.string       "FlFp Desc",      limit: 50
    t.boolean      "FlWW",                      default: false
    t.string       "FlWW Desc",      limit: 50
    t.boolean      "FlDr",                      default: false
    t.string       "FlDr Desc",      limit: 50
    t.boolean      "FlSt",                      default: false
    t.string       "FlSt Desc",      limit: 50
    t.boolean      "FlSdRl",                    default: false
    t.string       "FlSdRl Desc",    limit: 50
    t.boolean      "FlVly",                     default: false
    t.string       "FlVly Desc",     limit: 50
    t.boolean      "FlAp",                      default: false
    t.string       "FlAp Desc",      limit: 50
    t.boolean      "Chute",                     default: false
    t.string       "Chute Desc",     limit: 50
    t.boolean      "Dryer",                     default: false
    t.string       "Dryer Desc",     limit: 50
    t.boolean      "Misc1",                     default: false
    t.string       "Misc1 Desc",     limit: 50
    t.boolean      "Misc2",                     default: false
    t.string       "Misc2 Desc",     limit: 50
    t.ss_timestamp "SSMA_TimeStamp",                            null: false
  end

  create_table "tblJob Unit", primary_key: "JuID", force: :cascade do |t|
    t.integer      "JID",            limit: 4,                                   default: 0
    t.integer      "JUnit",          limit: 4
    t.integer      "JUType",         limit: 2,                                                 null: false
    t.string       "JUMNumber",      limit: 20
    t.string       "JUSer#",         limit: 15
    t.money        "JUPrice",                           precision: 19, scale: 4, default: 0.0
    t.string       "JUInstalled",    limit: 4000
    t.text         "JUNotes",        limit: 2147483647
    t.integer      "JA/CLineSetFt",  limit: 2,                                   default: 0
    t.money        "JA/CLineSetPr",                     precision: 19, scale: 4, default: 0.0
    t.ss_timestamp "SSMA_TimeStamp",                                                           null: false
  end

  add_index "tblJob Unit", ["JID"], name: "tblJob Unit$tblJobtblJob Unit"

  create_table "tblJob Work Order", id: false, force: :cascade do |t|
    t.integer      "JID",            limit: 4,                             default: 0
    t.integer      "JWO#",           limit: 4,                             default: 0
    t.string       "JWODoS",         limit: 4000
    t.boolean      "JWOInv",                                               default: false
    t.string       "JWOInvDt",       limit: 4000
    t.boolean      "JWOPd",                                                default: false
    t.money        "JWOAmtPd",                    precision: 19, scale: 4, default: 0.0
    t.string       "JWODtPd",        limit: 4000
    t.integer      "JWOTaxCde",      limit: 4,                             default: 0
    t.string       "JWOTaxCName",    limit: 20
    t.real         "JWOTaxC",                                              default: 0.0
    t.real         "JWOTaxS",                                              default: 0.054999999701976776
    t.string       "JWOTax",         limit: 1,                             default: "T"
    t.real         "JWOTaxSR",                                             default: 0.0
    t.ss_timestamp "SSMA_TimeStamp",                                                                      null: false
  end

  add_index "tblJob Work Order", ["JID"], name: "tblJob Work Order$tblJobtblJob Work Order"
  add_index "tblJob Work Order", ["JWO#"], name: "tblJob Work Order$JHWO#", unique: true

  create_table "tblJob Work Order Details", id: false, force: :cascade do |t|
    t.integer      "JWO#",           limit: 4,   default: 0
    t.integer      "JItem",          limit: 2
    t.string       "JHDesc",         limit: 250
    t.boolean      "JHTax",                      default: false
    t.float        "JHPrice",                    default: 0.0
    t.ss_timestamp "SSMA_TimeStamp",                             null: false
  end

  add_index "tblJob Work Order Details", ["JWO#"], name: "tblJob Work Order Details$tblJob Work OrdertblJob Work Order Details"

  create_table "tblJobServiceCall", id: false, force: :cascade do |t|
    t.integer      "JID",            limit: 4,                             default: 0
    t.integer      "JSC#",           limit: 4,                             default: 0
    t.string       "JSCDoS",         limit: 4000
    t.boolean      "JSCInv",                                               default: false
    t.string       "JSCInvDt",       limit: 4000
    t.boolean      "JSCPd",                                                default: false
    t.money        "JSCAmtPd",                    precision: 19, scale: 4, default: 0.0
    t.string       "JSCDtPd",        limit: 4000
    t.integer      "JSCTaxCde",      limit: 4,                             default: 0
    t.string       "JSCTaxCName",    limit: 20
    t.real         "JSCTaxC",                                              default: 0.0
    t.real         "JSCTaxS",                                              default: 0.054999999701976776
    t.string       "JSCTax",         limit: 1,                             default: "T"
    t.real         "JSCTaxSR",                                             default: 0.0
    t.ss_timestamp "SSMA_TimeStamp",                                                                      null: false
  end

  add_index "tblJobServiceCall", ["JID"], name: "tblJobServiceCall$JID"
  add_index "tblJobServiceCall", ["JSC#"], name: "tblJobServiceCall$JHWO#", unique: true

  create_table "tblJobServiceCallDetails", id: false, force: :cascade do |t|
    t.integer      "JSC#",           limit: 4,   default: 0
    t.integer      "JItem",          limit: 2
    t.string       "JHDesc",         limit: 250
    t.boolean      "JHTax",                      default: false
    t.float        "JHPrice",                    default: 0.0
    t.ss_timestamp "SSMA_TimeStamp",                             null: false
  end

  create_table "tblJobUnitsTemp", id: false, force: :cascade do |t|
    t.integer "JID",  limit: 4,  default: 0
    t.string  "InMN", limit: 20
    t.string  "InSN", limit: 15
  end

  add_index "tblJobUnitsTemp", ["JID"], name: "tblJobUnitsTemp$JID"

  create_table "tblMail", id: false, force: :cascade do |t|
    t.string "TOM",             limit: 2
    t.string "TOM Description", limit: 15
  end

  create_table "tblMaterials", primary_key: "MID", force: :cascade do |t|
    t.real         "MSeq",                                               default: 0.0
    t.string       "MDesc",          limit: 50
    t.string       "MUnit",          limit: 1,                           default: "1"
    t.money        "MPrice",                    precision: 19, scale: 4, default: 0.0
    t.ss_timestamp "SSMA_TimeStamp",                                                   null: false
  end

  create_table "tblModel", primary_key: "MID", force: :cascade do |t|
    t.integer "MType",             limit: 2,                           default: 0
    t.string  "MNumber",           limit: 20
    t.integer "EID",               limit: 4,                           default: 0
    t.string  "Model Description", limit: 50
    t.money   "Model Price",                  precision: 19, scale: 4, default: 0.0
  end

  add_index "tblModel", ["EID"], name: "tblModel$EID"
  add_index "tblModel", ["MNumber"], name: "tblModel$MNumber", unique: true

  create_table "tblMyCompany", id: false, force: :cascade do |t|
    t.integer "EID", limit: 4, default: 0
    t.integer "ID",  limit: 4, default: 0
  end

  add_index "tblMyCompany", ["EID"], name: "tblMyCompany$EID"
  add_index "tblMyCompany", ["ID"], name: "tblMyCompany$ID"

  create_table "tblPrefix", id: false, force: :cascade do |t|
    t.string "Prefix",      limit: 6
    t.string "Full Prefix", limit: 15
  end

  create_table "tblRefrigerant", primary_key: "RID", force: :cascade do |t|
    t.string  "RDate",     limit: 4000
    t.integer "EID",       limit: 4,    default: 0
    t.string  "RName",     limit: 50
    t.integer "JID",       limit: 4,    default: 0
    t.string  "RAddress",  limit: 50
    t.integer "RrLbs",     limit: 2,    default: 0
    t.integer "RrOzs",     limit: 2,    default: 0
    t.string  "RReclaim",  limit: 10
    t.integer "RuLbs",     limit: 2,    default: 0
    t.integer "RuOzs",     limit: 2,    default: 0
    t.string  "RUsed",     limit: 10
    t.integer "RtID",      limit: 4,    default: 1
    t.string  "RComments", limit: 50
  end

  add_index "tblRefrigerant", ["EID"], name: "tblRefrigerant$EID"
  add_index "tblRefrigerant", ["JID"], name: "tblRefrigerant$JID"
  add_index "tblRefrigerant", ["RID"], name: "tblRefrigerant$RID"
  add_index "tblRefrigerant", ["RtID"], name: "tblRefrigerant$RtID"
  add_index "tblRefrigerant", ["RtID"], name: "tblRefrigerant$tblxRefrigerantTypetblRefrigerant"

  create_table "tblRefrigerantold", primary_key: "RID", force: :cascade do |t|
    t.string  "RDate",     limit: 4000
    t.integer "EID",       limit: 4,    default: 0
    t.string  "RName",     limit: 50
    t.integer "JID",       limit: 4,    default: 0
    t.string  "RAddress",  limit: 50
    t.string  "RReclaim",  limit: 10
    t.string  "RUsed",     limit: 10
    t.string  "RComments", limit: 50
  end

  add_index "tblRefrigerantold", ["EID"], name: "tblRefrigerantold$EID"
  add_index "tblRefrigerantold", ["JID"], name: "tblRefrigerantold$JID"
  add_index "tblRefrigerantold", ["RID"], name: "tblRefrigerantold$RID"

  create_table "tblSpouse", primary_key: "ID", force: :cascade do |t|
    t.integer      "SpID",           limit: 4,    default: 0,     null: false
    t.boolean      "Mrd",                         default: false
    t.string       "DOM",            limit: 4000
    t.ss_timestamp "SSMA_TimeStamp",                              null: false
  end

  create_table "tblSqFtg Range", id: false, force: :cascade do |t|
    t.integer "LowFtg",  limit: 4, default: 0
    t.integer "HighFtg", limit: 4, default: 0
  end

  create_table "tblState", primary_key: "State", force: :cascade do |t|
    t.string "ST",      limit: 2
    t.string "Country", limit: 20
    t.string "CnC",     limit: 4
  end

  create_table "tblStyle", id: false, force: :cascade do |t|
    t.string "SID",   limit: 1
    t.string "Style", limit: 13
  end

  create_table "tblSuffix", id: false, force: :cascade do |t|
    t.string "Suffix",      limit: 6
    t.string "Full Suffix", limit: 15
  end

  create_table "tblUnit", primary_key: "UnitID", force: :cascade do |t|
    t.string "Unit Description", limit: 16
  end

  add_index "tblUnit", ["UnitID"], name: "tblUnit$UnitID"

  create_table "tblUnitold", primary_key: "UnitID", force: :cascade do |t|
    t.string "Unit Description", limit: 16
  end

  add_index "tblUnitold", ["UnitID"], name: "tblUnitold$UnitID"

  create_table "tblxBus", primary_key: "BuCID", force: :cascade do |t|
    t.string "BusDesc", limit: 15
  end

  create_table "tblxCoAddr", primary_key: "AdCID", force: :cascade do |t|
    t.string "AddDesc", limit: 15
  end

  create_table "tblxIndAddr", primary_key: "AdID", force: :cascade do |t|
    t.string "AddDesc", limit: 15
  end

  create_table "tblxMail", primary_key: "MaID", force: :cascade do |t|
    t.string "MailDesc", limit: 15
  end

  create_table "tblxPaymentType", primary_key: "PtID", force: :cascade do |t|
    t.string "PtDesc", limit: 10
  end

  add_index "tblxPaymentType", ["PtID"], name: "tblxPaymentType$PdID"

  create_table "tblxPhone", id: false, force: :cascade do |t|
    t.integer "Ph",     limit: 2,  default: 0
    t.string  "PhDesc", limit: 15
  end

  create_table "tblxPrefix", primary_key: "PrID", force: :cascade do |t|
    t.string "Prefix",      limit: 6
    t.string "Full Prefix", limit: 15
  end

  create_table "tblxRefrigerantType", primary_key: "RtID", force: :cascade do |t|
    t.string "RtDesc", limit: 5
  end

  add_index "tblxRefrigerantType", ["RtID"], name: "tblxRefrigerantType$RID"

  create_table "tblxSalesTax", id: false, force: :cascade do |t|
    t.string       "TxCity",         limit: 20
    t.integer      "TxCityCd",       limit: 4,  default: 0
    t.real         "TxCityRt",                  default: 0.009999999776482582
    t.real         "TxStateRt",                 default: 0.054999999701976776
    t.real         "TxStatutory",               default: 0.0
    t.ss_timestamp "SSMA_TimeStamp",                                           null: false
  end

  add_index "tblxSalesTax", ["TxCity"], name: "tblxSalesTax$TxCity", unique: true

  create_table "tblxSalesTaxCategory", primary_key: "TcID", force: :cascade do |t|
    t.string "TcDesc", limit: 20
  end

  add_index "tblxSalesTaxCategory", ["TcID"], name: "tblxSalesTaxCategory$TcID"

  create_table "tblxServiceContractType", primary_key: "ScID", force: :cascade do |t|
    t.string "ScDesc", limit: 30
  end

  add_index "tblxServiceContractType", ["ScID"], name: "tblxServiceContractType$RID"

  create_table "tblxState", primary_key: "ST", force: :cascade do |t|
    t.string "State",   limit: 20
    t.string "Country", limit: 20
    t.string "CnC",     limit: 4
  end

  create_table "tblxSuffix", primary_key: "TOSu", force: :cascade do |t|
    t.string "Suffix",      limit: 6
    t.string "Full Suffix", limit: 15
  end

  create_table "tblxTitle", id: false, force: :cascade do |t|
    t.integer "TiID",  limit: 2,  default: 0
    t.string  "Title", limit: 15
  end

  add_index "tblxTitle", ["TiID"], name: "tblxTitle$TiID"

  add_foreign_key "tblEntity", "tblCompany", column: "CID", primary_key: "CID", name: "tblEntity$tblCompanytblEntity", on_update: :cascade, on_delete: :cascade
  add_foreign_key "tblEntity", "tblIndividual", column: "ID", primary_key: "ID", name: "tblEntity$tblIndividualtblEntity", on_update: :cascade, on_delete: :cascade
  add_foreign_key "tblJob Materials", "tblJob", column: "JID", primary_key: "JID", name: "tblJob Materials$tblJobtblJob Materials", on_update: :cascade, on_delete: :cascade
  add_foreign_key "tblJob Unit", "tblJob", column: "JID", primary_key: "JID", name: "tblJob Unit$tblJobtblJob Unit", on_update: :cascade, on_delete: :cascade
  add_foreign_key "tblJob Work Order", "tblJob", column: "JID", primary_key: "JID", name: "tblJob Work Order$tblJobtblJob Work Order", on_update: :cascade, on_delete: :cascade
  add_foreign_key "tblJob Work Order Details", "tblJob Work Order", column: "JWO#", primary_key: "JWO#", name: "tblJob Work Order Details$tblJob Work OrdertblJob Work Order Details", on_update: :cascade, on_delete: :cascade
  add_foreign_key "tblRefrigerant", "tblxRefrigerantType", column: "RtID", primary_key: "RtID", name: "tblRefrigerant$tblxRefrigerantTypetblRefrigerant"
end

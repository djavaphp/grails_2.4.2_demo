package com.demo

class Photo {

  String subject      // who or what appears in the photo
  String photographer // who took the photo
  String location     // where was the photo taken
  Date   originalDate // when was the photo taken (eventually populate from Exif data in jpg files, when present)
  String user         // who uploaded the photo to the web application
  String comments     // comments about the photo
  Date dateCreated    // automagically maintained by Grails - when record was created
  Date lastUpdated    // automagically maintained by Grails - when record was last updated
  byte [] binaryData  // taken from CommonsMultipartFile instance (user does not enter value in gui)
  String fileType     // taken from CommonsMultipartFile instance (user does not enter value in gui)
  String fileName     // taken from CommonsMultipartFile instance (user does not enter value in gui)
  int fileSize        // taken from CommonsMultipartFile instance (user does not enter value in gui)
  int imageWidth      // taken from binaryData, if it is an image file (user does not enter value in gui)
  int imageHeight     // taken from binaryData, if it is an image file (user does not enter value in gui)
  boolean browserFriendly  // determined by fileType (which is a mime type string)

  static transients = {"browserFriendly"}

  static constraints = {
    subject nullable:true
    photographer nullable:true
    location nullable:true
    originalDate nullable:true
    user nullable:true
    comments nullable:true, maxSize:500
    dateCreated nullable:true
    lastUpdated nullable:true
    binaryData nullable:true, maxSize:5 * 1024 * 1024
    fileType nullable:true
    fileName nullable:true
    fileSize nullable:true
    imageWidth nullable:true
    imageHeight nullable:true
  }

  static mapping = {
    sort: "dateCreated"
    //  binaryData (sqlType:'TINYBLOB')    //  TINYBLOB: maximum length of             255 bytes
    //  binaryData (sqlType:'BLOB')        //  BLOB: maximum length of              65,535 bytes
    //  binaryData (sqlType:'MEDIUMBLOB')  //  MEDIUMBLOB: maximum length of    16,777,215 bytes
    //  binaryData (sqlType:'LONGBLOB')    //  LONGBLOB: maximum length of   4,294,967,295 bytes
  }

  String toString() {
    "${id}   ${subject}   ${photographer}   ${user}"
  }

  //  def beforeValidate() {}
  //  def beforeInsert() {}
  //  def beforeUpdate() {}
  //  def beforeDelete() {}
  //  def beforeLoad() {}  // synonym for onLoad
  //  def afterInsert() {}
  //  def afterUpdate() {}
  //  def afterDelete() {}
  //  def afterLoad() {}

  /**
   * This is only a start.  There are other image file formats that are
   * "browser friendly" for only certain browsers.
   * @return
   */
  def afterLoad() {
    if (this.fileType && ["image/png","image/gif","image/jpg","image/jpeg"].contains(this.fileType)) {
      this.browserFriendly = true
    } else {
      this.browserFriendly = false
    }
  }

}

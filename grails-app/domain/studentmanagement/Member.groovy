package studentmanagement

class Member {
    String stuff_name
    String position
    byte[] image;
    String imageContentType;

    static constraints = {
        image nullable: true, blank: true, maxSize: 1024 * 1024 * 50; //50MB
        imageContentType nullable: true, blank: true;
    }
}

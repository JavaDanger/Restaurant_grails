package studentmanagement

class Gallery {
    byte[] image;
    String imageContentType;
    String category

    static constraints = {
        image nullable: true, blank: true, maxSize: 1024 * 1024 * 50; //50MB
        imageContentType nullable: true, blank: true;
    }
}

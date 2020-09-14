package studentmanagement

class Items {
    String catagory
    String title
    String item_details
    String price
    byte[] image;
    String imageContentType;

    static constraints = {
        image nullable: true, blank: true, maxSize: 1024 * 1024 * 100; //100MB
        imageContentType nullable: true, blank: true;
    }
}

package studentmanagement

class Blogs {

    static hasMany = [comments: Comment , replys: Reply]
    String category
    String title
    String date
    String time
    String shortcut
    String details
    byte[] image;
    String imageContentType;

    static constraints = {
        image nullable: true, blank: true, maxSize: 1024 * 1024 * 100; //100MB
        imageContentType nullable: true, blank: true;
    }

    static mapping = {
        shortcut   sqlType: 'longText'
        details    sqlType: 'longText'
    }
}

class Comment{

    static hasMany = [replys: Reply]
    String username
    String email
    String time
    String post_comment
    static belongsTo = Blogs
    Blogs  blogsInComment
    static mapping = {
        post_comment   sqlType: 'longText'
    }
}

class Reply{
    String reply
    String time
    static belongsTo = [Blogs, Comment]
    Blogs  blogsInReply
    Comment commentInReply
    static mapping = {
        reply   sqlType: 'longText'
    }
}

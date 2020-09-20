package studentmanagement

class HomeController {
    def menuService
    def galleryService
    def developerService
    def ppost_id
    def commentService
    def index() {
        def gallery_images = Gallery.findAll()
        def fetchedValue = developerService.list()
        [fetchedValue:fetchedValue,gallery_images:gallery_images]
    }
    def menu(){
        def allMenu = menuService.list()
        def fetchedValue = developerService.list()
        [fetchedValue:fetchedValue,allMenu:allMenu]
    }
    def about(){}
    def blog(){
        def fetchedValue1 = Blogs.findAll()
        [fetchedValue1:fetchedValue1]
    }
    def blogdetails(){
        def fetched_value1 = Blogs.findAll([sort: "date", order: "desc"])


        ppost_id = params.post_id
        def postt_details = Blogs.findAllById(ppost_id)
        //def replyCmt = Reply.findAll()

        Blogs blogsObj = Blogs.get(postt_details.id)
        def post_comments = Comment.findAllByBlogsInComment(blogsObj)

        def blogs = Blogs.findAllById(ppost_id)
        Blogs blogsObj1 = Blogs.get(blogs.id)

        def all_reply = Reply.findAllByBlogsInReply(blogsObj1)

        [all_reply:all_reply,postt_details:postt_details, fetched_value1:fetched_value1,post_comments:post_comments,ppost_id:ppost_id]
    }
    def addComment(){
        def username = params.username
        def email = params.email
        def comment = params.comment
        def time = params.time

        def blogsFetch = Blogs.findAllById(ppost_id)
        Blogs blogsObj = Blogs.get(blogsFetch.id)

        Comment newCmt = new Comment(blogsInComment:blogsObj,username:username,email:email,time:time,post_comment:comment)
        if(commentService.save(newCmt)){
            render "comment saved successfully"
        }else{
            render "Error"
        }
    }
    def addReply(){
        def reply = params.reply
        def time = params.time
        def comtId = params.comtId

        def blogsFetch = Blogs.findAllById(ppost_id)
        Blogs blogsObj = Blogs.get(blogsFetch.id)

        def commentFetch = Comment.findAllById(comtId)
        Comment commentObj = Comment.get(commentFetch.id)

        Reply newReply = new Reply(blogsInReply:blogsObj,commentInReply:commentObj,reply:reply,time:time)
        if(newReply.save()){
            render "reply saved successfully"
        }else{
            render "Error"
        }
    }
    def contact(){}
    def gallery(){
        def fetchedValue = developerService.list()
        def gallery_images = galleryService.findAll()
        [fetchedValue:fetchedValue,gallery_images:gallery_images]
    }
    def reservation(){}
    def stuff(){
        def fetchedValue = developerService.list()
        def members = Member.findAll()
        [fetchedValue:fetchedValue,members:members]
    }

    def send() {

        String name = params.name
        String email = params.email
        String phone = params.phone
        String noOfPerson = params.noOfPerson
        String resDate = params.resDate
        String resTime = params.resTime
        String txt = """You have a reservation.

    Name: ${name}
    E-mail: ${email}
    Phone: ${phone}
    No. of Person: ${noOfPerson}
    Date: ${resDate}
    Time: ${resTime}

    Thanks for your reservation."""

        sendMail {
            to email
            subject "Restaurant Reservation Order"
            text txt

        }

        render "Reservation Completed."
    }
    def admin(){
        respond new Developer(params)
    }



}

package studentmanagement

class HomeController {

    def index() { }
    def menu(){}
    def about(){}
    def blog(){}
    def blogdetails(){}
    def contact(){}
    def gallery(){
//        def fetched_value = WebPage.list()
        def gallery_images = Gallery.findAll()
        [gallery_images:gallery_images]
    }
    def reservation(){}
    def stuff(){
//        def fetched_value = WebPage.list()
        def members = Member.findAll()
        [members:members]
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
        respond new PageDevlp(params)
    }
    def save(PageDevlp) {
        webPage.save();
        redirect action:"admin", method:"GET"
    }
    def stuffAjax(){
        def imageMap = [:];
        byte[] photo = request.getFile("photos").bytes
        String type  = request.getFile("photos").contentType
        String stuff_name = params.stuff_name;
        String position = params.stuff_position;
        if (photo == null ) {
            imageMap.put("stuff_name", null);
            imageMap.put("position", null);
            imageMap.put("image", null);
            imageMap.put("imageContentType", null);
        } else {
            imageMap.put("stuff_name", stuff_name);
            imageMap.put("position", position);
            imageMap.put("image", photo);
            imageMap.put("imageContentType", type);
        }

        Member newStuff = new Member(imageMap);
        if(newStuff.save()){
            redirect action:"admin"
        }else{
            render "Error..!!"
        }
    }

    def getImage(Long id) {
        def user = Member.get(id);
        if (user != null) {
            response.contentType = user.imageContentType == null ? "image/jpeg" : user.imageContentType;
            response.contentLength = user.image == null ? 0 : user.image.size();
            response.outputStream << user.image;
        } else {
            response.contentType = "image/jpeg";
            response.contentLength = 0;
            response.outputStream << null;
        }
    }

}

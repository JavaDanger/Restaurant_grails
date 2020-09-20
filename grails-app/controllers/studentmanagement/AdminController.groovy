package studentmanagement

class AdminController {
    def menuService
    def galleryService
    def stuffService
    def developerService
    def blogService
    def index() { }
    def createGallery () {
        def imageMap = [:];
        byte[] photo=request.getFile("photos").bytes
        String type = request.getFile("photos").contentType
        String category = params.category;
        if (photo == null ) {
            imageMap.put("image", null);
            imageMap.put("imageContentType", null);
            imageMap.put("category", null);
        } else {
            imageMap.put("image", photo);
            imageMap.put("imageContentType", type);
            imageMap.put("category", category);
        }

        Gallery newImage = new Gallery(imageMap);
        if(galleryService.save(newImage)){
            redirect(controller: "home", action: "admin")
        }else{
            render "Something going wrong..!!"
        }
    }
    def getImageGallery(Long id) {
        def u = galleryService.get(id);
        if (u != null) {
            response.contentType = u.imageContentType == null ? "image/jpeg" : u.imageContentType;
            response.contentLength = u.image == null ? 0 : u.image.size();
            response.outputStream << u.image;
        } else {
            response.contentType = "image/jpeg";
            response.contentLength = 0;
            response.outputStream << null;
        }
    }
    def addMenu(){
        def imageMap = [:];
        byte[] menuImage=request.getFile("photos").bytes
        String menuImageContentType = request.getFile("photos").contentType
        String catagory = params.menuCtg;
        String title = params.menuTitle;
        String item_details = params.menuDetails;
        String price = params.menuPrice;
        if (menuImage == null ) {
            imageMap.put("catagory", null);
            imageMap.put("title", null);
            imageMap.put("item_details", null);
            imageMap.put("price", null);
            imageMap.put("image", null);
            imageMap.put("imageContentType", null);
        } else {
            imageMap.put("catagory", catagory);
            imageMap.put("title", title);
            imageMap.put("item_details", item_details);
            imageMap.put("price", price);
            imageMap.put("image", menuImage);
            imageMap.put("imageContentType", menuImageContentType);
        }

        Items newImage = new Items(imageMap);
        if(menuService.save(newImage)){
            redirect(controller: "home", action: "admin")
        }else{
            render "Something going wrong..!!"
        }
    }

    def getMenu(Long id) {
        def user = menuService.get(id);
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

    def addStuff(){
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
        if(stuffService.save(newStuff)){
            redirect action:"admin"
        }else{
            render "Error..!!"
        }
    }

    def getImage(Long id) {
        def user = stuffService.get(id);
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

    def save() {
        def devMap = [:]
        String name = params.dev_name;
        String position  = params.dev_position;
        String details = params.dev_details;

        if (name == null ) {
            devMap.put("name", null);
            devMap.put("position", null);
            devMap.put("details", null);

        } else {
            devMap.put("name", name);
            devMap.put("position", position);
            devMap.put("details", details);

        }

        Developer newdev = new Developer(devMap);
        if(developerService.save(newdev)){
            redirect(controller: "home", action: "admin")
        }else{
            render "Something going wrong..!!"
        }
    }

    def addBlog(){
        def imageMap = [:];
        byte[] image=request.getFile("photos").bytes
        String imageContentType = request.getFile("photos").contentType
        String title = params.title;
        String category = params.category;
        String datePart  = new Date();
        String timePart = "01:53 PM"
        String shortcut = params.shortcut;
        String details = params.details;
        if (image == null ) {
            imageMap.put("title", null);
            imageMap.put("category", null);
            imageMap.put("date", null);
            imageMap.put("time", null);
            imageMap.put("shortcut", null);
            imageMap.put("details", null);
            imageMap.put("image", null);
            imageMap.put("imageContentType", null);
        } else {
            imageMap.put("title", title);
            imageMap.put("category", category);
            imageMap.put("date", datePart);
            imageMap.put("time", timePart);
            imageMap.put("shortcut", shortcut);
            imageMap.put("details", details);
            imageMap.put("image", image);
            imageMap.put("imageContentType", imageContentType);
        }

        Blogs newImage = new Blogs(imageMap);
        if(blogService.save(newImage)){
            redirect(controller: "home", action: "admin")
        }else{
            render "Error..!!"
        }
    }


    def getBlog(Long id) {
        def user = blogService.get(id);
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

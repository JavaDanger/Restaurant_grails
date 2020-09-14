package studentmanagement

class AdminController {

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
        if(newImage.save()){
            redirect(controller: "home", action: "admin")
        }else{
            render "Error..!!"
        }
    }
    def getImageGallery(Long id) {
        def user = Gallery.get(id);
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

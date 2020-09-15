package studentmanagement

class HomeController {
    def menuService
    def galleryService
    def developerService

    def index() {
        def fetchedValue = developerService.list()
        [fetchedValue:fetchedValue]
    }
    def menu(){
        def allMenu = menuService.list()
        def fetchedValue = developerService.list()
        [fetchedValue:fetchedValue,allMenu:allMenu]
    }
    def about(){}
    def blog(){}
    def blogdetails(){}
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

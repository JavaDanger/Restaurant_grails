package studentmanagement

import grails.gorm.transactions.Transactional

@Transactional
class BlogService {

    def get(id){
        Blogs.get(id)
    }

    def list() {
        Blogs.list()
    }

    def findAll(){
        Blogs.findAll()
    }
    def save(Blogs){
        Blogs.save()
    }

    def delete(id){
        Blogs.get(id).delete()
    }
}

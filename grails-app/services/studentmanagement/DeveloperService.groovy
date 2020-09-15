package studentmanagement

import grails.gorm.transactions.Transactional

@Transactional
class DeveloperService {

    def get(id){
        Developer.get(id)
    }

    def list() {
        Developer.list()
    }

    def findAll(){
        Developer.findAll()
    }
    def save(Developer){
        Developer.save()
    }

    def delete(id){
        Developer.get(id).delete()
    }
}

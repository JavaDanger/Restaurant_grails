package studentmanagement

import grails.gorm.transactions.Transactional

@Transactional
class StuffService {

    def get(id){
        Member.get(id)
    }

    def list() {
        Member.list()
    }

    def save(Member){
        Member.save()
    }

    def delete(id){
        Member.get(id).delete()
    }
}

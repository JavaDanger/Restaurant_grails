package studentmanagement

import grails.gorm.transactions.Transactional

@Transactional
class MenuService {

    def get(id){
        Items.get(id)
    }

    def list() {
        Items.list()
    }

    def save(Items){
        Items.save()
    }

    def delete(id){
        Items.get(id).delete()
    }
}

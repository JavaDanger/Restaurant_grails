package studentmanagement

import grails.gorm.transactions.Transactional

@Transactional
class GalleryService {

    def get(id){
        Gallery.get(id)
    }

    def list() {
        Gallery.list()
    }

    def findAll(){
        Gallery.findAll()
    }
    def save(Gallery){
        Gallery.save()
    }

    def delete(id){
        Gallery.get(id).delete()
    }
}

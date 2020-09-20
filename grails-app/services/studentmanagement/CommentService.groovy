package studentmanagement

import grails.gorm.transactions.Transactional

@Transactional
class CommentService {

    def get(id){
        Comment.get(id)
    }

    def list() {
        Comment.list()
    }

    def findAll(){
        Comment.findAll()
    }
    def save(Comment){
        Comment.save()
    }

    def delete(id){
        Comment.get(id).delete()
    }
}

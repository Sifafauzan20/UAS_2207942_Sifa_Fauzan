import axios from 'axios';

const REPORT_API_BASE_URL = "http://localhost:9080/reports";

class UserService {

    getUsers(){
        return axios.get(REPORT_API_BASE_URL);
    }

    createUser(user){
        return axios.post(REPORT_API_BASE_URL, user);
    }

    getUserById(userId){
        return axios.get(REPORT_API_BASE_URL + '/' + userId);
    }

    updateUser(user, userId){
        return axios.put(REPORT_API_BASE_URL + '/' + userId, user);
    }

    deleteUser(userId){
        return axios.delete(REPORT_API_BASE_URL + '/' + userId);
    }

}

export default new UserService()
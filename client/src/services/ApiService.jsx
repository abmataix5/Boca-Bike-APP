import axios from 'axios'

export default () => {
  
  const axiosInstance = axios.create({
    baseURL: "http://0.0.0.0:8005/api/"
  })

/* Enviamos token */

  const token = localStorage.getItem('id_token')
  if (token ) {
    
    axiosInstance.defaults.headers.common['Authorization'] = `token ${token}`

  } 

 
  axiosInstance.interceptors.response.use(
    (response) => response,
    (error) => {
      console.log(error)
      if (error.response.status === 401) {
     
        window.alert("NO TIENES PERMISOS")
      }
      return Promise.reject(error) 
    }
  )

  return axiosInstance
}
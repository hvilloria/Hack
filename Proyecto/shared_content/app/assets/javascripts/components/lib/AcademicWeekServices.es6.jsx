const searchweeks = () => {
  return new Promise((resolve, reject) => {
    fetch('/students/academic_weeks')
    .then((value) => {return value.json()})
    .then((data) => {resolve(data);})
    .catch((err) => {reject(err)})
  })
}

const searchWeeksnotes = (id) => {
  return new Promise((resolve, reject) => {
    fetch('/students/academic_weeks')
    .then((value) => {return value.json()})
    .then((data) => {resolve(data)})
    .catch((err) => {reject(err)})
  })
}

const searchDaylist = (id) => {
  return new Promise((resolve,reject) => {
    fetch('/students/academic_weeks/'+id+'/academic_days')
    .then((value) => {return value.json()})
    .then((data) => {resolve(data)})
    .catch((err) => {reject(err)})
  })
}

// let params = new URLSearchParams();
// params.append('token', unknownUserToken)
// fetch('/unknown_users/find?'+params, { method: "GET" })
// 	.then((value) => {return value.json();})
// 	.then((value) => {console.log(value.token);})
// 	.catch((err)  => {console.warn(err);}

const express = require("express");


const app = express();



app.use(express.json());



app.use(express.urlencoded({ extended: true }));





const userdata = [];





app.listen(2000, () => {

    console.log("connected to server at 2000")



})



// **********************postapi **************



app.post("/api/add_infouser", (req, res) => {

    console.log("result ", req.body);


    const uData = {
        "id": userdata.length + 1,
        "email": req.body.email,
        "pass": req.body.pass
    }

    userdata.push(uData);

    console.log("Final", uData);



    res.status(200).send({
        "statuscode": 200,
        "message": "account successfully created",
        "userdata": uData
    });
});




app.get("/api/get_infouser", (req, res) => {


    if (userdata.length > 0) {
        res.status(200).send({
            "statuscode": 200,
            "userdata": userdata
        });
    } else {

        res.status(200).send({
            "statuscode": 200,
            "userdata": []
        });
    }

});
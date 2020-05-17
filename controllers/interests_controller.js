// Import Express
const express = require("express");
const router = express.Router();
const event = require("../models/interest")

router.get("/interests", function (req, res) {
    event.all(result => {
        res.render("interests/interests", { interests: result })
    })
})

router.get("/interests/new", function (req, res) {
    res.render("interests/newInterest");
})

router.get("/interests/:id", function (req, res) {
    event.getWithUsersAndEvents(req.params.id, (result, users, events) => {
        console.log(JSON.stringify(result))
        console.log(events)
        res.render("interests/interestsDetail", { interest: result[0], users, events })
    })
})

router.post("/interests", function (req, res) {
    event.create(req.body.interest, req.body.interest_desc, function (resp) {
        res.redirect("/interests")
    })
})

// export the router at the END  of your file.
module.exports = router;

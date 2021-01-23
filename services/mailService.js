const nodemailer = require("nodemailer");
module.exports = async ({ from, to, subject, text, html}) => {
        let transporter = nodemailer.createTransport({
            host: process.env.SMTP_HOST,
            port: process.env.SMTP_PORT,
            secure: false, // true for 465, false for other ports
            auth: {
                user: process.env.MAIL_USER, // generated ethereal user
                pass: process.env.MAIL_PASSWORD, // generated ethereal password
            }
        });

        // send mail with defined transport object
    let info = await transporter.sendMail({
        from: `vShare <${from}>`, // sender address
        to,
        subject,
        text ,
        html
    });

    console.log(info);
}
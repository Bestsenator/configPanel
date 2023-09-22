#!/usr/bin/expect

# اجرای دستور نصب certbot با استفاده از apt-get
spawn apt-get install certbot -y

# تعامل با پنجره‌های احتمالی که ممکن است باشند
expect {
    "Do you want to continue? [Y/n]" {
        send "Y\r"
        exp_continue
    }
    "Press <Enter> to continue or Ctrl+C to cancel" {
        send "\r"
        exp_continue
    }
}

# خروج از ابزار Expect
expect eof

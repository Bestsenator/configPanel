#!/bin/bash

# اجرای دستور مورد نظر (مثال: دستوری که صفحه را صورتی می‌کند)
apt-get install certbot -y

# فراخوانی ابزار Expect برای تعامل با برنامه‌های خارجی
expect << EOF
spawn your_command_here

# انتظار برای دیدن صفحه صورتی (این قسمت باید با توجه به برنامه‌ی شما تنظیم شود)
expect "PinkPage"

# ارسال دکمه "ok"
send "ok\r"

# خروج از ابزار Expect
expect eof
EOF

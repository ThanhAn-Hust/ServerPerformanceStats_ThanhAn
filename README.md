# ServerPerformanceStats_ThanhAn
https://roadmap.sh/projects/server-stats

Đây là một tập lệnh Bash (Bash script) đơn giản dùng để phân tích và thống kê hiệu suất cơ bản của máy chủ Linux. Dự án này giúp quản trị viên hệ thống nhanh chóng nắm bắt trạng thái tài nguyên của server.

## Tính năng

Script này sẽ hiển thị các thông số sau:

- **Hệ điều hành:** Hiển thị phiên bản OS, Uptime và Load Average.
- **CPU:** Tổng lượng CPU đang sử dụng.
- **Memory:** Tổng lượng RAM (Total, Used, Free) và phần trăm sử dụng.
- **Disk:** Dung lượng ổ đĩa (Total, Used, Free) và phần trăm sử dụng.
- **Top 5 Processes:** - 5 tiến trình tiêu tốn CPU nhất.
  - 5 tiến trình tiêu tốn RAM nhất.

## Yêu cầu hệ thống

- Hệ điều hành: Linux (Ubuntu, CentOS, Debian, v.v.)
- Shell: Bash
- Các lệnh cơ bản: `top`, `free`, `df`, `ps`, `awk`, `grep` (thường có sẵn trên mọi máy Linux).

## 🛠️ Cách cài đặt và sử dụng

Bạn có thể chạy script này bằng cách làm theo các bước sau:

1. **Clone dự án về máy:**
   ```bash
   git clone [https://github.com/username-cua-ban/server-stats.git](https://github.com/username-cua-ban/server-stats.git)
   cd server-stats

import time
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler
import os

class MyHandler(FileSystemEventHandler):
    def __init__(self):
        self._last_run = 0

    def on_modified(self, event):
        # 获取当前时间
        now = time.time()
        # 检查距离上次执行命令是否已经过了足够的时间（例如，5秒）
        if now - self._last_run > 2:
            print(f'Event type: {event.event_type}  Path: {event.src_path}')
            os.system('cmd /c make.bat html')
            self._last_run = now

if __name__ == "__main__":
    path = './source'  # 监听当前目录，可以修改为你的Sphinx文档目录
    event_handler = MyHandler()
    observer = Observer()
    observer.schedule(event_handler, path, recursive=True)
    observer.start()

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()
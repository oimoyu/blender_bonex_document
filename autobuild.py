import time
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler
import os


class MyHandler(FileSystemEventHandler):
    def __init__(self):
        self._last_run = 0

    def on_modified(self, event):
        now = time.time()
        if now - self._last_run > 2:
            print(f"Event type: {event.event_type}  Path: {event.src_path}")
            os.system("cmd /c make.bat html")
            self._last_run = now


if __name__ == "__main__":
    path = "./source"
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

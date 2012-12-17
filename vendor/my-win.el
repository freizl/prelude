
;;; Special thing when working with windows 


(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "C:\\Users\\haiswu\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe")
      ;; browse-url-generic-program "C:\\Program Files\\Mozilla Firefox\\firefox.exe")
      ;; c:\\workspace\\opt\\xulrunner\\xulrunner.exe"
      ;; browse-url-generic-args '("C:\\workspace\\opt\\conkeror\\application.ini"))

(global-set-key (kbd "C-c SPC") 'set-mark-command)
(global-set-key (kbd "C-,") 'set-mark-command)

;;; js-comint
(setq inferior-js-program-command "java -jar C:/Users/haiswu/Downloads/rhino1_7R4/js.jar")

(shell)

(provide 'my-win)


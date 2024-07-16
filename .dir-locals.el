;;; Directory Local Variables            -*- no-byte-compile: t -*-
;;; For more information see (info "(emacs) Directory Variables")

((c++-mode . ((compile-command . (concat "clang++ -g "
					 (file-name-only)
					 " -o "
					 (file-name-only-noext)))
	      (flycheck-clang-language-standard . "c++11")))
 (c-mode . ((compile-command . (concat "clang -g"
			     (file-name-only)
			     " -o"
			     (file-name-only-noext)))
	    (flycheck-clang-language-standard . "c11"))))

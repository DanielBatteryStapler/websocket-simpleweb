(use-modules
	(guix packages)
	(guix gexp)
	((guix licenses) #:prefix license:)
	(guix build-system cmake)
	(guix git-download)
	(gnu packages autotools)
	(gnu packages build-tools)
	(gnu packages cmake)
	(gnu packages pkg-config)
	(gnu packages tls)
	(gnu packages boost))

(package
	(name "simple-websocket-server")
	(version "2.0.2")
	(inputs
		`(("boost" ,boost)
		("openssl" ,openssl)))
	(native-inputs 
		`(("cmake" ,cmake)
		("pkg-config" ,pkg-config)))
	(propagated-inputs '())
	(source (origin
		(method git-fetch)
		(uri
			(git-reference
				(url "https://gitlab.com/eidheim/Simple-Websocket-Server.git")
				(commit (string-append "v" version))))
		(sha256
			(base32
				"03gc8cg6q2nzl1sl1755srmh7j8h1zph6zfzjxmk4qp99xjmnnh4"))))
	(build-system cmake-build-system)
	(synopsis "Simple-Websocket-Server: A very simple, fast, multithreaded, platform independent HTTP and HTTPS server and client library implemented using C++11")
	(description
		"Simple-Websocket-Server is a very simple, fast, multithreaded, platform independent HTTP and HTTPS server and client library implemented using C++11")
	(home-page "https://gitlab.com/eidheim/Simple-Web-Server")
	(license license:expat))


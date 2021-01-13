publish:
	hugo -D
	aws s3 sync public/ s3://chezky.com --acl public-read --delete

start:
	hugo server -D
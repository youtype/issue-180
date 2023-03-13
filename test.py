from boto3.session import Session
from mypy_boto3_s3.client import S3Client

def main():
    session = Session()
    s3_client: S3Client = session.client('s3')
    
if __name__ == "__main__":
    main()

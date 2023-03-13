from aioboto3 import Session
from types_aiobotocore_s3.client import S3Client

class MyClass:
    def create_s3_client(self) -> S3Client:
            return Session().client(
                service_name='s3',
                endpoint_url='some url',
                aws_access_key_id='***',
                aws_secret_access_key='***'
            )

def main():
    MyClass().create_s3_client()
    
if __name__ == '__main__':
    main()
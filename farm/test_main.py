from main import app

def test_index_route():
    client = app.test_client()
    response = client.get('/')
    assert response.status_code == 200
    
    # Assert that the rendered template contains the expected text
    assert b"My Assignment CD" in response.data
    assert b"If everything went well" in response.data
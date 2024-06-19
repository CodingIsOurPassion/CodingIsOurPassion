#[tokio::test]
async fn index_returns_200_ok() {
    let app = crate::helpers::TestApp::spawn().await;
    let client = reqwest::Client::new();
    println!("{}", app.url("/v1/status"));
    let response = client
        .get(app.url("/v1/status"))
        .send()
        .await
        .expect("Failed to execute request");
    assert!(response.status().is_success());
}

#![deny(clippy::all)]
#![warn(clippy::pedantic)]
use lakewatch::{
    startup::Application,
    telemetry::{get_subscriber, init_subscriber},
};
#[tokio::main]
async fn main() {
    let subscriber = get_subscriber("lakewatch".into(), "info".into(), std::io::stdout);
    init_subscriber(subscriber);
    let address = "127.0.0.1:80";
    tracing::info!("Binding to {}", address);
    let listener = tokio::net::TcpListener::bind("127.0.0.1:8080")
        .await
        .expect("Failed to bind!");
    Application::new()
        .run(listener, true)
        .await
        .expect("Failed to run application!");
}

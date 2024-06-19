#[utoipa::path(
    get,
    path = "/v1/status",
    responses(
        (status = 200, description = "Returns the API status", body = String)
    )
)]
pub async fn status() -> &'static str {
    "API Online"
}

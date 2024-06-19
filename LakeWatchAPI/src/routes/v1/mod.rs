use axum::{routing::get, Router};
use utoipa::OpenApi;
use utoipauto::utoipauto;

pub mod status;

#[utoipauto]
#[derive(OpenApi)]
#[openapi(tags( (name = "LakeWatchAPI V1 Routes", description = "V1 Routes")))]
pub struct ApiDoc;

pub fn router() -> Router {
    return Router::new().route("/status", get(crate::routes::v1::status::status));
}

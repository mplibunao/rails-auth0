Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'EnEqiUxdgnlfFzYwmRQkwf4S3kwysoPb',
    'Yl_egdx8-DxAinRm0EvQM_sh3rd0JJUkS2TTE3XGkTNHBO2OCiIpIzDjaChG94PF',
    'mplibunao.auth0.com',
    callback_path: "/auth/oauth2/callback",
    authorize_params: {
      scope: 'openid profile',
      audience: 'https://mplibunao.auth0.com/userinfo'
    }
  )
end

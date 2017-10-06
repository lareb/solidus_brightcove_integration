Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name: 'admin_video_player_preview',
  insert_before: "[data-hook='admin_product_form_description']",
  partial: 'spree/admin/products/player'
)

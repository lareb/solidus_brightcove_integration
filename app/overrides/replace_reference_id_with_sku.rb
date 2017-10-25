Deface::Override.new(
  virtual_path: 'spree/admin/products/new',
  name: 'admin_video_reference_id',
  replace: "[data-hook='new_product_sku']",
  text: '
    <div data-hook="new_product_reference_id" class="col-3">
          <%= f.field_container :reference_id do %>
            <%= f.label :reference_id, Spree.t(:reference_id) %><br />
            <%= f.text_field :reference_id, size: 16, class: "fullwidth" %>
            <%= f.error_message_on :reference_id %>
          <% end %>
        </div>
  '
)

Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name: 'admin_video_reference_id',
  insert_after: "[data-hook='admin_product_form_slug']",
  text: '
      <div data-hook="new_product_reference_id" class="col-3">
          <%= f.field_container :reference_id do %>
            <%= f.label :reference_id, Spree.t(:reference_id) %><br />
            <%= f.text_field :reference_id, size: 16, class: "fullwidth" %>
            <%= f.error_message_on :reference_id %>
          <% end %>
        </div>
  '
)

# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe('/permissions', type: :request) do
    # Permission. As you add validations to Permission, be sure to
    # adjust the attributes here as well.
    let(:valid_attributes) do
        skip('Add a hash of attributes valid for your model')
    end

    let(:invalid_attributes) do
        skip('Add a hash of attributes invalid for your model')
    end

    describe 'GET /index' do
        it 'renders a successful response' do
            Permission.create!(valid_attributes)
            get permissions_url
            expect(response).to(be_successful)
        end
    end

    describe 'GET /show' do
        it 'renders a successful response' do
            permission = Permission.create!(valid_attributes)
            get permission_url(permission)
            expect(response).to(be_successful)
        end
    end

    describe 'GET /new' do
        it 'renders a successful response' do
            get new_permission_url
            expect(response).to(be_successful)
        end
    end

    describe 'GET /edit' do
        it 'render a successful response' do
            permission = Permission.create!(valid_attributes)
            get edit_permission_url(permission)
            expect(response).to(be_successful)
        end
    end

    describe 'POST /create' do
        context 'with valid parameters' do
            it 'creates a new Permission' do
                expect do
                    post(permissions_url, params: { permission: valid_attributes })
                end.to(change(Permission, :count).by(1))
            end

            it 'redirects to the created permission' do
                post permissions_url, params: { permission: valid_attributes }
                expect(response).to(redirect_to(permission_url(Permission.last)))
            end
        end

        context 'with invalid parameters' do
            it 'does not create a new Permission' do
                expect do
                    post(permissions_url, params: { permission: invalid_attributes })
                end.to(change(Permission, :count).by(0))
            end

            it "renders a successful response (i.e. to display the 'new' template)" do
                post permissions_url, params: { permission: invalid_attributes }
                expect(response).to(be_successful)
            end
        end
    end

    describe 'PATCH /update' do
        context 'with valid parameters' do
            let(:new_attributes) do
                skip('Add a hash of attributes valid for your model')
            end

            it 'updates the requested permission' do
                permission = Permission.create!(valid_attributes)
                patch permission_url(permission), params: { permission: new_attributes }
                permission.reload
                skip('Add assertions for updated state')
            end

            it 'redirects to the permission' do
                permission = Permission.create!(valid_attributes)
                patch permission_url(permission), params: { permission: new_attributes }
                permission.reload
                expect(response).to(redirect_to(permission_url(permission)))
            end
        end

        context 'with invalid parameters' do
            it "renders a successful response (i.e. to display the 'edit' template)" do
                permission = Permission.create!(valid_attributes)
                patch permission_url(permission), params: { permission: invalid_attributes }
                expect(response).to(be_successful)
            end
        end
    end

    describe 'DELETE /destroy' do
        it 'destroys the requested permission' do
            permission = Permission.create!(valid_attributes)
            expect do
                delete(permission_url(permission))
            end.to(change(Permission, :count).by(-1))
        end

        it 'redirects to the permissions list' do
            permission = Permission.create!(valid_attributes)
            delete permission_url(permission)
            expect(response).to(redirect_to(permissions_url))
        end
    end
end

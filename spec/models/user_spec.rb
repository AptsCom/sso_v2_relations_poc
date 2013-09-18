require 'spec_helper'

# Normally it's really really bad form to hit the database for specs, but
# with the complex relations depending on IDs being present it was necessary
# for this proof of concept.

describe User do

  let(:user) { User.create }
  let(:app_1) { App.create(:description => 'BBEdit') }
  let(:app_2) { App.create(:description => 'Sublime')}

  describe "relations" do

    describe "apps" do

      it 'has many' do
        Role.create(:app => app_1, :user => user, :description => 'beginner')
        Role.create(:app => app_2, :user => user, :description => 'tyro')
        expect(user.apps.first).to eql app_1
        expect(user.apps.last).to eql app_2
      end

    end

    describe "roles" do

      context "per application" do

        it 'for app one' do
          user.roles << Role.new(:app => app_1, :description => 'admin')
          expect(user.roles.first.app).to eq app_1
          expect(user.roles.first.description).to eq 'admin'
        end

        it 'for app two' do
          user.roles << Role.new(:app => app_2, :description => 'power user')
          expect(user.roles.last.app).to eq app_2
          expect(user.roles.last.description).to eq 'power user'
        end

      end

    end

  end

end
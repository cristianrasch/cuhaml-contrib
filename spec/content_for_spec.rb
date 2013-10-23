require File.expand_path("spec_helper", File.dirname(__FILE__))
require "cuba"
require "cuba/render"
require "cuhaml/contrib/content_for"
require "haml"

module Cuhaml::Contrib
  describe ContentFor do
    before do
      Cuba.plugin Cuba::Render
      Cuba.plugin Cuhaml::Contrib::ContentFor

      Cuba.settings[:render][:views] = "./spec/views"
      Cuba.settings[:render][:template_engine] = "haml"

      Cuba.define do
        on root do
          res.write view("index")
        end
      end
    end

    let(:body) do
      _, _, body = Cuba.call({ "PATH_INFO" => "/", "SCRIPT_NAME" => "/" })
      body.first
    end

    it "yields the given block" do
      body.must_match /alpha\s+beta\s+gamma\s+/
    end

    it "sets the default template engine" do
      Cuba.settings[:render][:template_engine].must_equal "haml"
    end

    it "outputs content conditionally" do
      body.wont_include "omega"
    end
  end
end

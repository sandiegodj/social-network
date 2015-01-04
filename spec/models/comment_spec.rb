require 'rails_helper'

RSpec.describe Comment, :type => :model do
  before { @comment = Comment.new(content: "This is a test",
                                  post_id: 1,
                                  author_id: 1)}
  
  subject { @comment }
  
  it { should respond_to(:content) }
  it { should respond_to(:author) }
  it { should respond_to(:post) }
  
  it { should be_valid }
  
  describe "when content is not present" do
    before { @comment.content = nil }
    it { should_not be_valid}
  end
  
end
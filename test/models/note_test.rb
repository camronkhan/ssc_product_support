require 'test_helper'

class NoteTest < ActiveSupport::TestCase

	def setup
		@new_note = Note.create(
			info: 'NewString'
		)
	end

	test "valid note must be saved" do
		assert @new_note.valid?
		assert @new_note.save
	end

	test "note info must be present" do
		@new_note.info = ''
		assert @new_note.invalid?
		assert_not @new_note.save
	end
end

require './test/test_helper'
require './modules/date_handler'
require './lib/employee'
require './lib/project'

class ProjectTest < Minitest::Test
  def setup
    project_id = '123'
    name = 'Widget Maker'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    @project = Project.new(project_id, name, start_date, end_date)
  end

  def test_instantiation
    assert_instance_of Project, @project
  end

  def test_attributes
    assert_equal 123, @project.project_id
    assert_equal 'Widget Maker', @project.name
    assert_equal DateHandler.string_to_date('2015-01-01'), @project.start_date
    assert_equal DateHandler.string_to_date('2018-01-01'), @project.end_date
  end


end

# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140814052849) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "questions", :force => true do |t|
    t.string   "correct_answer"
    t.integer  "difficulty"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.text     "answer_a"
    t.text     "answer_b"
    t.text     "answer_c"
    t.text     "answer_d"
    t.text     "question"
    t.integer  "sub_category_id"
    t.integer  "category_id"
  end

  create_table "questions_quizzes", :id => false, :force => true do |t|
    t.integer "question_id"
    t.integer "quiz_id"
  end

  add_index "questions_quizzes", ["question_id"], :name => "index_questions_quizzes_on_question_id"
  add_index "questions_quizzes", ["quiz_id"], :name => "index_questions_quizzes_on_quiz_id"

  create_table "quizzes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "sub_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "category_id"
    t.string   "color"
  end

end

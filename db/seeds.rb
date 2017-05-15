ActsAsVotable::Vote.create!([
  {votable_id: 1, votable_type: "Lecture", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 1, votable_type: "Lecture", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: "spam", vote_weight: 1},
  {votable_id: 2, votable_type: "Lecture", voter_id: 2, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 2, votable_type: "Lecture", voter_id: 2, voter_type: "User", vote_flag: true, vote_scope: "spam", vote_weight: 1}
])
AdminUser.create!([
  {email: "admin@example.com", encrypted_password: "$2a$11$4X2H5sapNqjeGqu2rd0CXei/gwDTgE5B6XbzJrJBesC/MYwG/Dwyq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2017-05-15 19:02:22", last_sign_in_at: "2017-05-12 21:40:58", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Course.create!([
  {title: "course1", description: "test course", user_id: 1, image: nil},
  {title: "course2", description: "test course", user_id: 1, image: nil},
  {title: "course3", description: "test course", user_id: 1, image: nil},
  {title: "course1", description: "test course", user_id: 1, image: "coursetest.jpg"}
])
User.create!([
  {email: "hager@gmail.com", encrypted_password: "$2a$11$daVC6lLIaEY.TwojTmkyhOf6nwxyfITjknhTUmPfQGPOMG8ZUdtL.", name: "hager", status: "instructor", image: "images.jpg", gender: "female", date_of_birth: "2012-01-05", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
  {email: "ali@gmail.com", encrypted_password: "$2a$11$IjzsjBSm9q1GoKSRM37kxeQ1mhNNFm4AoU85aM6zHGqCXMYxl/bq2", name: "ali", status: "student", image: nil, gender: "male", date_of_birth: "1990-05-01", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])
Lecture.create!([
  {title: "lecture 1", content: "<p><strong>Lorem Ipsum </strong><strong>is simply dummy</strong><strong> text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard </strong><span style=\"color:#c0392b;\"><em>dummy text ever since the </em></span><span style=\"color:#c0392b;\"><em>1500s,</em></span><span style=\"color:#c0392b;\"><em> when an unknown printer took a galley of type and scrambled it to make a type</em></span> <span style=\"background-color:#1abc9c;\">specimen book. It has survived not only five centuries, but also the leap into</span> e<s>lectronic typesetting, remaining </s><u>essentially unchanged. It was </u><u>popularised</u><u> in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</u></p>\r\n", attachment: "ruby.pdf", course_id: 1, user_id: 1},
  {title: "lecture 1", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", attachment: nil, course_id: 2, user_id: 1},
  {title: "lecture 1", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", attachment: nil, course_id: 3, user_id: 1},
  {title: "lecture 1", content: "<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n", attachment: "ruby.pdf", course_id: 4, user_id: 1}
])
Comment.create!([
  {comment: "comment", user_id: 1, lecture_id: 1}
])

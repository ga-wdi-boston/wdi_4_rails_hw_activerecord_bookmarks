Bookmark.delete_all

puts "Creating 4 bookmarks"
bookmark_count = 4

# bookmark_count.times do |i|
#   Bookmark.create!(url: "Bookmark #{i}",
#                    title: "Title #{i}",
#                    comment: "Comment #{i}",
#                    category: "Category #{i}",
#                    is_favourite: ""
#                    )
# end

  Bookmark.create!(url: 'http://www.reddit.com', title: 'Reddit', comment: '', category: 'news', is_favourite: true)
  Bookmark.create!(url: 'http://www.youtube.com', title: 'YouTube', comment: '', category: 'media', is_favourite: true)
  Bookmark.create!(url: 'http://www.screenrant.com', title: 'Screenrant', comment: '', category: 'news', is_favourite: false)
  Bookmark.create!(url: 'http://www.facebook.com', title: 'Facebook', comment: '', category: 'social', is_favourite: true)
  Bookmark.create!(url: 'http://www.hotchinesebabes.com', title: 'Hot Chinese Babes', comment: '', category: 'fun', is_favourite: false)

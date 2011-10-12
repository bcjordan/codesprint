require 'pp'

def minmax v, e
  (v.to_f / (v.to_f - min_degree(v, e).to_f)).ceil
end

def min_degree v, e
  # Total degree  # Num vertices
  ((2.0 * e.to_f) / v.to_f).floor
end

infile = open("input02.txt") { |f| f.read }
outfile = open("output02.txt") { |f| f.read }

inputs  = infile.split("\n").map{|x| x.split.map{|y| y.to_i}}
outputs = outfile.split.map{|x| x.to_i}

500.times do |n|
  v = inputs[n][0]
  e = inputs[n][1]
  k = outputs[n]

  puts "Q/A: v:#{v} e:#{e} => #{k}"
  answer = minmax(v, e)
  deg = min_degree(v, e)
  puts "  Min degree: #{deg}, Answer: #{answer} == #{k}"
end

#Q/A: v:18 e:11 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:25 e:26 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:7 e:13 => 3
#  Min degree: 3, Answer: 2 == 3
#Q/A: v:6 e:10 => 3
#  Min degree: 3, Answer: 2 == 3
#Q/A: v:24 e:7 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:13 e:73 => 8
#  Min degree: 11, Answer: 7 == 8
#Q/A: v:13 e:34 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:21 e:136 => 3
#  Min degree: 12, Answer: 3 == 3
#Q/A: v:6 e:7 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:26 e:36 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:13 e:46 => 3
#  Min degree: 7, Answer: 3 == 3
#Q/A: v:25 e:150 => 2
#  Min degree: 12, Answer: 2 == 2
#Q/A: v:32 e:222 => 2
#  Min degree: 13, Answer: 2 == 2
#Q/A: v:41 e:410 => 2
#  Min degree: 20, Answer: 2 == 2
#Q/A: v:16 e:7 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:12 e:26 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:34 e:507 => 9
#  Min degree: 29, Answer: 7 == 9
#Q/A: v:8 e:13 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:18 e:139 => 8
#  Min degree: 15, Answer: 6 == 8
#Q/A: v:41 e:549 => 3
#  Min degree: 26, Answer: 3 == 3
#Q/A: v:44 e:23 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:40 e:517 => 3
#  Min degree: 25, Answer: 3 == 3
#Q/A: v:11 e:10 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:43 e:59 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:7 e:21 => 7
#  Min degree: 6, Answer: 7 == 7
#Q/A: v:28 e:307 => 5
#  Min degree: 21, Answer: 4 == 5
#Q/A: v:38 e:456 => 3
#  Min degree: 24, Answer: 3 == 3
#Q/A: v:19 e:112 => 3
#  Min degree: 11, Answer: 3 == 3
#Q/A: v:4 e:3 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:50 e:370 => 2
#  Min degree: 14, Answer: 2 == 2
#Q/A: v:7 e:16 => 3
#  Min degree: 4, Answer: 3 == 3
#Q/A: v:4 e:4 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:50 e:961 => 5
#  Min degree: 38, Answer: 5 == 5
#Q/A: v:31 e:390 => 6
#  Min degree: 25, Answer: 6 == 6
#Q/A: v:24 e:268 => 16
#  Min degree: 22, Answer: 12 == 16
#Q/A: v:4 e:2 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:23 e:208 => 5
#  Min degree: 18, Answer: 5 == 5
#Q/A: v:23 e:108 => 2
#  Min degree: 9, Answer: 2 == 2
#Q/A: v:5 e:5 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:49 e:528 => 2
#  Min degree: 21, Answer: 2 == 2
#Q/A: v:36 e:354 => 3
#  Min degree: 19, Answer: 3 == 3
#Q/A: v:29 e:143 => 2
#  Min degree: 9, Answer: 2 == 2
#Q/A: v:24 e:274 => 22
#  Min degree: 22, Answer: 12 == 22
#Q/A: v:43 e:387 => 2
#  Min degree: 18, Answer: 2 == 2
#Q/A: v:7 e:18 => 4
#  Min degree: 5, Answer: 4 == 4
#Q/A: v:48 e:465 => 2
#  Min degree: 19, Answer: 2 == 2
#Q/A: v:5 e:9 => 4
#  Min degree: 3, Answer: 3 == 4
#Q/A: v:4 e:2 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:10 e:42 => 7
#  Min degree: 8, Answer: 5 == 7
#Q/A: v:17 e:37 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:4 e:2 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:49 e:383 => 2
#  Min degree: 15, Answer: 2 == 2
#Q/A: v:15 e:26 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:11 e:8 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:39 e:423 => 3
#  Min degree: 21, Answer: 3 == 3
#Q/A: v:30 e:109 => 2
#  Min degree: 7, Answer: 2 == 2
#Q/A: v:31 e:331 => 4
#  Min degree: 21, Answer: 4 == 4
#Q/A: v:47 e:594 => 3
#  Min degree: 25, Answer: 3 == 3
#Q/A: v:6 e:4 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:34 e:407 => 4
#  Min degree: 23, Answer: 4 == 4
#Q/A: v:31 e:436 => 11
#  Min degree: 28, Answer: 11 == 11
#Q/A: v:24 e:104 => 2
#  Min degree: 8, Answer: 2 == 2
#Q/A: v:32 e:353 => 4
#  Min degree: 22, Answer: 4 == 4
#Q/A: v:38 e:6 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:8 e:5 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:23 e:229 => 8
#  Min degree: 19, Answer: 6 == 8
#Q/A: v:25 e:271 => 8
#  Min degree: 21, Answer: 7 == 8
#Q/A: v:38 e:334 => 2
#  Min degree: 17, Answer: 2 == 2
#Q/A: v:45 e:96 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:8 e:21 => 3
#  Min degree: 5, Answer: 3 == 3
#Q/A: v:3 e:2 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:7 e:13 => 3
#  Min degree: 3, Answer: 2 == 3
#Q/A: v:43 e:631 => 4
#  Min degree: 29, Answer: 4 == 4
#Q/A: v:40 e:617 => 5
#  Min degree: 30, Answer: 4 == 5
#Q/A: v:43 e:73 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:8 e:23 => 4
#  Min degree: 5, Answer: 3 == 4
#Q/A: v:3 e:1 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:9 e:24 => 3
#  Min degree: 5, Answer: 3 == 3
#Q/A: v:7 e:13 => 3
#  Min degree: 3, Answer: 2 == 3
#Q/A: v:24 e:142 => 2
#  Min degree: 11, Answer: 2 == 2
#Q/A: v:2 e:1 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:23 e:36 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:19 e:96 => 3
#  Min degree: 10, Answer: 3 == 3
#Q/A: v:16 e:101 => 5
#  Min degree: 12, Answer: 4 == 5
#Q/A: v:7 e:5 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:44 e:670 => 4
#  Min degree: 30, Answer: 4 == 4
#Q/A: v:6 e:8 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:43 e:625 => 4
#  Min degree: 29, Answer: 4 == 4
#Q/A: v:2 e:1 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:46 e:762 => 4
#  Min degree: 33, Answer: 4 == 4
#Q/A: v:4 e:5 => 3
#  Min degree: 2, Answer: 2 == 3
#Q/A: v:15 e:101 => 11
#  Min degree: 13, Answer: 8 == 11
#Q/A: v:34 e:322 => 3
#  Min degree: 18, Answer: 3 == 3
#Q/A: v:38 e:327 => 2
#  Min degree: 17, Answer: 2 == 2
#Q/A: v:19 e:82 => 2
#  Min degree: 8, Answer: 2 == 2
#Q/A: v:2 e:1 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:9 e:27 => 3
#  Min degree: 6, Answer: 3 == 3
#Q/A: v:44 e:448 => 2
#  Min degree: 20, Answer: 2 == 2
#Q/A: v:34 e:337 => 3
#  Min degree: 19, Answer: 3 == 3
#Q/A: v:37 e:2 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:31 e:371 => 5
#  Min degree: 23, Answer: 4 == 5
#Q/A: v:48 e:721 => 3
#  Min degree: 30, Answer: 3 == 3
#Q/A: v:29 e:59 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:36 e:70 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:21 e:81 => 2
#  Min degree: 7, Answer: 2 == 2
#Q/A: v:22 e:172 => 4
#  Min degree: 15, Answer: 4 == 4
#Q/A: v:34 e:531 => 13
#  Min degree: 31, Answer: 12 == 13
#Q/A: v:28 e:63 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:11 e:16 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:4 e:1 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:29 e:13 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:49 e:178 => 2
#  Min degree: 7, Answer: 2 == 2
#Q/A: v:28 e:354 => 11
#  Min degree: 25, Answer: 10 == 11
#Q/A: v:14 e:79 => 6
#  Min degree: 11, Answer: 5 == 6
#Q/A: v:50 e:448 => 2
#  Min degree: 17, Answer: 2 == 2
#Q/A: v:50 e:156 => 2
#  Min degree: 6, Answer: 2 == 2
#Q/A: v:31 e:175 => 2
#  Min degree: 11, Answer: 2 == 2
#Q/A: v:18 e:35 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:36 e:511 => 5
#  Min degree: 28, Answer: 5 == 5
#Q/A: v:40 e:197 => 2
#  Min degree: 9, Answer: 2 == 2
#Q/A: v:32 e:266 => 3
#  Min degree: 16, Answer: 2 == 3
#Q/A: v:31 e:205 => 2
#  Min degree: 13, Answer: 2 == 2
#Q/A: v:49 e:297 => 2
#  Min degree: 12, Answer: 2 == 2
#Q/A: v:30 e:309 => 4
#  Min degree: 20, Answer: 3 == 4
#Q/A: v:25 e:231 => 4
#  Min degree: 18, Answer: 4 == 4
#Q/A: v:40 e:263 => 2
#  Min degree: 13, Answer: 2 == 2
#Q/A: v:37 e:634 => 14
#  Min degree: 34, Answer: 13 == 14
#Q/A: v:41 e:342 => 2
#  Min degree: 16, Answer: 2 == 2
#Q/A: v:28 e:298 => 5
#  Min degree: 21, Answer: 4 == 5
#Q/A: v:24 e:250 => 8
#  Min degree: 20, Answer: 6 == 8
#Q/A: v:3 e:3 => 3
#  Min degree: 2, Answer: 3 == 3
#Q/A: v:9 e:3 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:18 e:124 => 5
#  Min degree: 13, Answer: 4 == 5
#Q/A: v:41 e:244 => 2
#  Min degree: 11, Answer: 2 == 2
#Q/A: v:27 e:65 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:11 e:28 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:41 e:141 => 2
#  Min degree: 6, Answer: 2 == 2
#Q/A: v:23 e:149 => 3
#  Min degree: 12, Answer: 3 == 3
#Q/A: v:50 e:952 => 5
#  Min degree: 38, Answer: 5 == 5
#Q/A: v:48 e:436 => 2
#  Min degree: 18, Answer: 2 == 2
#Q/A: v:36 e:565 => 8
#  Min degree: 31, Answer: 8 == 8
#Q/A: v:28 e:266 => 4
#  Min degree: 19, Answer: 4 == 4
#Q/A: v:23 e:52 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:34 e:79 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:19 e:134 => 4
#  Min degree: 14, Answer: 4 == 4
#Q/A: v:26 e:319 => 20
#  Min degree: 24, Answer: 13 == 20
#Q/A: v:28 e:320 => 6
#  Min degree: 22, Answer: 5 == 6
#Q/A: v:2 e:1 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:10 e:21 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:50 e:1161 => 15
#  Min degree: 46, Answer: 13 == 15
#Q/A: v:20 e:90 => 2
#  Min degree: 9, Answer: 2 == 2
#Q/A: v:44 e:722 => 4
#  Min degree: 32, Answer: 4 == 4
#Q/A: v:51 e:116 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:49 e:497 => 2
#  Min degree: 20, Answer: 2 == 2
#Q/A: v:21 e:116 => 3
#  Min degree: 11, Answer: 3 == 3
#Q/A: v:25 e:154 => 2
#  Min degree: 12, Answer: 2 == 2
#Q/A: v:33 e:254 => 2
#  Min degree: 15, Answer: 2 == 2
#Q/A: v:26 e:28 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:19 e:5 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:51 e:662 => 3
#  Min degree: 25, Answer: 2 == 3
#Q/A: v:15 e:87 => 5
#  Min degree: 11, Answer: 4 == 5
#Q/A: v:8 e:8 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:11 e:37 => 3
#  Min degree: 6, Answer: 3 == 3
#Q/A: v:36 e:551 => 7
#  Min degree: 30, Answer: 6 == 7
#Q/A: v:48 e:109 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:7 e:21 => 7
#  Min degree: 6, Answer: 7 == 7
#Q/A: v:47 e:116 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:27 e:144 => 2
#  Min degree: 10, Answer: 2 == 2
#Q/A: v:19 e:153 => 7
#  Min degree: 16, Answer: 7 == 7
#Q/A: v:49 e:337 => 2
#  Min degree: 13, Answer: 2 == 2
#Q/A: v:21 e:1 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:43 e:765 => 6
#  Min degree: 35, Answer: 6 == 6
#Q/A: v:22 e:31 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:4 e:2 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:24 e:173 => 3
#  Min degree: 14, Answer: 3 == 3
#Q/A: v:27 e:71 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:32 e:72 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:28 e:152 => 2
#  Min degree: 10, Answer: 2 == 2
#Q/A: v:39 e:20 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:13 e:19 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:51 e:543 => 2
#  Min degree: 21, Answer: 2 == 2
#Q/A: v:6 e:1 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:19 e:60 => 2
#  Min degree: 6, Answer: 2 == 2
#Q/A: v:46 e:627 => 3
#  Min degree: 27, Answer: 3 == 3
#Q/A: v:8 e:16 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:25 e:277 => 9
#  Min degree: 22, Answer: 9 == 9
#Q/A: v:13 e:47 => 3
#  Min degree: 7, Answer: 3 == 3
#Q/A: v:28 e:200 => 3
#  Min degree: 14, Answer: 2 == 3
#Q/A: v:32 e:234 => 2
#  Min degree: 14, Answer: 2 == 2
#Q/A: v:26 e:230 => 4
#  Min degree: 17, Answer: 3 == 4
#Q/A: v:37 e:576 => 7
#  Min degree: 31, Answer: 7 == 7
#Q/A: v:43 e:903 => 43
#  Min degree: 42, Answer: 43 == 43
#Q/A: v:34 e:356 => 3
#  Min degree: 20, Answer: 3 == 3
#Q/A: v:12 e:7 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:36 e:473 => 4
#  Min degree: 26, Answer: 4 == 4
#Q/A: v:10 e:10 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:43 e:110 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:33 e:71 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:48 e:968 => 7
#  Min degree: 40, Answer: 6 == 7
#Q/A: v:48 e:482 => 2
#  Min degree: 20, Answer: 2 == 2
#Q/A: v:18 e:137 => 7
#  Min degree: 15, Answer: 6 == 7
#Q/A: v:31 e:275 => 3
#  Min degree: 17, Answer: 3 == 3
#Q/A: v:38 e:589 => 6
#  Min degree: 31, Answer: 6 == 6
#Q/A: v:17 e:71 => 2
#  Min degree: 8, Answer: 2 == 2
#Q/A: v:40 e:650 => 6
#  Min degree: 32, Answer: 5 == 6
#Q/A: v:26 e:176 => 3
#  Min degree: 13, Answer: 2 == 3
#Q/A: v:41 e:808 => 29
#  Min degree: 39, Answer: 21 == 29
#Q/A: v:44 e:390 => 2
#  Min degree: 17, Answer: 2 == 2
#Q/A: v:38 e:221 => 2
#  Min degree: 11, Answer: 2 == 2
#Q/A: v:47 e:97 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:29 e:74 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:7 e:12 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:22 e:102 => 2
#  Min degree: 9, Answer: 2 == 2
#Q/A: v:32 e:257 => 3
#  Min degree: 16, Answer: 2 == 3
#Q/A: v:15 e:89 => 5
#  Min degree: 11, Answer: 4 == 5
#Q/A: v:21 e:142 => 3
#  Min degree: 13, Answer: 3 == 3
#Q/A: v:2 e:1 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:14 e:61 => 3
#  Min degree: 8, Answer: 3 == 3
#Q/A: v:10 e:43 => 8
#  Min degree: 8, Answer: 5 == 8
#Q/A: v:8 e:11 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:19 e:102 => 3
#  Min degree: 10, Answer: 3 == 3
#Q/A: v:26 e:109 => 2
#  Min degree: 8, Answer: 2 == 2
#Q/A: v:51 e:619 => 2
#  Min degree: 24, Answer: 2 == 2
#Q/A: v:33 e:390 => 4
#  Min degree: 23, Answer: 4 == 4
#Q/A: v:25 e:130 => 2
#  Min degree: 10, Answer: 2 == 2
#Q/A: v:10 e:36 => 4
#  Min degree: 7, Answer: 4 == 4
#Q/A: v:36 e:596 => 13
#  Min degree: 33, Answer: 12 == 13
#Q/A: v:24 e:215 => 4
#  Min degree: 17, Answer: 4 == 4
#Q/A: v:5 e:3 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:25 e:217 => 4
#  Min degree: 17, Answer: 4 == 4
#Q/A: v:35 e:233 => 2
#  Min degree: 13, Answer: 2 == 2
#Q/A: v:51 e:609 => 2
#  Min degree: 23, Answer: 2 == 2
#Q/A: v:45 e:383 => 2
#  Min degree: 17, Answer: 2 == 2
#Q/A: v:23 e:187 => 4
#  Min degree: 16, Answer: 4 == 4
#Q/A: v:41 e:390 => 2
#  Min degree: 19, Answer: 2 == 2
#Q/A: v:51 e:59 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:13 e:38 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:20 e:11 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:44 e:93 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:49 e:608 => 3
#  Min degree: 24, Answer: 2 == 3
#Q/A: v:33 e:507 => 15
#  Min degree: 30, Answer: 11 == 15
#Q/A: v:20 e:36 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:23 e:23 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:24 e:122 => 2
#  Min degree: 10, Answer: 2 == 2
#Q/A: v:47 e:14 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:45 e:719 => 4
#  Min degree: 31, Answer: 4 == 4
#Q/A: v:39 e:465 => 3
#  Min degree: 23, Answer: 3 == 3
#Q/A: v:15 e:93 => 6
#  Min degree: 12, Answer: 5 == 6
#Q/A: v:9 e:23 => 3
#  Min degree: 5, Answer: 3 == 3
#Q/A: v:35 e:529 => 8
#  Min degree: 30, Answer: 7 == 8
#Q/A: v:15 e:94 => 7
#  Min degree: 12, Answer: 5 == 7
#Q/A: v:11 e:17 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:8 e:24 => 4
#  Min degree: 6, Answer: 4 == 4
#Q/A: v:38 e:345 => 2
#  Min degree: 18, Answer: 2 == 2
#Q/A: v:31 e:284 => 3
#  Min degree: 18, Answer: 3 == 3
#Q/A: v:18 e:66 => 2
#  Min degree: 7, Answer: 2 == 2
#Q/A: v:43 e:876 => 20
#  Min degree: 40, Answer: 15 == 20
#Q/A: v:28 e:210 => 3
#  Min degree: 15, Answer: 3 == 3
#Q/A: v:28 e:313 => 5
#  Min degree: 22, Answer: 5 == 5
#Q/A: v:42 e:178 => 2
#  Min degree: 8, Answer: 2 == 2
#Q/A: v:47 e:528 => 2
#  Min degree: 22, Answer: 2 == 2
#Q/A: v:51 e:660 => 3
#  Min degree: 25, Answer: 2 == 3
#Q/A: v:30 e:318 => 4
#  Min degree: 21, Answer: 4 == 4
#Q/A: v:19 e:52 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:50 e:628 => 3
#  Min degree: 25, Answer: 2 == 3
#Q/A: v:38 e:306 => 2
#  Min degree: 16, Answer: 2 == 2
#Q/A: v:39 e:15 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:41 e:337 => 2
#  Min degree: 16, Answer: 2 == 2
#Q/A: v:26 e:28 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:48 e:159 => 2
#  Min degree: 6, Answer: 2 == 2
#Q/A: v:15 e:103 => 13
#  Min degree: 13, Answer: 8 == 13
#Q/A: v:16 e:25 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:50 e:268 => 2
#  Min degree: 10, Answer: 2 == 2
#Q/A: v:21 e:126 => 3
#  Min degree: 12, Answer: 3 == 3
#Q/A: v:44 e:766 => 5
#  Min degree: 34, Answer: 5 == 5
#Q/A: v:48 e:388 => 2
#  Min degree: 16, Answer: 2 == 2
#Q/A: v:45 e:429 => 2
#  Min degree: 19, Answer: 2 == 2
#Q/A: v:26 e:224 => 3
#  Min degree: 17, Answer: 3 == 3
#Q/A: v:14 e:11 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:13 e:32 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:47 e:604 => 3
#  Min degree: 25, Answer: 3 == 3
#Q/A: v:28 e:20 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:48 e:761 => 3
#  Min degree: 31, Answer: 3 == 3
#Q/A: v:31 e:376 => 5
#  Min degree: 24, Answer: 5 == 5
#Q/A: v:47 e:99 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:26 e:86 => 2
#  Min degree: 6, Answer: 2 == 2
#Q/A: v:42 e:84 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:17 e:85 => 3
#  Min degree: 10, Answer: 3 == 3
#Q/A: v:37 e:125 => 2
#  Min degree: 6, Answer: 2 == 2
#Q/A: v:17 e:39 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:46 e:498 => 2
#  Min degree: 21, Answer: 2 == 2
#Q/A: v:21 e:190 => 8
#  Min degree: 18, Answer: 7 == 8
#Q/A: v:14 e:22 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:16 e:65 => 3
#  Min degree: 8, Answer: 2 == 3
#Q/A: v:40 e:526 => 3
#  Min degree: 26, Answer: 3 == 3
#Q/A: v:39 e:669 => 9
#  Min degree: 34, Answer: 8 == 9
#Q/A: v:28 e:3 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:21 e:103 => 2
#  Min degree: 9, Answer: 2 == 2
#Q/A: v:34 e:99 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:45 e:200 => 2
#  Min degree: 8, Answer: 2 == 2
#Q/A: v:29 e:346 => 6
#  Min degree: 23, Answer: 5 == 6
#Q/A: v:42 e:574 => 3
#  Min degree: 27, Answer: 3 == 3
#Q/A: v:12 e:32 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:12 e:65 => 11
#  Min degree: 10, Answer: 6 == 11
#Q/A: v:45 e:346 => 2
#  Min degree: 15, Answer: 2 == 2
#Q/A: v:28 e:254 => 3
#  Min degree: 18, Answer: 3 == 3
#Q/A: v:41 e:606 => 4
#  Min degree: 29, Answer: 4 == 4
#Q/A: v:30 e:102 => 2
#  Min degree: 6, Answer: 2 == 2
#Q/A: v:43 e:895 => 35
#  Min degree: 41, Answer: 22 == 35
#Q/A: v:30 e:325 => 4
#  Min degree: 21, Answer: 4 == 4
#Q/A: v:22 e:81 => 2
#  Min degree: 7, Answer: 2 == 2
#Q/A: v:15 e:73 => 3
#  Min degree: 9, Answer: 3 == 3
#Q/A: v:33 e:299 => 3
#  Min degree: 18, Answer: 3 == 3
#Q/A: v:23 e:150 => 3
#  Min degree: 13, Answer: 3 == 3
#Q/A: v:36 e:135 => 2
#  Min degree: 7, Answer: 2 == 2
#Q/A: v:47 e:1025 => 15
#  Min degree: 43, Answer: 12 == 15
#Q/A: v:36 e:26 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:35 e:205 => 2
#  Min degree: 11, Answer: 2 == 2
#Q/A: v:46 e:379 => 2
#  Min degree: 16, Answer: 2 == 2
#Q/A: v:44 e:658 => 4
#  Min degree: 29, Answer: 3 == 4
#Q/A: v:21 e:19 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:29 e:259 => 3
#  Min degree: 17, Answer: 3 == 3
#Q/A: v:16 e:68 => 3
#  Min degree: 8, Answer: 2 == 3
#Q/A: v:14 e:18 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:4 e:3 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:38 e:120 => 2
#  Min degree: 6, Answer: 2 == 2
#Q/A: v:9 e:33 => 6
#  Min degree: 7, Answer: 5 == 6
#Q/A: v:26 e:15 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:38 e:645 => 10
#  Min degree: 33, Answer: 8 == 10
#Q/A: v:6 e:9 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:14 e:58 => 3
#  Min degree: 8, Answer: 3 == 3
#Q/A: v:39 e:362 => 2
#  Min degree: 18, Answer: 2 == 2
#Q/A: v:38 e:44 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:44 e:397 => 2
#  Min degree: 18, Answer: 2 == 2
#Q/A: v:18 e:60 => 2
#  Min degree: 6, Answer: 2 == 2
#Q/A: v:22 e:80 => 2
#  Min degree: 7, Answer: 2 == 2
#Q/A: v:7 e:8 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:49 e:232 => 2
#  Min degree: 9, Answer: 2 == 2
#Q/A: v:8 e:14 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:30 e:222 => 2
#  Min degree: 14, Answer: 2 == 2
#Q/A: v:5 e:8 => 3
#  Min degree: 3, Answer: 3 == 3
#Q/A: v:38 e:64 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:21 e:203 => 14
#  Min degree: 19, Answer: 11 == 14
#Q/A: v:4 e:2 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:9 e:3 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:34 e:74 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:12 e:66 => 12
#  Min degree: 11, Answer: 12 == 12
#Q/A: v:21 e:149 => 4
#  Min degree: 14, Answer: 3 == 4
#Q/A: v:44 e:817 => 7
#  Min degree: 37, Answer: 7 == 7
#Q/A: v:33 e:91 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:3 e:2 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:49 e:1117 => 15
#  Min degree: 45, Answer: 13 == 15
#Q/A: v:4 e:3 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:32 e:229 => 2
#  Min degree: 14, Answer: 2 == 2
#Q/A: v:10 e:41 => 6
#  Min degree: 8, Answer: 5 == 6
#Q/A: v:25 e:112 => 2
#  Min degree: 8, Answer: 2 == 2
#Q/A: v:29 e:406 => 29
#  Min degree: 28, Answer: 29 == 29
#Q/A: v:26 e:274 => 6
#  Min degree: 21, Answer: 6 == 6
#Q/A: v:25 e:229 => 4
#  Min degree: 18, Answer: 4 == 4
#Q/A: v:10 e:39 => 5
#  Min degree: 7, Answer: 4 == 5
#Q/A: v:41 e:21 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:6 e:15 => 6
#  Min degree: 5, Answer: 6 == 6
#Q/A: v:14 e:84 => 7
#  Min degree: 12, Answer: 7 == 7
#Q/A: v:51 e:580 => 2
#  Min degree: 22, Answer: 2 == 2
#Q/A: v:40 e:23 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:16 e:50 => 2
#  Min degree: 6, Answer: 2 == 2
#Q/A: v:37 e:202 => 2
#  Min degree: 10, Answer: 2 == 2
#Q/A: v:49 e:204 => 2
#  Min degree: 8, Answer: 2 == 2
#Q/A: v:9 e:2 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:4 e:2 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:40 e:306 => 2
#  Min degree: 15, Answer: 2 == 2
#Q/A: v:31 e:103 => 2
#  Min degree: 6, Answer: 2 == 2
#Q/A: v:39 e:637 => 7
#  Min degree: 32, Answer: 6 == 7
#Q/A: v:18 e:112 => 4
#  Min degree: 12, Answer: 3 == 4
#Q/A: v:38 e:514 => 4
#  Min degree: 27, Answer: 4 == 4
#Q/A: v:47 e:25 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:18 e:38 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:28 e:195 => 2
#  Min degree: 13, Answer: 2 == 2
#Q/A: v:28 e:170 => 2
#  Min degree: 12, Answer: 2 == 2
#Q/A: v:34 e:310 => 3
#  Min degree: 18, Answer: 3 == 3
#Q/A: v:10 e:14 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:7 e:13 => 3
#  Min degree: 3, Answer: 2 == 3
#Q/A: v:13 e:49 => 3
#  Min degree: 7, Answer: 3 == 3
#Q/A: v:37 e:232 => 2
#  Min degree: 12, Answer: 2 == 2
#Q/A: v:34 e:20 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:38 e:642 => 10
#  Min degree: 33, Answer: 8 == 10
#Q/A: v:16 e:118 => 14
#  Min degree: 14, Answer: 8 == 14
#Q/A: v:41 e:314 => 2
#  Min degree: 15, Answer: 2 == 2
#Q/A: v:25 e:208 => 3
#  Min degree: 16, Answer: 3 == 3
#Q/A: v:20 e:40 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:33 e:486 => 10
#  Min degree: 29, Answer: 9 == 10
#Q/A: v:38 e:11 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:19 e:77 => 2
#  Min degree: 8, Answer: 2 == 2
#Q/A: v:30 e:1 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:39 e:153 => 2
#  Min degree: 7, Answer: 2 == 2
#Q/A: v:13 e:70 => 6
#  Min degree: 10, Answer: 5 == 6
#Q/A: v:13 e:27 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:45 e:494 => 2
#  Min degree: 21, Answer: 2 == 2
#Q/A: v:23 e:233 => 9
#  Min degree: 20, Answer: 8 == 9
#Q/A: v:46 e:731 => 4
#  Min degree: 31, Answer: 4 == 4
#Q/A: v:21 e:3 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:29 e:382 => 12
#  Min degree: 26, Answer: 10 == 12
#Q/A: v:2 e:1 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:43 e:366 => 2
#  Min degree: 17, Answer: 2 == 2
#Q/A: v:26 e:135 => 2
#  Min degree: 10, Answer: 2 == 2
#Q/A: v:38 e:637 => 9
#  Min degree: 33, Answer: 8 == 9
#Q/A: v:26 e:298 => 9
#  Min degree: 22, Answer: 7 == 9
#Q/A: v:9 e:13 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:36 e:277 => 2
#  Min degree: 15, Answer: 2 == 2
#Q/A: v:41 e:634 => 5
#  Min degree: 30, Answer: 4 == 5
#Q/A: v:51 e:279 => 2
#  Min degree: 10, Answer: 2 == 2
#Q/A: v:23 e:242 => 12
#  Min degree: 21, Answer: 12 == 12
#Q/A: v:23 e:249 => 19
#  Min degree: 21, Answer: 12 == 19
#Q/A: v:37 e:567 => 6
#  Min degree: 30, Answer: 6 == 6
#Q/A: v:50 e:357 => 2
#  Min degree: 14, Answer: 2 == 2
#Q/A: v:51 e:745 => 3
#  Min degree: 29, Answer: 3 == 3
#Q/A: v:16 e:117 => 13
#  Min degree: 14, Answer: 8 == 13
#Q/A: v:8 e:5 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:45 e:678 => 4
#  Min degree: 30, Answer: 3 == 4
#Q/A: v:45 e:810 => 5
#  Min degree: 36, Answer: 5 == 5
#Q/A: v:10 e:5 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:28 e:162 => 2
#  Min degree: 11, Answer: 2 == 2
#Q/A: v:3 e:1 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:33 e:204 => 2
#  Min degree: 12, Answer: 2 == 2
#Q/A: v:24 e:229 => 5
#  Min degree: 19, Answer: 5 == 5
#Q/A: v:12 e:50 => 4
#  Min degree: 8, Answer: 3 == 4
#Q/A: v:25 e:84 => 2
#  Min degree: 6, Answer: 2 == 2
#Q/A: v:35 e:343 => 3
#  Min degree: 19, Answer: 3 == 3
#Q/A: v:3 e:2 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:43 e:641 => 4
#  Min degree: 29, Answer: 4 == 4
#Q/A: v:2 e:1 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:20 e:127 => 3
#  Min degree: 12, Answer: 3 == 3
#Q/A: v:19 e:20 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:36 e:453 => 4
#  Min degree: 25, Answer: 4 == 4
#Q/A: v:26 e:28 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:33 e:366 => 4
#  Min degree: 22, Answer: 3 == 4
#Q/A: v:8 e:15 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:22 e:61 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:46 e:272 => 2
#  Min degree: 11, Answer: 2 == 2
#Q/A: v:48 e:31 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:25 e:60 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:41 e:520 => 3
#  Min degree: 25, Answer: 3 == 3
#Q/A: v:46 e:888 => 7
#  Min degree: 38, Answer: 6 == 7
#Q/A: v:48 e:885 => 5
#  Min degree: 36, Answer: 4 == 5
#Q/A: v:45 e:920 => 11
#  Min degree: 40, Answer: 9 == 11
#Q/A: v:49 e:485 => 2
#  Min degree: 19, Answer: 2 == 2
#Q/A: v:32 e:439 => 8
#  Min degree: 27, Answer: 7 == 8
#Q/A: v:14 e:86 => 9
#  Min degree: 12, Answer: 7 == 9
#Q/A: v:45 e:888 => 9
#  Min degree: 39, Answer: 8 == 9
#Q/A: v:16 e:20 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:28 e:141 => 2
#  Min degree: 10, Answer: 2 == 2
#Q/A: v:6 e:4 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:8 e:1 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:46 e:833 => 5
#  Min degree: 36, Answer: 5 == 5
#Q/A: v:31 e:249 => 3
#  Min degree: 16, Answer: 3 == 3
#Q/A: v:22 e:63 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:6 e:5 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:8 e:19 => 3
#  Min degree: 4, Answer: 2 == 3
#Q/A: v:33 e:135 => 2
#  Min degree: 8, Answer: 2 == 2
#Q/A: v:46 e:133 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:45 e:453 => 2
#  Min degree: 20, Answer: 2 == 2
#Q/A: v:25 e:225 => 4
#  Min degree: 18, Answer: 4 == 4
#Q/A: v:12 e:32 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:28 e:298 => 5
#  Min degree: 21, Answer: 4 == 5
#Q/A: v:36 e:121 => 2
#  Min degree: 6, Answer: 2 == 2
#Q/A: v:28 e:350 => 10
#  Min degree: 25, Answer: 10 == 10
#Q/A: v:40 e:404 => 3
#  Min degree: 20, Answer: 2 == 3
#Q/A: v:48 e:207 => 2
#  Min degree: 8, Answer: 2 == 2
#Q/A: v:13 e:31 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:50 e:392 => 2
#  Min degree: 15, Answer: 2 == 2
#Q/A: v:37 e:327 => 2
#  Min degree: 17, Answer: 2 == 2
#Q/A: v:50 e:640 => 3
#  Min degree: 25, Answer: 2 == 3
#Q/A: v:29 e:269 => 3
#  Min degree: 18, Answer: 3 == 3
#Q/A: v:40 e:732 => 12
#  Min degree: 36, Answer: 10 == 12
#Q/A: v:10 e:15 => 2
#  Min degree: 3, Answer: 2 == 2
#Q/A: v:40 e:332 => 2
#  Min degree: 16, Answer: 2 == 2
#Q/A: v:30 e:157 => 2
#  Min degree: 10, Answer: 2 == 2
#Q/A: v:29 e:355 => 7
#  Min degree: 24, Answer: 6 == 7
#Q/A: v:50 e:129 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:47 e:733 => 3
#  Min degree: 31, Answer: 3 == 3
#Q/A: v:48 e:995 => 8
#  Min degree: 41, Answer: 7 == 8
#Q/A: v:48 e:107 => 2
#  Min degree: 4, Answer: 2 == 2
#Q/A: v:9 e:3 => 2
#  Min degree: 0, Answer: 1 == 2
#Q/A: v:35 e:474 => 5
#  Min degree: 27, Answer: 5 == 5
#Q/A: v:36 e:182 => 2
#  Min degree: 10, Answer: 2 == 2
#Q/A: v:13 e:35 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:4 e:2 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:11 e:35 => 3
#  Min degree: 6, Answer: 3 == 3
#Q/A: v:17 e:14 => 2
#  Min degree: 1, Answer: 2 == 2
#Q/A: v:44 e:920 => 21
#  Min degree: 41, Answer: 15 == 21
#Q/A: v:36 e:513 => 5
#  Min degree: 28, Answer: 5 == 5
#Q/A: v:29 e:355 => 7
#  Min degree: 24, Answer: 6 == 7
#Q/A: v:47 e:123 => 2
#  Min degree: 5, Answer: 2 == 2
#Q/A: v:5 e:5 => 2
#  Min degree: 2, Answer: 2 == 2
#Q/A: v:12 e:61 => 7
#  Min degree: 10, Answer: 6 == 7
#Q/A: v:33 e:311 => 3
#  Min degree: 18, Answer: 3 == 3
#Q/A: v:26 e:228 => 4
#  Min degree: 17, Answer: 3 == 4
#Q/A: v:46 e:682 => 3
#  Min degree: 29, Answer: 3 == 3
#Q/A: v:23 e:229 => 8
#  Min degree: 19, Answer: 6 == 8
#Q/A: v:2 e:1 => 2
#  Min degree: 1, Answer: 2 == 2
#
#Process finished with exit code 0

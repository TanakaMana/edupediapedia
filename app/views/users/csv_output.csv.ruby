require 'csv'
require 'nkf'

csv_str = CSV.generate do |csv|
  csv_column_names = %w(名前 メールアドレス 大学 学部 学科 学年 出身地 活動拠点 専門班 專門班(兼任) 役職 現在やっていること 今後やりたいこと 開始時期 退会時期 入会のきっかけ 興味のある教育分野 将来やりたい仕事 得意なこと 今後の伸ばしたい力 趣味 座右の銘 その他のROJEプロジェクト ROJE外の活動 メモ)
  csv << csv_column_names
  @users.each do |user|
    csv_column_values = [
      user.name,
      user.email,
      user.university,
      user.faculty,
      user.department,
      user.year,
      user.birthplace,
      user.location,
      user.team_main,
      user.team_sub,
      user.position,
      user.doing,
      user.future_doing,
      user.trigger,
      user.start_time,
      user.finish_time,
      user.education_interest,
      user.future_work,
      user.specially,
      user.improve,
      user.hobby,
      user.motto,
      user.roje,
      user.outside,
      user.memo
    ]
    csv << csv_column_values
  end
end

NKF::nkf('--sjis -Lw', csv_str)

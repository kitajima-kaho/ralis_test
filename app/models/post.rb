class Post < ApplicationRecord
  # バリデーション
  validates :memo, presence: true


  # CarrierWaveのアップローダーをマウント
  # Post モデルは ImageUploader を使用して、
  # image カラムにファイルをアップロードできるようになる。
  mount_uploader :image, ImageUploader

  # # 関連付け(Active Storage)
  # has_one_attached :image

  # Active Storageの画像に対するカスタムバリデーション（必要に応じて）
  # validate :image_presence

  # private

  # def image_presence
  #   errors.add(:image, "can't be blank") unless image.attached?
  # end
end

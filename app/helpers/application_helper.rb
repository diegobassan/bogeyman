module ApplicationHelper
  def human_boolean(boolean)
    boolean ? t('bool_yes') : t('bool_no')

  end
end

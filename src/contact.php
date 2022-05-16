<?php

require($_SERVER['DOCUMENT_ROOT'] . '/config.php');

use cruds\User;

$user_cruds = new User($db);

include dirname(__FILE__) . "/header.php";
?>
 <main class="inquary_content">
                <form class="inquary_content_inner">
                    <div class="inquary_content_innerFrame">
                        <dl class="inquary_content_inner_name">
                            <dt class="inquary_content_inner_name_title">お名前 ※
                                                  </dt>
                            <dd class="inquary_contet_inner_name_enter">
                                <span class="inquary_content_inner_name_enter_box">
                                                  <input type="text" value size="40" class="inquary_content_inner_name_enter_text">
                                                </span>
                            </dd>
                        </dl>
                        <dl class="inquary_content_inner_mail">
                            <dt class="inquary_content_inner_mail_title">Email ※
                                                              </dt>
                            <dd class="inquary_contet_inner_mail_enter">
                                <span class="inquary_content_inner_mail_enter_box">
                                                    <input type="text" value size="40" class="inquary_content_inner_mail_enter_text" aria-required="true" aria-invalid="false" placeholder="※半角数字">
                                                  </span>
                            </dd>
                        </dl>
                        <dl class="inquary_content_inner_phone">
                            <dt class="inquary_content_inner_phone_title">電話番号 ※
                                                              </dt>
                            <dd class="inquary_contet_inner_phone_enter">
                                <span class="inquary_content_inner_phopne_enter_box">
                                                    <input type="text" value size="40" class="inquary_content_inner_phone_enter_text" aria-required="true" aria-invalid="false" placeholder="※半角数字">
                                                  </span>
                            </dd>
                        </dl>
                        <dl class="inquary_content_inner_college">
                            <dt class="inquary_content_inner_college_title">大学名
                                                                          </dt>
                            <dd class="inquary_contet_inner_college_enter">
                                <span class="inquary_content_inner_college_enter_box">
                                                  <input type="text" value size="40" class="inquary_content_inner_college_enter_text">
                                                </span>
                            </dd>
                        </dl>
                        <dl class="inquary_content_inner_faculty">
                            <dt class="inquary_content_inner_faculty_title">学部・学科
                                                                                      </dt>
                            <dd class="inquary_contet_inner_faculty_enter">
                                <span class="inquary_content_inner_faculty_enter_box">
                                                  <input type="text" value size="40" class="inquary_content_inner_faculty_enter_text">
                                                </span>
                            </dd>
                        </dl>
                        <dl class="inquary_content_inner_graduation">
                            <dt class="inquary_content_inner_graduation_title">卒業予定日
                                            </dt>
                            <dd class="inquary_contet_inner_graduation_enter">
                                <span class="inquary_content_inner_mail_enter_box">
                                                    <select name="inquary_content_inner_mail_enter_text" id="inquary_content_inner_mail_enter_text" class="inquary_content_inner_mail_enter_text" aria-invalid="false">
                                                      <option value="卒業予定年">卒業予定年</option>
                                                      <option value="2023年度">2023年度</option>
                                                      <option value="2024年度">2024年度</option>
                                                      <option value="2025年度">2025年度</option>
                                                      <option value="2026年度">2026年度</option>
                                                    </select>
                                                    
                                                  </span>
                            </dd>
                        </dl>
                        <dl class="inquary_content_inner_message">
                            <dt class="inquary_content_inner_message_title">メッセージ
                                                                                        </dt>
                            <dd class="inquary_contet_inner_message_enter">
                                <span class="inquary_content_inner_message_enter_box">
                                                    <textarea name="inquary_content_inner_message_enter_text" id="inquary_content_inner_message_enter_text" class="inquary_content_inner_message_enter_text" cols="40" rows="10" aria-invalid="false" placeholder="お問い合わせの内容をご記入ください。" ></textarea>
                                                   
                                                  </span>
                            </dd>
                        </dl>


                        <dl class="inquary_contet_inner_confirmation">
                            <dd class="inquary_contet_inner_confirmation_check">
                                <span inquary_content_inner_confirmaiton_inner_check_box>
                                                                   <input type="checkbox" class="inquary_content_inner_confirmation_inner_checkBox" value="プライバシーポリシーに同意します">
                                                                    <span class="inquary_content_inner_confirmation_inner_label">
                                                                      プライバシーポリシーに同意します                            
                                                                    </span>
                                </span>
                            </dd>
                            <dd class="inquary_content_inner_cofirmation_policy">
                                <span class="inquary_content_inner_confirmation_policy_text">
                                                                <p>
                                                                  &rarr;
                                                                  <a href="https://spectron.tech/jp/" class="PRIVACY">PRIVACY POLICY</a>
                                                                </p>
                                                              </span>
                            </dd>
                        </dl>
                        <p class="inquary_content_inner_submit">
                            <a href="https://spectron.tech/jp/" class="inquary_content_inner_submit_button">確認画面へ</a>
                        </p>
                    </div>
                </form>
            </main>
<?php include dirname(__FILE__) . '/footer.php' ?>
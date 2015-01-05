=begin
        public void divide_sentence_into_separate_letter(string text)
        {
          //  string text = textBox5.Text;
            for (int i = 0; i < textBox5.Text.Length - 1; i++)
            {

               // MessageBox.Show(i.ToString());
                if (text[i].ToString() == "ा")
                {
                    //मा
                    textBox6.AppendText(text[i].ToString());// textBox6.AppendText(text[i - 1].ToString() + text[i].ToString() + " ");

                }
                else if (text[i].ToString() == "ि")
                {

                    //मि
                    textBox6.AppendText(text[i].ToString());

                }
                else if (text[i].ToString() == "ी")
                {
                    //मी
                    textBox6.AppendText(text[i].ToString());

                }
                else if (text[i].ToString() == "ु")
                {
                    //मु
                    textBox6.AppendText(text[i].ToString());// textBox6.AppendText(text[i - 1].ToString() + text[i].ToString() + " ");

                }
                else if (text[i].ToString() == "ू")
                {

                    //मू
                    textBox6.AppendText(text[i].ToString());// textBox6.AppendText(text[i - 1].ToString() + text[i].ToString() + " ");

                }

                else if (text[i].ToString() == "े")
                {
                    // मे
                    textBox6.AppendText(text[i].ToString());
                }
                else if (text[i].ToString() == "ै")
                {
                    //मै
                    textBox6.AppendText(text[i].ToString());// textBox6.AppendText(text[i - 1].ToString() + text[i].ToString() + " ");
                }

                else if (text[i].ToString() == "ो")
                {
                    //मो
                    textBox6.AppendText(text[i].ToString());

                }

                else if (text[i].ToString() == "ौ")
                {
                    //मौ
                    textBox6.AppendText(text[i].ToString());// textBox6.AppendText(text[i - 1].ToString() + text[i].ToString() + " ");

                }
                else if (text[i].ToString() == "ँ")
                {
                    //  मँ

                    textBox6.AppendText("ँ");

                }
                else if (text[i].ToString() == "ं")
                {
                    //मं
                    textBox6.AppendText("ं");

                }
                else if (text[i].ToString() == "्")/////////////for aadhi aksher
                {

                    //  this field is intentionally left empty kinabhane feri / lai pani xuttai letter manera dekhauxa
                    // but hamile / lai tala use garisakeko xau so yeslai yettikai rakheko but delete garnu hudaina yo part lai

                }

                else
                {
                    ////////////////////यो line ma क ख ग घ ............. यस्तै word matra aauxa
                    ///////////////so aadha aksharko lagi yeha check garne

                    //त ् र च क्र

                    if (text[i + 1].ToString() == "्")/////////////for aadhi aksher
                    {
                        //////if text[i] ma क ख ग and text[i+1]ma ् आयो bhane yo half letter hunxa

                        if (text[i + 2].ToString() == "र")/////////////for aadhi aksher
                        {
                            //////if text[i] ma क ख ग and text[i+1]ma ् and text[i+2] ma र  आयो bhane yo क्र ख्र ग्र  hunxa
                            textBox6.AppendText(" " + text[i]+ "्र");


                            i += 2;// kinaki i+1 ma ् ra i+2 ma र छ so feri r lai check garnu hudaina

                        }
                        try
                        {
                            if (text[i - 1].ToString() == " ")
                            {
                                textBox6.AppendText(" " + text[i] +"्"+ text[i + 2]);
                                i += 3;//

                             //   MessageBox.Show("hello world");
                            }
                        }
                        catch (Exception)
                        {

                        }
                        if (text[i-1].ToString() == " ")/////////////for aadhi aksher
                        {
                            //////if text[i] ma क ख ग and text[i+1]ma ् and text[i+2] ma र  आयो bhane yo क्र ख्र ग्र  hunxa
                            textBox6.AppendText(" " + text [i] + text [i+1]);


                            i += 2;// kinaki i+1 ma ् ra i+2 ma र छ so feri r lai check garnu hudaina

                        }
                        else if (text[i + 2].ToString() == "य")/////////////for aadhi aksher
                        {
                            //////if text[i] ma क ख ग and text[i+1]ma ् and text[i+2] ma य  आयो bhane yo क्य ख्य ग्य  hunxa
                            textBox6.AppendText(" " +text[i] + "्य");


                            i += 2;// kinaki i+1 ma ् ra i+2 ma र छ so feri r lai check garnu hudaina

                        }
                        else if (text[i].ToString() == "क" && text[i+1].ToString() == "्" &&text[i+2].ToString() == "ष"  )/////////////for aadhi aksher
                        {
                            textBox6.AppendText(" " + "क्ष");


                            i += 2;// kinaki i+1 ma ् ra i+2 ma र छ so feri r lai check garnu hudaina

                        }else
                            textBox6.AppendText(text[i] + "्"); //////if text[i] ma क ख ग and text[i+1]ma ् आयो bhane yo half letter hunxa

                    }
                    else
                        textBox6.AppendText(" " + text[i].ToString());
                }







            }
        }
        /// <summary>
        /// yo method le textbox2 ma bhayeka every letter lai separate garayera list ma add garxa
        /// </summary>
        public void add_separate_letter_into_list_to_play()
        {
            string text1 = textBox6.Text + "  ";
            //  int audio_count = 0;
            for (int j = 0; j < text1.Length - 1; j++)
            {
                string temp = null;
                int m = 0;
                for (m = 0; text1[j + m].ToString() != " "; m++)
                {
                    temp += text1[j + m];
                }
                if (temp != null)
                    separated_word.Add(temp);

                if (text1[j + m].ToString() == " " && text1[j + m + 1].ToString() == " ")
                {
                    separated_word.Add("space");
                    j = j + m + 1;
                }
                else
                    j = j + m;
            }

        }

        public void text_to_speech()
        {
            #region Sound play garne part
            for (int kk = 0; kk < separated_word.Count - 1; kk++)
            {
                System.Threading.Thread.Sleep(350);
                SoundPlayer Player1 = new SoundPlayer();
                Player1.SoundLocation = @"C:\aa\" + separated_word[kk] + ".wav";
                Player1.Play();



            }
            #endregion
        }

        private void ribbonControl1_MouseEnter(object sender, MouseEventArgs e){


            //ribbonControl1.ApplicationButtonLargeIcon = new BitmapImage(new Uri(@"C:\Users\User\documents\visual studio 2010\Projects\DXApplication4\DXApplication4\Images\anuwadak_reverse.ico"));


        }

        private void ribbonControl1_MouseLeave(object sender, MouseEventArgs e)
        {
           // ribbonControl1.ApplicationButtonLargeIcon = new BitmapImage(new Uri(@"C:\Users\User\documents\visual studio 2010\Projects\DXApplication4\DXApplication4\Images\anuwadak.ico"));

        }

        private void DXRibbonWindow_Loaded_1(object sender, RoutedEventArgs e)
        {
            diagram.Series.Clear();
            chartControl1.Legend.Visibility = Visibility.Visible;
            diagram.Series.Add(realtimeSeries);


            diagram.Series.Add(matchedpatternSeries);

        }

        }


}

=end

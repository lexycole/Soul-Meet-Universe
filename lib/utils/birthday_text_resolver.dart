class BirthdayTextResolver {
  static String resolveBirthdayText(int selectedDay) {
    String bdText = '''
      A person's birthday number (born day) is one of the most important
      pieces of information about them. It includes information about
      personal characteristics, lessons learned, and weaknesses to avoid
      ''';

    String bornDayText = '';

    switch (selectedDay) {
      case 1:
        bornDayText = '''Born on the 1st
             The best part about you is that you are independent, ambitious, and
             have leadership skills. You have unconditional love and can make
             your own individual choices. You are upfront, merciful, decent, and
             honest. You can communicate clearly and accurately. You are flexible
             and can think creatively to achieve your goals. You are self-confident,
             determined, dynamic, and inventive; you find new ways to achieve
           your goals. You set your own goals and use your own creativity to
             achieve them. Your greatest strength is your own strength. 
            You are hard-working and energetic, and you have a good career
             track record. You enjoy helping others, are kind, good to work with,
             and enjoy traveling. You are connected to the world in a way that
             makes you appreciate the beauty of nature. Your character is strong.
             You have excellent management skills. You are a master of foresight.
             You hold firmly to your opinions. You dislike messiness, laziness,
             carelessness, flattery, dishonesty, and empty promises. You prefer
             your own company and dislike being dominated by others. In life, you
             can achieve great success if you combine your intellect and creativity. 
            Some weaknesses you should be aware of are that you can be
             stubborn and lazy. You can be hard to get along with because you
            think you’re better than others. You can be extremely dependent on
             other people. You can have low self-esteem or confidence. This can
             put you in a difficult situation as you tend to be impulsive, angry,
             irritable, and short-tempered, and you have a hard time
             communicating with others. 
             You are selfish, isolated, big ego, and lonely. Most time you only focus
             on yourself and your needs. You're envious and domineering. It's
             difficult for you to accept the termination of a friendship. You get 
             gloomy, pessimistic, furious, and depressed when you don't get what
             you want. You can't stand being criticized, yet you enjoy criticizing
             others. You occasionally purchase items that you cannot afford. You
             are easily swayed and have the ability to sway others. You make hasty
             decisions and take unnecessary risks. You are arrogant and prone to
             narcissistic behavior. 
        ''';
        break;

      case 2:
        bornDayText = '''
Born on the 2nd            
             You are very thoughtful and a good listener. You are faithful and
             emotional. You’re highly sensitive and you are able to understand how
             others feel, and you like to help them. You are outgoing and maintain
             close contact with your family. You’re collaborative and diplomatic.
             You are romantic and you have a creative talent. You have a warm
             and gentle character. You’re intuitive and want harmony. You love to
             give and receive. You want to have a partner or companionship
             because without one you feel alone. You can easily be silenced. When
             dealing with issues, it is essential to pursue common arrangements
             and cooperation. Some weaknesses you should be aware of are that you can be
             oversensitive and vulnerable, bitter, often blame others, manipulate
             others, argumentative, and may emotionally blackmail others. You are
             codependent (can be dependent on others instead of yourself). You
             should avoid distrust, fear, and disharmony. You may lack courage,
             ambition, and hesitation. You lean towards the accumulation of wealth.
             You often do not finish what you start or your work. You get angry and
             explode at times. You may have confidence issues where you focus
             on the negative.      
        ''';
        break;

      case 3:
        bornDayText = ''' Born on the 3rd
            You are social, charming, and have a friendly character. You're a
             gifted artist who knows how to express yourself. You enjoy traveling,
             dressing up, meeting new people, and having a large number of
             friends. You are sincere, inventive, and have a lot of ideas. You are
             not scared of other people. You want to be independent in a romantic
             relationship. It's critical that you find a socially active partner. 
             You are fearless, active, dependable, and forward-thinking. You want
             to make an impression and achieve success. In love, you've struck it
             rich. Before you act, you normally give it a lot of thought. You should
             not waste your energy since it is necessary to be pleasant and to
             accept life as it is. You should devote enough time to your partner and
             kids. You should aim to be more adaptable and interested in all
             prospects rather than dismissing them right away. 
             Some weaknesses you should be aware of are that you should avoid
             disparaging others and being shallow. You're a risk-taker with a big
             vision. You are jealous, hot-tempered, and arrogant. You point fingers
             at others, accuse them of wrongdoing, and play with their emotions.
             You are easily offended and oversensitive, easily distracted, and
             anxious. You create unneeded talk/argument and have dictatorial
             tendencies, especially at home. You should try to focus on things that
            are important rather than the little ones, and try to control your temper.
        ''';
        break;

      case 4:
        bornDayText = '''
Born on the 4th
             You’re practical, balanced, reliable, focused, warm, generous,
             compassionate, decisive, systematic, patient, loyal, grounded,
             responsible, and you work hard to attain security and stability. You try
             to build everything on solid ground. You do not like to waste or spend
             money. You want a stable romantic relationship and comfortable home
             life. 
             Some weaknesses you should be aware of are that you may lose your
             temperament or courage easily. You are often aggressive and rude.
             You constantly criticize everything and you are selfish. You should
             avoid making quick decisions and being depressed. You can be rigid
             at times and put in so much effort or work that you don't enjoy your life
          ''';
        break;

      case 5:
        bornDayText = '''
Born on the 5th
             You're an explorer who is open, principled, courageous, active,
             sensitive, shallow, and has a strong desire to see the world and have
             new experiences all the time. You enjoy freedom and adapt well to
             change. You prefer to be in charge of your own destiny. You enjoy
             advancement and require sufficient space for your hobbies. You enjoy
             variety, and nothing is ever the same for you. 
             People are drawn to you because you are charming, pleasant,
             articulate, joyful, and quick-witted. You are a risk-taker who thinks
            logically and enjoys interacting with others. You are always in a rush
             and enjoy traveling. You take care of your beauty and your health. You
             enjoy accomplishment and being recognized. You're fascinated by
             new concepts and how they work. 
             Some weaknesses you should be aware of are that you are phobic
             and withdrawn, moody, irritable, and argumentative. In relationships,
           you're more likely to be a cheater, liar, or deceiver. When you're upset,
             you might become unstable, rude, and unpleasant, and you can force
             your beliefs on others. You're a nervous person who gets stressed
             easily. You can be tough to pin down, indulgent, impulsive, and prone
             to getting into mischie 
          ''';
        break;

      case 6:
        bornDayText = '''
Born on the 6th        
             You're a nurturer who is thoughtful, compassionate, sensitive, naïve,
             and resourceful when it comes to your home life. You may be an artist,
             a healer, and an outstanding mediator while also devoting your time
             and energy to your loved ones. You require affection and the comforts
             of home. You go to great lengths to attain harmony. You want to be
             with someone for the rest of your life and you adore your family and
             other people. You must schedule time for yourself as well as others. 
             You may have positive connections with your parents, children, and
             friends, as well as a large number of networks. You want to feel like
             you belong and that you have a place in the world. You are both fair
             and astute. You have a soft demeanor and a lovely, warm tone to your
             speech. You are dedicated and passionate. You see sex as a natural
             aspect of a relationship that brings it full circle. You enjoy elegance
             and beauty, and you are artistically gifted. You place a premium on
             teamwork. You like being in the presence of attractive individuals.
             You're what's known as a "homebody." You could be having trouble
             finding a mate or looking for reasons to split up with your current. You
             may lack self-assurance. You may forfeit your dignity in order to keep
             harmony in your romantic bond. 
             Some weaknesses you should be aware of are your proclivity for
             laziness and compulsive behavior. You're continually rushing about
             and bursting at the seams with emotions or feelings. You seek out
             revenge. You are prone to substance abuse, including drugs, alcohol,
             and other substances. Extramarital affairs may be both stressful and
             risky. You just care about yourself. You are selfish and may harass
             others. For example, at work, you may request gifts in exchange for a
             favor. Allow praises to go to your head since you don't handle criticism
             well. You can sacrifice too much of yourself and your well-being for
             others
          ''';
        break;

      case 7:
        bornDayText = '''
Born on the 7th           
             You have a really developed mind. You're an analytical thinker with a
             sharp mind. It's your tool for learning about the world and everything it
             has to offer. You have a philosophical and spiritual bent on your
             personality. You're not hesitant to ask big questions or delve further
             into issues, and you have the ability to master anything. You have the
             ability to hear what your inner voice is saying. In your life, you require
             a companion or mate. You frequently have spiritual beliefs and are
             concerned about the environment. You may find yourself becoming an
             activist and like assisting people. 
             You have faith in yourself, nature, people, and life. You are constantly
             confronted with obstacles, and these challenges are the driving force
             behind your personal development. You have an excellent skill to
             assess situations. You've carefully chosen your words. Kind, social,
             pleasant, lovely, romantic, sensitive, creative, good speakers,
             insightful, and sentimental are words that describe you. You want to
             do everything on your own and don't want to listen to advice or
             warnings from people who have been through it before. Fools,
             hypocrites, and dishonesty are all things you despise. You're
             interested in keeping things a secret and you don't just take someone's
             advice. 
            Some weaknesses you should be aware of are that you can be
             reckless, anxious, and extravagant. You are often naive when it comes
             to your relationships since you do not see your partner realistically.
             You have a tendency for drug and alcohol addiction. You like to use
             intrigues that may lead to the destruction of other people. You are
             restless and distraught. You like to use other people. You do not
             forgive. You change your opinions very often. You unnecessarily
             waste your energy and time. You realize your plans without thinking
             about them thoroughly. You have no respect for the work of others.
             You have agonizing feelings and you are ignorant of other people´s
             feelings. You don’t like expressing your feelings, can be stubborn,
             cold, calculating, and you isolate yourself or became aloof.
          ''';
        break;

      case 8:
        bornDayText = '''
Born on the 8th           
            You're a natural leader who knows how to manage people and
            projects, and you're an expert in business and finance. You have a lot
             of energy, a vivid imagination, a strong will, and leadership potential.
             You are smart, competitive, self-assured, and efficient, as well as
             quick-witted, ambitious, and entrepreneurial. You are a dedicated
             worker who is patient, adaptive, fast, truthful, and serious. You can
             make solid character judgments and are realistic. If you want to attain
             your dream, you are ready to endure a variety of challenges, and you
            treat every work seriously. In your life, success, rewards, money, and
             social standing all play vital roles. You want to have a lot of money and
             wealth. Your strength, energy, and power will always have to be
             balanced with money and feeling, pride, romance, and intellect. 
             Some weaknesses you should be aware of are that you don't forget
             when you've been treated unfairly by others. You may be overly
             controlling, lack empathy, and have trouble collaborating with others.
             When it comes to dealing with challenging situations and combating
             enemies, you are tenacious and stubborn. You can be selfish,
             boastful, intolerant, and misuse or abuse your power, position, and
             money in many ways. You are self-centered and lack understanding of
             others. You like using, humiliating, and deceiving others. You are a
             person who will go around and have various romantic affairs and
             experiences. You desire to gain special treatment at the cost of others.
           You are a manipulative, revengeful person who does not play fair or by
             the rules. You have a gloomy personality and a poor sense of humor.
             When you're upset, you have a tendency to damage everything
             around you. Passivity, alcohol, and substance abuse (drugs) are all
             things you're prone to. Bad memories and a terrible past are
             always troubling you. You circulate rumors and are often belligerent,
             forceful, bossy, obstinate, aggressive, and terrorizing other people.
             Understand that others may perceive you as a bully or a narcissist.
            
          ''';
        break;

      case 9:
        bornDayText = '''
Born on the 9th 
You're welcoming to everybody, eager to serve the common good, and
             aware of human suffering. You may be charismatic, empathetic, and
             trustworthy while yet seeing the broader picture. Only after thorough
             consideration will you speak the truth. You are capable of accepting
             yourself as you are. You aspire to be a hero. You're looking for a
             greater purpose in life. You are bold, ambitious, creative, spiritual,
             forgiving, strong, open, honest, and self-reliant. 
             You have the ability to deal with challenging conditions. You put forth a
             lot of effort. You are a responsible person who enjoys a sense of
             honor and pride. To earn admiration and compassion, you invest a
             great deal of energy. You have strong organizational skills and are
             always working hard to reach your objectives. You enjoy new
             experiences and acquiring knowledge. You should look for a mate that
             has the same interests. You're either perfectionist, modest, or timid.
             Because you feel that quick and drastic answers are the better, you do
             not postpone and deal with issues promptly. You are fussy and have a
             proclivity toward overspending. You take things far too personally and
             are overly worried. 
             Some weaknesses you should be aware of are that you may find it
             difficult to let go of resentments and anger for an extended period of
             time. You have a strong fear of everything. Because you are impatient
             and easily provoked, it is difficult for others to get along with you. It's
             tough for you to maintain self-control and your temper. You're
             aggressive, impulsive, and even harsh at times. You take unneeded
             chances in your relationship or marriage, which leads to tension. You
             have a sour attitude toward your colleagues, friends, and business
            partners. You are conceited and quickly enraged. Inner worry,
             narcotics, a sense of superiority, and dishonesty should all be avoided.
             You are a closed-minded and intolerant individual. You judge people
            and search for weaknesses in them. You could be snobs, and
            you could make harsh remarks. You have a tendency to end things easily.          
          ''';
        break;

      case 10:
        bornDayText = '''
Born on the 10th 
             You're a driven individual who can achieve everything you set your
             mind to if you stick with it. You have a talent for developing plans and
             a strong will to achieve. You have a high level of emotional strength.
             You are self-sufficient, creative, self-reliant, compassionate, proud,
             industrious, truthful, and self-assured. You keep your personal
             information private. If you put forth the effort, you can succeed.
             You have natural leadership ability. 
             You have a gift for pursuing your passions and objectives. You are a
             high-energy person who is committed to your job. You have a small
             group of close acquaintances. You don't experience mood swings.
             You prefer to think of yourself as a one-of-a-kind individual. It's crucial
             not to get too focused on one large objective and lose sight of other,
             maybe even more essential ambitions. You're occasionally hesitant to
             follow through on your goals. You try to stay away from routine. 
             Some weaknesses you should be aware of are that you have the
             option to reserve and withdraw. You have the option of temporarily
             abandoning your family. You are difficult to comprehend. You can
             become quite dependent on others and sedatives. You are stubborn,
             which produces conflict in your relationships. You may have a sense
             of superiority. Be wary of squabbles and alcohol. You are competitive,
             envious, jealous, inflexible, and you have trouble sticking to a
             schedule.  
          ''';
        break;

      case 11:
        bornDayText = '''
  Born on the 11th 
             You are very intuitive, diplomatic, sensitive, inspiring, and possess
             healing skills. You're curious about the spiritual journey. You are a
             charming perfectionist who enjoys daydreaming. You have innovative
             ideas and a commanding demeanor. You like to make choices as a
             group and dislike revealing your feelings. You do not unintentionally do
             harm to others. It's critical to strike a healthy balance between sharing
             and exchanging. Peace is most important at home. Every day, you
             must relax. You bite your nails and massage your hands at times.
             You're an optimist who daydreams about what people and the world
             could be like if they tried hard enough. 
             Some weaknesses you should be aware of are that you find it difficult
             to focus on routine activities and details, yet you lack the confidence to
             follow your aspirations. You're stubborn, unpleasant, self-centered,
             fragile, and irritated. It's possible that there will be misunderstandings.
             You frequently find yourself in a situation of confusion. You can 
             sometimes be reliant on others. You're angry, selfish, and prone to
             temper tantrums. You can be conceited and attempt to manipulate or
             interrogate people.
          ''';
        break;

      case 12:
        bornDayText = '''
Born on the 12th 
             You're a creative individual who expresses yourself in unique ways.
             You're amusing and pleasant, as well as intelligent, energetic, and
             social. You're outgoing, curious, upbeat, self-sufficient, brilliant, goaloriented, adaptable, and inventive. You enjoy going on adventures and
             seeing new locations. You are a family-oriented person who is
             adaptable, professionally efficient, bright, well-liked, and gorgeous.
             You have the potential to thrive in a variety of areas. You like life,
             cooking, festivals, and gatherings. You'll need a mate who isn't
             troubled by anything. You are very demanding. You despise it when
             others tell you that you won't be able to achieve your goals. In your
             life, there may be a lot of confusion and disorder. You keep your
             personal information private. 
             You should be conscious that you have a tendency to let your
             emotions get the best of you at times. You're impulsive, nervous, and
             uptight. Your decision-making process is disorganized, and you make
             decisions at the last minute. You might be apathetic, close, or
             obstinate. You're conceited, jealous, stubborn, and possessive, and
             you're filled with rage, vengefulness, and violent emotions. You also
             search for flaws in others. You need to remember to keep focus so
             that you don't become scattered
          ''';
        break;

      case 13:
        bornDayText = '''
      Born on the 13th 
             You're a sensible, grounded person who is at one with nature and is a
             great planner. You are self-disciplined and diligent in your job. You are
             self-sufficient, driven, loyal, dependable, adaptable, creative, active,
             open, practical, and responsible. You're devoted to your mate. You put
             forth a lot of effort to achieve financial stability. You're always on the
             lookout for new possibilities and objectives. You're a natural leader
             who enjoys taking on responsibilities. Your job becomes a pastime.
             You have the ability to motivate people and create a welcoming
             environment. You can be so realistic and balanced that you ignore
             your aspirations and let your gifts waste away. 
             You are vulnerable, easily manipulated by others, and lack selfassurance. Routine and monotonous tasks should be avoided.
             You have a short temper and often feel ineffective. You are quickly
             insulted and easily irritated. You have the tendency to say unpleasant
             things, to erupt in rage and conflict, to be confused in life, and to have
             extreme opinions. You either adore or despise a person. You strive to
             get your way without making an effort to establish a middle ground. 
             You take risks that are needless. Food, drink, narcotics, sex,
             medications, and other substances can cause dependency. You have
           the ability to instigate fights, arguments, and create situations.

          ''';
        break;

      case 14:
        bornDayText = '''
Born on the 14th         
             You're a sociable individual who is always on the lookout for new
             experiences and adventures. You're imaginative, like interacting with
             others, embracing change, and living your own life your own. You'll
             need a secure home and solid work. You can generate money if you
             work hard. You have a talent for trade and business. You are
             thoughtful, attentive, dependable, ambitious, tenacious, and full of
             ideas, as well as self-sufficient, responsible, charming, and flexible.
            You are an extremely busy person who takes on large initiatives. You
             are pleasant to be around, smart, and quick to react. You could have
             an artistic skills and be spiritual and pious at times. You think rapidly,
             and you communicate swiftly as well. You want to take advantage of
             any opportunity that comes your way. You may choose to
             communicate with signs or numerals on occasion. 
             You might make too many changes at times, lack confidence, be
             nervous, and fail in seeing things through to completion. You dislike it
             when others give you advice. You choose to preserve your old habits
             even when they are no longer helpful. Irresponsibility and
             laziness should be avoided at all costs. You may try to dodge troubles
             at times. You fantasize about having a lot of money and assets. You
             have a short temper, a bad attitude, and are impulsive. You have a
             hard time forgetting mistreatment and wrongdoings. When difficulties
             arise, you want to make improvements as soon as possible. It's
             possible that you'll become bossy at times. You may undervalue
             situations, plan improperly, or make inaccurate assumptions at times.
             You should cautiously choose your friends. You waste valuable
             opportunities. You fabricate stories and cause issues for yourself and
             people. You are hot-headed and susceptible to alcohol and narcotics. 
            
          ''';
        break;

      case 15:
        bornDayText = '''
Born on the 15th 
             You're a creative person who wants a stable home life as well as the
             opportunity to explore your artistic goals. You want a life companion
             and must commit yourself to others. You are observant, sensitive, selfsufficient, ambitious, active, energetic, courageous, proud, industrious,
             inventive, compassionate, and kind. 
             For you, family is everything, and you don't always hold back when
             expressing yourself. You enjoy money, fame, and luxury, and you
             desire to increase your wealth. You enjoy living a free and unrestricted
             life as well. You are outgoing and amusing, and you value beauty. You
             would like to experience anything, but you also want to protect your          
          ''';
        break;

      case 16:
        bornDayText = '''
Born on the 16th          
             You're a spiritual and intelligent individual who wants to learn more
             about how things function and is intuitive but practical in your
             approach. You have a strong sense of what is correct and incorrect in
             life. You are a fighter against injustice and a keen observer. You are
             gentle and pleasant, and you have a sense of harmony. You make an
             effort to be kind to others and to comprehend their requirements. You
             are capable of doing everything for an extended period of time and
             want to have an independent spouse. You possess a healing talent
             and are capable of self-healing. 
             You are spiritually oriented and may have a proclivity for prophetic
             visions. You believe that helping others is the goal of life, and you are
             sympathetic, a good listener, driven, sociable, dependable, and think
             analytically. You have a powerful character and rely on intuition to
             accomplish your objectives. You despise authoritarians and
             occasionally live in delusions. You want to experience everything, and
             you might get overly attached to your family or relatives at times. You
             have a tendency to be self-centered, and you should value what you
             have. Spending extra time with your partner is a good idea since you
             have a tendency to be distant yourself. 
             You may become emotionally cold and aloof, calculating, prone to
             provoking others, living in the clouds, unwilling to accept other
             people's viewpoints, and lacking the focus to complete tasks. You
             despise rules and limitations. Uncertainty, misunderstandings, and
             mental strain plague you. You're distrustful and concerned about
             losing your position. You find failure difficult to accept, and your life
             might be full of twists and turns. You are conceited, and as a result,
             you lose touch with reality and lack assertiveness. You are
             overly sensitive and somewhat sluggish. You're full of rage, emotional
             instability, and intrusions into other people's life. May have narcissistic traits.
            
          ''';
        break;

      case 17:
        bornDayText = '''
Born on the 17th 
             You are a leader who is powerful, fearless, sensitive, ambitious,
             sociable, perceptive, efficient, quick-witted, driven, and diligent. You're
             smart at evaluating others, excellent at managing people and have the
             potential to thrive in business. You've set huge objectives for yourself
             and want to prove to the world what you're capable of. It's possible that
             you have the capacity to heal people. You can think clearly and for
             extended periods of time and you have strong logical reasoning skills. 
             You are materialistic, and you will achieve success and wealth later in
             life. You have the capacity to put your plans into action. You have a
             strong faith in life and are not afraid of anything. You look for unusual
             solutions to challenges. You like taking on new duties. You place a
             high value on romantic relationships. Only family members or
             extremely close friends should be considered while choosing friends.
             You should refrain from influencing people because you lack selfconfidence. Either you're in command or others command you. 
             You might be overbearing and self-centered, brutally competitive,
             moody and impatient, arrogant, egoistic, intrusive, inflexible, and
             domineering, and hoard whatever you obtain. You're prone to
             emotional outbursts and scenarios that are overly dramatic. You may
             be conceited at times. It's tough to cohabit with you, and your attitude
             might cause internal conflict. You are solely concerned about yourself.
             You can't abide being opposed. You might get obsessed with riches
             and success. You climb quickly and then crash, and you're frightened
             of failing.
          ''';
        break;

      case 18:
        bornDayText = '''
Born on the 18th 
             You're a humanitarian who is open to everyone and wants to travel the
             globe. You may be artistic later in life and emerge into your own. You
             are a powerful, competent, ruminative, clever, kind, and protective
             individual. Higher sources of inspiration are available. You may have a
             philosophical, genuine, and ethical nature, and you are capable of
             dealing with challenging situations. You are materialists who do all in
             your power to make money. 
             You want to be seen and are intelligent and ambitious. You're
             organized, have a strong will, and enjoy trying new things. You have
             strong ideas and a strong desire to be correct. You dislike bragging
             about your possessions, riches, power, achievement, or social
             standing. You're interested in what people have to say concerning you.
             You want to learn just about everything there is known about your
             spouse. You should avoid criticizing people and instead strive to
             comprehend them. 
             You can keep grudges for a long time and suffer more than the
             average person from emotions of rage and resentment. You're rash,
             crazed, envious, spiteful, cruel, prejudiced, authoritarian, aggressive,
             impatient, and sensitive. You have internal conflicts and tensions. You
             have a hyperactive mind and a melodramatic streak. Health issues
             resulting from an energy deficit. Your life is full of turmoil, and your
             unstable energy impacts negatively on all of your relationships and
             marriages. You could be obnoxious and harsh. Karma exists in your
             life, mostly in the area of acknowledgment. You are critical and
             skeptical in your outlook on life.
            
          ''';
        break;

      case 19:
        bornDayText = '''
Born on the 19th
             You're ambitious, charming, self-assured, intelligent, independent, and
             a diligent worker who is eager to break new ground. You are a strong,
             energizing, smart, adoring, insightful, and sympathetic individual. You
             have a lot of patience and are eager to satisfy people. You are
             dedicated to loving relationships. You want to know your spouse and
             are giving, and you want to defend your family always. 
            You are well-liked, respected, accomplished, and wealthy, with a
             good-paid job sometimes. You are, in a sense, a pioneer in your
             profession. You are resourceful, imaginative, and direct in your
             approach to attaining your objectives. You want a great social rank
             and strive hard to attain it. You have faith in yourself and are a loner at
             times. You stick to your beliefs and high expectations. You are
             passionate about achieving your goals. 
             You want independence above all else, but you also need to know
             how to collaborate with others and achieve things that benefit mankind
             as a whole. You're imbalanced and temperamental, and you're difficult
             to comprehend. You believe you are superior and special. You're
             obstinate, moody, volatile, dictatorial, anxious, filled with anger and
             self-pity, nervous, jealous, and irrational. You have a tendency to
             criticize others and you lack self-assurance.
            
          ''';
        break;

      case 20:
        bornDayText = '''
Born on the 20th
             You are empathetic, patient, tolerant, intuitive, humble, loyal, and
             compassionate. Your spouse is very significant to you, and you
             value love life. You need love, kindness, and harmony, and you can't
             stand being alone. You're sensitive to other people's ideas and
             feelings, and you recognize the small things. You enjoy being the one
             in charge of the background operations. You are cautious, open, kind,
             and considerate, and you enjoy collaborating with others. Since you're
             striving to achieve an agreement, you're excellent at settling conflicts.
             You have a distinct approach toward other people. 
             You may be vulnerable to ruthlessness and find it difficult to defend
             yourself. You're moody, impatient, worried, afraid, manipulative,
             fragile, and irritated. Stress should be avoided since it might lead to
             health issues. You have a habit of changing your mind and it's
             possible that you'll lose control. Emotional conflicts and reactions
             should be avoided. You are indecisive and have a lot of unhappiness
             in your life. You have a sour disposition.
          ''';
        break;

      case 21:
        bornDayText = '''
  Born on the 21st
             You're social, attractive, sensitive, understanding, compassionate,
             diplomatic, accepting, and creative. Your intellect works quickly, and
             you have a lively, upbeat demeanor. You've got a lot of promise. You
             are resourceful and capable of a wide range of tasks. In your romantic
             interactions, you are thoughtful and sensitive. You value conversation
             and are outspoken, so your career is a wonderful fit for you. You are
             instinct-driven, and you are a realist with an optimistic outlook on life.
             You enjoy new challenges and achievements. You like working with
             people. You attach to your relatives at times. You put so much effort
             into helping others satisfy their needs that you neglect your own. You
             have a lack of self-assurance. 
             You have trouble focusing on anything for lengthy periods of time, are
             prone to wasting your abilities, and exude nervous energy. Your words
             have the ability to harm others. You're confrontational, angry, irritable,
             greedy, impatient, worried, hot-tempered, and frustrated. Superiority,
             conflict, and shifting moods and emotions should all be avoided.
         
          ''';
        break;

      case 22:
        bornDayText = '''
Born on the 22nd          
             You're a master builder, a visionary, and a hard-working person. You
             have huge dreams, but you're also practical enough to find out how to
             make them a reality. You want your dreams to come true. You were
             born to make a meaningful contribution to society. You are
             responsible, dependable, harmonious, caring, generous, empathetic,
             and compassionate. You are methodical and organizationally skilled,
             as well as practical and comprehensive. 
             You make realistic judgments with ease. You're a hard worker who
             gets the job done quickly and accurately. You can have a great deal of
             success in politics. Your family's financial security and household are
             crucial to you. You prefer routine tasks. You have a proclivity toward
             accumulating financial wealth above emotional prosperity. You could 
             develop a workaholic personality. You despise emotional conflict. You
             may be unable to receive gifts at times. You require a stable life. 
             Fear of failure may limit your progress, and a loss of faith can indeed
             be your downfall. You are strong and stubborn, and you may be
             having marital issues. You may feel a feeling of unfairness from time
             to time. Be wary of mood swings. You're concerned about your
             capacity to meet your fundamental necessities. You are lacking in
             confidence. You're vulnerable, manipulative, irritable, unfair, impatient,
             and cruel. You are unconcerned with the needs of others.
          ''';
        break;

      case 23:
        bornDayText = '''
Born on the 23rd            
             You're a positive person who enjoys change and wants to live life to
             the fullest. You have the ability to adapt to whatever unfolds. You
             make decisions independently and cannot be swayed. You are the
             master of your own destiny. You appear to seek freedom at times, but
             you really need a mate. You are a sensitive, soft, funny, daydreamer,
             childlike, intellectual, understanding, quick-witted, and outgoing
             person, a loving, sincere, open, practical, expressive person who
             wants to be loved. 
             You are a hard worker, and you rarely have work-related issues.
             You're a good businessperson. You're well-liked and popular. It's
             possible that you'll develop exceptional powers. You want your ideas
             to come true. You are thoughtful and have a strong memory. You seek
             independence because you are self-confident. You have a tendency to
             be unorganized. You must prevent being exhausted. You keep your
             real feelings hidden. 
             You can be careless at times, overindulge, and live a life without
             discipline and order. You have a complicated personality and may be
             difficult to comprehend at times. When things don't go as planned, it's
             frustrating to deal with you. You may live without a romantic partner if
             you fail to establish harmony. You have the ability to be harsh, selfish,
             temperamental, insensitive, moody, hot-temped, and irritable. You
             avoid taking on responsibilities, and you are easily sidetracked,
             unbalanced, exaggerating, and lying, and you frequently go from one
             partnership to the next.
          ''';
        break;

      case 24:
        bornDayText = '''
          Born on the 24th 
             You're a compassionate, generous person who wants to live a
             peaceful life with your family. You enjoy assisting others. You are kind,
             helpful, artistic, caring, as well as sensitive, gentle, generous,
             methodical, efficient, industrious, and productive. You are
             also systematic and practical in your approach. You like beauty and
             harmony, and you place a high value on family life. You have a strong
             work ethic, and you are well-organized. 
             You have a nice heart and go out of your way to serve people. You are
             skilled negotiators and attempt to achieve an understanding with
             others. You could be musically gifted. You are certain that everything
             will be completed on time. You have a proclivity to put off solving an
             issue. You take your time making judgments and consider the issue
             thoroughly before making a conclusion. You take your responsibilities
             far too carefully. You can be reliant on others. You value your wellbeing, a prominent career, and other comparable things. 
             You may be theatrical, vulnerable, and unrealistic by sticking your
             nose where it doesn't belong. You're secretive, lazy, temperamental,
             irritated, passive, oversensitive, hasty, moody, and insecure. You may
             face disappointment and deception. You avoid working under
             pressure, sadness, emotional explosion, and depression.
          ''';
        break;

      case 25:
        bornDayText = '''
Born on the 25th      
             You're intuitive and may be directed by it; you're a lifelong learner who
             wants to understand everything there is to know. You're spiritual,
             perceptive, social, practical, patient, attractive, and kind. You're also
             sensitive, analytical, artistic, intellectual, modest, humble, creative,
             entertaining, good listeners, insightful, and sociable. In your life, you
             require a sympathetic companion. You have a lot of talent and
             imagination. Marriage has the potential to make you rich. You enjoy
            communicating and you can think logically and analytically. You have
             a keen eye for detail and the ability to seize chances. 
             You can lose yourself in your thoughts, ignore your feelings, or turn
             critical. You require peace, and you should make every effort to
             accommodate. In life, you should avoid becoming confused. Your
             reactions might be surprising and unpredictable at times. You have a
             strong desire to try everything. You like delaying tasks that must be
             completed immediately. You're impulsive and emotionally unstable. 
             You are unable to deal with stressful conditions in your romantic life
             and you suffer from depression. You may have a rough
             upbringing. You're moody, selfish, distracted, overly concerned,
             unstable, angry, ambiguous, constant worried, hypersensitive,
             impatient, and your feelings are frequently hurt. You may be terrified of
             change at times. You might become completely dependent on another
             individual instead of yourself. You are only concerned and care about
             yourself. 
          ''';
        break;

      case 26:
        bornDayText = '''
Born on the 26th
             You're gifted in business and financial things, good at seeing a
             broader view, dependable, and proud of your accomplishments. You're
            a powerful and realistic person. You are sensitive, gentle, kind,
             responsive, polite, open, and available. You are also self-sufficient,
             business-minded, ambitious, generous, hardworking, persistent,
             successful, and understanding. You have the tremendous inner power
             to conquer challenges. You're organized and capable of leading
             others. You have excellent judgment and will pick up on everything. 
             You are quick-witted, brilliant, and capable of doing anything. You are
             able to keep your personal life distinct from your professional life. Later
             in life, you will acquire achievement and good social standing. You like
             helpful to others and like resolving other people's issues. You have
             diplomatic skills and the ability to motivate people. You value your
             friendships and job, and you may even achieve notoriety or
             become famous. You may attain success by putting forth a lot of effort. 
             It is possible to be materialistic, uncaring about others, lacking in
             respect, and take advantage of the weak. You're sometimes insecure
             and reliant on others at times. You are very anxious and fascinated
             with your sentiments, and you take everything extremely seriously.
             Because you may have difficulties in your romantic relationships, it is
             critical that you carefully select a compatible supportive, and
             understanding partner. 
             You are greedy, selfish, exploit others, do not play fair or by the rules,
             arrogant, stubborn, cruel, revengeful, inflated ego, oversensitive,
             intolerant, forceful, moody, aggressive, prideful, mentally stress, and
             exaggerate oneself. You despise those who harm you, and you annoy
             others. In management roles, you are especially insufferable and
             narrow-minded. Therefore, maintaining a sense of balance in your life
             is essential.      
          ''';
        break;

      case 27:
        bornDayText = '''
 Born on the 27th
             You're an artist with a broad perspective on the world and the ability to
             lead others. You're a humanitarian and a kind person who succeeds
             later in life. You are sensitive, perceptive, emotional, honest,
             pragmatic, entrepreneurial, conservative, intelligent, quick-witted, and
             intuitive. You are not affected or care by new trends. You shun
             superficial connections and place a high value on romantic
             partnerships. 
             You have the ability to put your goals and ideas into action. You could
             strike it rich. You strive to learn about the life, and you try to figure out
             what life is all about. You make decisions after giving them a lot of
             thought. When you are outdoors or in nature, you feel fantastic. You 
             enjoy assisting others and are committed to your relatives. Your house
             has a significant impact on your life. 
             You can carry on to baggage for far too long and continue to work on
             something that is no longer relevant. You have a strong sense of
             sadness and disappointment and are sensitive to a variety of
             situations. You're prone to delusions and take things far too seriously.
             You're naïve, you're torturing yourself, and you believe you're
             worthless. You have a proclivity towards self-destruction. Drug and
             alcohol addiction, mental breakdowns, anxiety, and suicide attempts
             should all be avoided. You're domineering, indecisive, temperamental,
             insecure, closed, moody, vulnerable, and you're quick to criticize
             others.    
          ''';
        break;

      case 28:
        bornDayText = '''
Born on the 28th
             You're a natural-born leader who also knows how to collaborate with
             others. You can persuade others to join your cause without becoming
             overpowering. You're determined to achieve and are ambitious,
             energetic, independent, pioneering, kind, loving, warm, and
             compassionate. You are led by your emotions first, and later by logic.
             The importance of romantic relationships and familial bonds cannot be
             overstated. You've got a good sense of comedy. 
             You prefer to have complete control over your surroundings and make
             your own decisions. You vigorously protect your rights and prefer to do
             things alone rather than rely on others. You have a large number of
             acquaintances and contacts. You like teamwork and are a motivator
             for others. You're interested in all things contemporary and modern,
             and you're a natural entrepreneur. You are brilliant, fast to make
             judgments, honest, open, forthright, and intellectual. 
             You might be stubborn, arrogant, passive, insensitive, stubborn,
             impulsive, irritable, argumentative, aggressive, domineering, lonely,
             angry, spiteful, vulnerable, guarded, hypersensitive, explosive,
             unpleasant, and inflexible because you have problems seeing things
             through. Normally, you are unable to be restrained or compelled to do
             anything, and you have reservations about your skills. You have a bad
             impact on others. You have authoritarian inclinations, insulting and
             controlling others.
          ''';
        break;

      case 29:
        bornDayText = '''
Born on the 29th
             You're a spiritual, intellectual, and intuitive person who is in tune with
             the planet. You are hardworking, persistent, creative, sympathetic,
             healer, sociable, sensitive, and insightful. You have a lot of
             extrasensory awareness capacity, as well as the ability to uncover
             truth and knowledge. Spiritual activity is highly essential to you, and 
             you have good thinking processes. It's possible that you'll become
             wealthy and financially comfortable. You're a thinker with a keen sense
             of intuition. You are honest and rational in your reasoning. You readily
             make friends, and you are charming, intelligent, and talkative. You
             frequently encourage and motivate others to be artistic. 
             You're easily hurt, insecure in yourself, prone to poor moods, and
             fearful of your own life's mission. Boredom should be avoided at all
             costs. Your romantic relationships are in a state of turmoil. You find it
             difficult to express your emotions. You put a lot of pressure on other
           people. You are insecure, lonely, irritable, hot-tempered, cunning,
             meticulous, quarrels, emotional outbursts, disappointments,
             vulnerable, eccentric, closed, and secretive. There is a risk of
             dangerous misinterpretation. You'd rather use drugs and booze to
             numb your feelings than seek answers. Your instability is a source of
             marital strife. You may be thoughtless and inconsiderate with others
             because you are terrified of losing your worldly possessions.
          ''';
        break;

      case 30:
        bornDayText = '''
Born on the 30th
             You're an artist, a sociable, and a creative person. You're pleasant and
             energetic, and people like spending time with you. You have a smart
             mind and a fantastic fertile imagination. You consider the situation first,
             then come to a conclusion. You have a lot of unconventional ideas
             about life. You're resourceful, charming, warm, pleasant, witty,
             sociable, lively, active, flexible, and inventive. In your love relationship,
             communication is crucial. You can put forth a lot of effort to live a
             pleasant life. You do a lot of things at the same time. You have a
             unique philosophical perspective. You have a tendency to assist
             individuals who are in need. You tend to sleep a lot or sleep early. 
             Your emotions can swing wildly, you may lack direction, hence wasting
             your abilities, and you may struggle to focus on the overall
             perspective. You don't generally accept failure, and you can't stand
             mediocrity. You have a proclivity for manipulating people, being
             insensitive, shallow, easily distracted, gossiping, blaming others,
             jealously, lack ambition, quarrels, disputes, life turmoil, being messy,
             lethargic, and having a sexual imbalance. 
             Everything is enjoyable for you, and you enjoy being the center of
             attention. You are also quirky. You search for flaws in others.
             Sometimes you squander your energy foolishly and don't finish what
             you started. You have a lack of self-assurance. You criticize people
             and make them feel bad about themselves. You may make use of your
             good characteristics to get what you desire out of life. You have a
             multifaceted personality that makes it challenging to comprehend and
             communicate with you. You have a calculated attitude and a cutting
             tongue.
          ''';
        break;

      case 31:
        bornDayText = '''
Born on the 31st          
             You're committed to your family, your community, and building a solid
             foundation. You're logical, methodical, disciplined, and creative. You
             are also clever, honest, generous, kind, sociable, pleasant, faithful,
             thoughtful, discreet, and eager to go to any length to attain success.
             You like companionship and interacting with smart people, and you
             value communication. You are devoted to your family and like social
             gatherings. You are indeed brave and possess leadership qualities. 
             You can overwork yourself, fail to live life to the fullest and fail to
             listen. You're generally in the opposing camp. You require safety. You
             at times forsake your ambitions and you do not complete what you
             have begun. You may believe that others must operate in the same
             manner as you. You're a superficial, bossy, and reckless person. You
             have the capacity to lie and cheat, as well as the potential to defraud
             others.
             You are sarcastic, closed, spiteful, domineering, and like making fun of
             people. People who are unable to protect themselves may be used by
             you. You may experience abrupt and unexpected changes. You may
             become timid and antisocial as a result of misconceptions and
             loneliness. You may have a sense of superiority or exceptionality
          ''';
        break;

      default:
        bornDayText = 'Information for this day is not available.';
        break;
    }

    return bdText + '\n\n' + bornDayText;
  }
}

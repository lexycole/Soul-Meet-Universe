import 'package:flutter/material.dart';
import 'package:soul_meet_num/utils/birth_number_utils.dart';
import 'package:soul_meet_num/utils/birthday_text_resolver.dart';

class ResultScrren extends StatefulWidget {
  final String? firstName;
  final String? lastName;
  final String? middleName;
  final int? selectedDay;
  final int? selectedMonth;
  final String? birthYear;

  const ResultScrren({
    super.key,
    this.firstName,
    this.lastName,
    this.middleName,
    this.birthYear,
    this.selectedDay,
    this.selectedMonth,
  });

  @override
  State<ResultScrren> createState() => _ResultScrrenState();
}

class _ResultScrrenState extends State<ResultScrren> {
  int? yearSum = 0;

  String? lifePathText = '';
  String? lpText = '';
  String? sublpText = '';
  String? lastValue = '';
  // 02. Born Day/Birthday Number
  String? bdNum = '';
  String? bdText = '';
  String? sumDayArray = '';
  String? specialDaySum = ''; 
  String? definebd = '';
  String? bdNumText = '';
  String? bornDayText = '';
  String? resolvedText = '';
  

// Helper functions
int calculateDigitSum(String value) {
  int sum = 0;
  for (int i = 0; i < value.length; i++) {
    sum += int.parse(value[i]);
  }
  return sum;
}

int calculateDaySum(int selectedDay) {
  if (selectedDay < 10) {
    return selectedDay;
  } else if (selectedDay == 10 || selectedDay == 20 || selectedDay == 30) {
    return selectedDay ~/ 10;
  } else {
    return calculateDigitSum(selectedDay.toString());
  }
}

int calculateMonthSum(int selectedMonth) {
  if (selectedMonth < 10) {
    return selectedMonth;
  } else {
    return calculateDigitSum(selectedMonth.toString());
  }
}

int reduceToSingleDigitOrSpecialNumber(int number) {
  while (number > 9 && number != 11 && number != 22 && number != 33) {
    int sum = 0;
    String numberStr = number.toString();
    for (int i = 0; i < numberStr.length; i++) {
      sum += int.parse(numberStr[i]);
    }
    number = sum;
  }
  return number;
}


  @override
  void initState() {
    super.initState();
    // Calculate the digit sums
    int daySum = calculateDaySum(widget.selectedDay ?? 0);
    print('daySplit1: $daySum');
    
    int monthSum = calculateMonthSum(widget.selectedMonth ?? 0);
    print('monthSplit1: $monthSum');

    int? parsedBirthYear = int.tryParse(widget.birthYear ?? '');
    print('parsedBirthYear $parsedBirthYear');

    int yearSum = calculateDigitSum(widget.birthYear ?? '');
    print('yearSplit1: $yearSum');

    int xsum = yearSum;  

    int calculateDigitTotalSum(int value) {
      int sum = 0;
      String valueStr = value.toString();
      for (int i = 0; i < valueStr.length; i++) {
        sum += int.parse(valueStr[i]);
      }
      print('sum:$sum');
      return sum;
    }

    // Conditions for daySum
    if ((widget.selectedDay ?? 0) < 10) {
      daySum = widget.selectedDay!;
    } else if (widget.selectedDay == 10) {
      daySum = 1;
    } else if (widget.selectedDay == 20) {
      daySum = 2;
    } else if (widget.selectedDay == 30) {
      daySum = 3;
    } else if (widget.selectedDay == 11 || widget.selectedDay == 22) {
      daySum = widget.selectedDay!;
    } else if ((widget.selectedDay ?? 0) > 10) {
      daySum = calculateDaySum(widget.selectedDay ?? 0);
    }
    print('Final Day Sum: $daySum');

    // Conditions for monthSum
    if ((widget.selectedMonth ?? 0) < 10) {
      monthSum = widget.selectedMonth!;
    } else if (widget.selectedDay == 10) {
      monthSum = 1;
    } else if (widget.selectedMonth == 11) {
      monthSum = 11;
    } else if (widget.selectedMonth == 12) {
      monthSum = 3;
    }
    print('Final Month Sum: $monthSum');

    // Conditions for yearSum
    if (parsedBirthYear != null) {
      if (parsedBirthYear < 10) {
        yearSum = yearSum;
      } else if (parsedBirthYear == 10) {
        yearSum = 1;
      } else if (parsedBirthYear == 11) {
        yearSum = 11;
      } else if (parsedBirthYear == 22) {
        yearSum = 22;
      } else if (parsedBirthYear == 33) {
        yearSum = 33;
      } else if (parsedBirthYear > 10) {
        int xsum = yearSum;
        print ("xsum $xsum");
        if (xsum < 10) {
          xsum = xsum;
        } else if (xsum == 10) {
          xsum = 1;
        } else if (xsum == 11 || xsum == 22 || xsum == 33) {
          xsum = xsum;
        } else if (xsum > 10) {
          xsum = xsum;
        }
        yearSum = calculateDigitSum(widget.birthYear ?? '');
      }
    }
    print('Final Year Sum: $yearSum');

    // 01. Life Path Number Calculations
  int digitSum = 0;

  if (yearSum >= 0) {    
    digitSum = calculateDigitTotalSum(yearSum);
    print("Sum of digits of $yearSum is: $digitSum");
  } else {
    print("Total sum is not a two-digit number.");
  }

  int digitSum2 = calculateDigitTotalSum(digitSum);

  int totalSum = daySum + monthSum + digitSum2;
    print("Total Sum: $totalSum");

  int reducedSum = reduceToSingleDigitOrSpecialNumber(totalSum);
  print('reducedSum: $reducedSum');

  int totalDigitSum = calculateDigitTotalSum(digitSum);
  print("total Digit Sum: $totalDigitSum");

  lifePathText = (reducedSum == totalSum) ? "$reducedSum" : "$totalSum/$reducedSum";
  print("Life Path Text: $lifePathText");


    List<String> lifePathComponents = lifePathText!.split('/');
    print(lifePathComponents);

    List<String> updatedLifePathComponents = lifePathComponents.map((component) {
      int number = int.tryParse(component) ?? 1;
      return number.toString();
    }).toList();

    if (updatedLifePathComponents.isNotEmpty) {
      int lastIndex = updatedLifePathComponents.length - 1;
      lastValue = updatedLifePathComponents[lastIndex];
      print('The last value in the list is: $lastValue');
    } else {
      print('The list is empty');
    }

    
    if (lifePathText == '11/2') {
      lpText == '''The Life Path number represents the path you’ll take in this life. It
        exposes your true self, our life purpose, strengths, weaknesses,
        abilities, and goals, as well as how you will develop through life. It also
        gives details about your life mission, the lessons you must learn over
        your lifetime, and the best career options for you to pursue. It also
        reveals the tone of your experiences and why things happen the way
        they do: past, present, and future. It's one of the most crucial of your
        chart's core numbers. Any single digit from 1 to 9, as well as Master
        Numbers 11, 22, and 33, are life path numbers. To calculate your Life
        Path number, add the month, day, and year of your birth together and
        continue until you reach a single digit. ''';
        sublpText = '''
        As a Life Path Master 11 person, you have a keen sense of intuition
        and may possess psychic talents. You have a profound calling that
        connects you to the spiritual realm and gives you the ability to see
        visions. You're expected to utilize your abilities to inspire others and
        improve humanity. Although it may take some time for you to fully
        comprehend the power you have. You are being directed by a higher
        power and vibrating at a very high frequency. You're a very sensitive
        person who should rely on your intuition to lead you through life. Although you may have difficulty trusting and improving your special
        abilities. You're quite spiritual and have a strong sense of being connected to
        God. Most people with the life path number 11 have had a difficult and
        complicated life or came from shattered homes, and they may wonder
        why things are happening to them. Even though your childhood may
        not have been a happy one, it was filled with difficulties and
        tribulations. Despite this, you have become stronger and wiser as a
        result of your sorrow. You must learn to evaluate your emotions and
        painful history or experiences effectively. Recognize that you are
        driven, intelligent, and have a wonderful calling as a communicator,
        teacher, or healer. Life will test you in order to drive you closer to your
        purpose.  You might achieve enormous success or fame but also huge
        disappointment if you lack confidence and don't comprehend your life
        path. You should focus on establishing some order in your life so that
        you don't roam aimlessly and can put your skills to use. Recognize
        that all of the challenges and tests you face in life are there to help you
        grow. One of your most important teachings is that you must first heal
        yourself before you can use your power. Because you've been through
        a lot, you can effectively resolve problems and make amazing
        judgments when you heal yourself. Other people are often pulled or
        attracted to you since you have a great spirit. You must not turn your back on your specific abilities in order to
        complete this 11-life journey, or you will experience inner confusion.
        You must use your psychic talent to connect with your life's mission.
        You will get incredible spiritual clarity as a result of doing so. If you’re
        vibrating on the positive side of your life path number 11, you are
        highly intuitive, inspire people, inventive, creative, excellent manifesto,
        co-operative, accepting, sensitive, intellectual, leader, compassionate,
        team player, bring illumination, counselor, teacher, innovator,
        mediator, diplomatic, driven, spiritual, intuitive, mystic, psychic, healer,
        empathic. You place a high value on companionship or relationships. Without
        companionship or love, you feel empty, therefore you require to be
        loved. Since you are an empath, you can sense the suffering and
        emotion of others, your marriage will be generally successful. You'll be
        able to tell when your spouse is upset. You're an excellent
        communicator and listener who strives for balance in your
        surroundings. You are devoted to your loved ones and loyal to them.
        You're a born mediator who will make concessions in a relationship for
        the sake of harmony. Just remember that you were born to make a big
        difference in the world, and as a result, you have the power to
        positively influence a lot of people's lives. 
        Your weaknesses are that you can have extreme stress because you
        have great expectations for your life, mental turmoil, self-critical, 
        selfconsciousness, worried a lot about the future, situation, or anything.
        Unhappy, overly self-reflective, nervous, prone to depression and
        anxiety due to higher frequency or energy from the spiritual realm
        which you may not be aware of. You can be addicted, impatience,
        delusions, hardness and stubbornness, misunderstandings, wasted
        talents, codependent - depended on others instead of self, too
        sensitive, huge ego, push people away, physical illness, manipulative,
        lack of confidence, anxiety, and emotionality, as well as a reluctance
        to pursue your passions. You may find it difficult to adjust to change
        and are frequently criticized for your lack of ambition. You may find
        yourself in an unsatisfactory or toxic relationship or environment as a
        result of your codependency.
        Know that you can fall anywhere between the positive or the negative
        of this life path, and if you have the majority of the positive, that's
        fantastic. Your life path number is also influenced by your birthdate,
        destiny, soul urge, and personality numbers.''';
    } else if (lifePathText == '22/4') {
      lpText = '''Definition
            The Life Path number represents the path you’ll take in this life. It
            exposes your true self, our life purpose, strengths, weaknesses,
            abilities, and goals, as well as how you will develop through life. It also
            gives details about your life mission, the lessons you must learn over
            your lifetime, and the best career options for you to pursue. It also
            reveals the tone of your experiences and why things happen the way
            they do: past, present, and future. It's one of the most crucial of your
            chart's core numbers. Any single digit from 1 to 9, as well as Master
            Numbers 11, 22, and 33, are life path numbers. To calculate your Life
            Path number, add the month, day, and year of your birth together and
            continue until you reach a single digit. ''';
            sublpText = '''
            As a Life Path Master 22 person, you're a master builder because you
            have a unique calling or set of abilities for transforming unformed
            concepts into tangible realities. In life, you can achieve a great deal of
            success. You have incredible potential, talent, and strength to lay the
            groundwork for a foundation that will benefit or enhance society. You
            have a spiritual link to God or other sources. You are both obligated
            and burdened to use your talent to improve the future of the universe.
            You have the ability to dream big and make it happen. You're a
            devoted individual who isn't afraid to put in the long hours. Your
            practicality is what allows you to succeed in life and comprehend what
            has to be done in order to succeed. 
            You're also a great teacher since you have a strong desire to share
            your knowledge and encourage others to pursue their dreams. You not
            only have the ability to lead yourself, but also others. You don't let your
            emotions get in the way of your goals, and no one raised the standard
            higher than you. If you are on the positive side of this life path, you are
            very intuitive, visionary, builder of society, practical, achiever,
            diplomatic, filled with potential, great manifesto, influential, kind,
            dependable, empathic, honest, stable, hard worker, confident,
            organized, disciplined, balance, and empath. 
            You may struggle with having life path number 22 in your early years,
            and it may not appear until later in life. You may face several 
            hardships or come from a broken household in order to be pushed
            toward your life's mission. Recognize that all of the challenges and
            tests you face in life are there to help you grow. One of your most
            important teachings is that you must first heal yourself before you can
            use your power. 
            You must put your abilities to practical use in the actual world or you
            will become aimless. You can achieve anything you concentrate your
            energy toward, so be sure you're pushing yourself in the appropriate
            direction. You place a high priority on friendship and relationships. In
            life, you want to be comfortable. To be happy, you need a prosperous,
            stable life, family, work, home, and foundation. Your loved ones adore
            you because you are dependable, devoted, and honest to them.
            Because you are a dedicated individual, you are more likely to stay in
            an unhealthy relationship. You're a reliable and emotionally supportive
            spouse who wants to develop a healthy and long-lasting relationship.
            You'll need a life partner who understands and supports your goals.
            If you are on the negative side of your life path number 22, you can
            be a very lazy person, and have high expectations, people can easily
            take advantage of your kindness. You can have extreme anxiety and
            stress, workaholic, mental overload, insanity, illness, unstable, very
            controlling, destructive, rigid, huge ego, damaging, oversensitive, feel
            like a victim, worrying about the future or life, codependent, discontent,
            wasted talents, vulnerable, manipulative, and Inflexible. Depended on
            others instead of self; complainer, and emotional. Prone to depression
            and nervousness, as well as a reluctance to pursue your passions.
            You may find it difficult to adjust to change and are frequently criticized
            for your lack of ambition. 
            Know that you can fall anywhere between the positive or the negative
            of this life path, and if you have the majority of the positive, that's
            fantastic. Your life path number is also influenced by your birthdate,
            destiny, soul urge, and personality numbers.
      ''';
    } else if (lifePathText == '33/6') {
      lpText = ''' The Life Path number represents the path you’ll take in this life. It
            exposes your true self, our life purpose, strengths, weaknesses,
            abilities, and goals, as well as how you will develop through life. It also
            gives details about your life mission, the lessons you must learn over
            your lifetime, and the best career options for you to pursue. It also
            reveals the tone of your experiences and why things happen the way
            they do: past, present, and future. It's one of the most crucial of your
            chart's core numbers. Any single digit from 1 to 9, as well as Master
            Numbers 11, 22, and 33, are life path numbers. To calculate your Life
            Path number, add the month, day, and year of your birth together and
            continue until you reach a single digit. ''';
      sublpText=''' As a Life Path Master 33 person, you are a master teacher, a healer,
            and an extraordinary spiritual leader who is committed to teaching
            people how to connect to their own hearts and awareness. Honesty
            and integrity are values that you hold dear. If you are on the positive
            side of your life path number 33, you are caring, loving,
            compassionate, empathic, supportive, nurturing, communicator,
            sensible, responsible, devoted, idealistic, highly self-expressive,
            beautifully inspired creative, imaginative, jovial, concern about the
            community and family. You like helping people. You are kind, accepting, 
            gentle, respectful, peaceful, stable, responsible, loving
            caring, devoted, caretaker, domestic, harmonious, balanced, and
            attractive.
            Others want to be around you because you convey warm and friendly
            energy. You have a natural ability to work with people and provide
            support and advice. You feel that having a love connection, a family,
            and a house are all necessary for success. You are willing to sacrifice
            yourself for the sake of others and the greater benefit of peace, even if
            it means ignoring your own wants and satisfaction. You’re more
            concerned with how you can serve mankind than with how you can
            assist yourself. 
            You have the ability to guide people along the correct road. This life
            path 33 might feel both beneficial and burdensome. With this life path
            number 33, you may have to face a succession of obstacles and
            hardships. Recognize that all of the challenges and tests you face in
            life are there to help you grow. One of the most important truths you'll
            learn is that you must first heal yourself before you can help others.
            You can feel a sense of spiritual empathy and understanding. You are
            gentle, dedicated, have a strong sense of obligation, and want to
            nurture. You'd be a fantastic fit for a career in counseling, nursing,
            teaching, medicine, charity work, community service, or the healing
            arts. 
            Your weaknesses are that you are a perfectionist, controlling, have
            very high moral standards, higher critical, high expectations,
            irresponsible, prone to depression and anxiety, fear of rejection or
            criticism, indulgent, meddling, huge ego, idealization, self-destructive,
            bad listener, self-righteous, childish, untrusting, disorganized,
            scattered. 
            Know that you can fall anywhere between the positive or the negative
            of this life path, and if you have the majority of the positive, that's
            fantastic. Your life path number is also influenced by your birthdate,
            destiny, soul urge, and personality numbers.''';
    } else if (lifePathText == '1' || lifePathText == '10/1' || lifePathText == '19/1' || (lastValue != null && lastValue == '1')) {
      lpText = ''' The Life Path number represents the path you’ll take in this life. It
            exposes your true self, our life purpose, strengths, weaknesses,
            abilities, and goals, as well as how you will develop through life. It also
            gives details about your life mission, the lessons you must learn over
            your lifetime, and the best career options for you to pursue. It also
            reveals the tone of your experiences and why things happen the way
            they do: past, present, and future. It's one of the most crucial of your
            chart's core numbers. Any single digit from 1 to 9, as well as Master
            Numbers 11, 22, and 33, are life path numbers. To calculate your Life
            Path number, add the month, day, and year of your birth together and
            continue until you reach a single digit. ''';
      sublpText = ''' 
            As a life path number 1 person, you are a natural-born leader with a
            unique attitude, boundless energy, and a passion for the arts. You
            have a tremendous desire to be the best. Because you have a lot of
            trust in yourself and are a diligent worker, you are ambitious and can
            achieve whatever you choose to do in life. You have a lot of
            determination and drive. You are self-sufficient, inventive, and
            energetic, and you are not afraid to try new things. If you are vibrating
            on the positive side of your life path 1, you are a very independent,
            idealistic, and self-determined person. You know how to look after
            yourself. Because you are confident and have a propensity to be
            extremely effective at managing and leading other people. You are
            highly self-sufficient, self-reliable, and you know how to get things
            done on your own. 
            Others will want to follow your lead because of your self-confidence,
            and they may envy you. Recognize that you are an extremely creative
            and unique person. Because you want to be the first creator, you
            constantly want to start something unique that no one else has done
            before. You're willing to take a chance and put yourself out there for
            the sake of others or what you believe in. You have the ability to be
            bold, impulsive, and extroverted. You may not want to plan ahead of
            time and prefer to just go with the flow. 
            You can quickly get recognition or a high social position since you
            have strong management skills. You can be extremely good at
            listening to others and bringing them together because you have good
            leadership qualities. Your bravery may inspire you to start a
            movement, change something in society, or change a broken custom
            or legislation. You could prefer to work alone since you don't like being
            bossed around. If you work hard, you can go ahead faster than others. 
            You prioritize particular accomplishments and have the potential to
            succeed via your inventiveness and willpower. Spending more time
            with your loved ones and other individuals is something you should
            strive for. You should compliment them rather than criticize them.
            Recognize that you may be bossy and controlling, and you should
            attempt to relax a little. 
            If you're vibrating on the negative side of your life path 1, you can be
            arrogant toward others and believe you're superior to them. Because
            you have so much confidence, you might be quite narcissistic and
            have an overblown ego, believing that you are the best and number
            one. You may believe that you know more and are wiser than
            everyone else and that you can manipulate others. Because your
            independence and individuality are so important to you, you might be a
            very self-centered person who only thinks about yourself and not
            about others. You can be very selfish and stubborn, as 
            well as hardheaded and unable to accept other people's advice or listen to other
            points of view. 
            When it comes to dealing with others, you may be rigid and hesitant to
            compromise. Your stubbornness and self-centeredness may progress
            to the point where you refuse to take any assistance from others. You
            may receive insufficient help and support from others as a result of
            your personality features, and you may find yourself lonely in life.
            Understand that you may be someone who has a hard time working
            with others because you prefer to do everything on your own and that
            working in groups or doing teamwork with others can be a real
            challenge for you. 
            For example, you will strive to avoid any situations in which you feel
            someone else may have power over you, such as when someone
            assumes the role of leader or number one. Emotions, anger, paranoia,
            and fury can all be manifestations of your dominant personality traits.
            Dialogue with you will be difficult and hostile in this situation. If you
            have a supervisor or a boss that is always hovering over you and
            telling you what to do, you may have a lot of problems at work.
            Because you do not enjoy being told what to do, some people on life
            path number 1 may end up jobless or homeless. With authoritative
            figures, you might run into a number of issues. As a result, the ideal
            answer is to either become the boss or to work for yourself by creating
            your own business so that you do not have to report to anybody else.
            You should be aware that you may have a propensity to be
            overpowering, which is a form of leadership abuse in which you may
            be dictatorial and bossy to others. You may also be highly rebellious
            and rebels just because you do not want to follow tradition, which can
            be a positive thing in certain instances but, in others, it can grow to the
            point where your disobedience does you or others harm. You have a
            tendency to be impatient if you want to accomplish something now and
            don't want to wait. You can have problems sticking with anything for a
            long time if it demands a lot of patience or has too many steps. You
            can be reluctant and have trouble making your own way in life.
            Know that you can fall anywhere between the positive or the negative
            of this life path, and if you have the majority of the positive, that's
            fantastic. Your life path number is also influenced by your birthdate,
            destiny, soul urge, and personality numbers.''';
    } else if (lifePathText == '2' || lifePathText == '20/2' || (lastValue != null && lastValue == '2')) {
      lpText = '''  The Life Path number represents the path you’ll take in this life. It
            exposes your true self, our life purpose, strengths, weaknesses,
            abilities, and goals, as well as how you will develop through life. It also
            gives details about your life mission, the lessons you must learn over
            your lifetime, and the best career options for you to pursue. It also
            reveals the tone of your experiences and why things happen the way
            they do: past, present, and future. It's one of the most crucial of your
            chart's core numbers. Any single digit from 1 to 9, as well as Master
            Numbers 11, 22, and 33, are life path numbers. To calculate your Life
            Path number, add the month, day, and year of your birth together and
            continue until you reach a single digit. ''';
      sublpText = '''As a Life Path number 2, you are insightful, cooperative, and sensitive
            to other people's feelings. You are considerate and patient. You make
            every effort to promote peace wherever you can. If you're on the
            positive side of life path 2, you're looking for balance, harmony, and for
            everyone to get along. Others think of you as a compassionate and
            warm person. You'd rather be a follower than a leader. You can be an
            excellent diplomat since you are a peacemaker. You have a strong
            intuition that you may employ in a variety of scenarios. You have the
            ability to sense what other people are experiencing because of your
            intuitive nature. You're a natural empath.
            You are pleasant, loving, and trustworthy, you get along with a lot of
            people and they like you. You have the power to bring individuals
            together who are at odds, and you can collaborate well with others.
            Counseling, therapy, and social/community work are all wonderful
            careers for you. You dislike being alone and are continuously looking
            for a mate or company. Whatever life throws at you, you handle it
            gracefully and with dignity. You're honest and loyal to those you care
            about. Friendships and relationships are very important to you. Since
            you are a non-confrontational person, your relationship is more likely
            to continue longer than others.
            If you are unhappy or your heart has been shattered, though, you
            might demonstrate a level of wrath that no one could imagine. When
            other people are in agony, you recognize it and want to help them.
            You may find yourself unwilling to make decisions, preferring to remain
            in the background, and being overly sensitive, which you despise.
            Because you are not an argumentative person, this might lead to you
            holding too much inside, which can lead to anxiety or sadness.
            Therefore, you should concentrate on occupations or activities that
            emphasize your strengths.
            If you are vibrating on the negative side of life path 2, you can
            become a people pleaser and a pushover. You may cling to your
            possessions and be preoccupied with little issues. You are
            always worried about the future or other problems. You depend 
            heavily on others rather than yourself. You may find yourself in an
            unsatisfactory or toxic relationship or environment as a result of your
            codependency. You despise being alone and are always looking for a
            company or romantic partnership. You may lack the courage to carry
            out your objectives and, on occasion, delegate initiative to others.
            Because you like pleasing others, you are easily manipulated.
            You could be subservient and give in easily to conflicts or situations.
            You might be subordinate and too sensitive at times, causing your
            feelings to be easily damaged. If there is no peace and quiet in your
            environment, you do not cope well with stress and might get distracted
            and worried. Resentment, poor self-esteem, self-doubt, and a lack of
            confidence are all possibilities. You may avoid taking on any kind of
            leadership or responsibility in order to avoid causing a controversy.
            Even though you may be warm, friendly, and kind, if pushed to the
            limit, you can also be passive-aggressive. Instead of being
            straightforward, you might occasionally manipulate others to acquire
            what you want.
            Know that you can fall anywhere between the positive or the negative
            of this life path, and if you have the majority of the positive, that's
            fantastic. Your life path number is also influenced by your birthdate,
            destiny, soul urge, and personality numbers. ''';
    } else if (lifePathText == '3' ||  lifePathText == '12/3' || lifePathText == '21/3' || lifePathText == '30/3' || (lastValue != null && lastValue == '3')) {
      lpText = ''' The Life Path number represents the path you’ll take in this life. It
            exposes your true self, our life purpose, strengths, weaknesses,
            abilities, and goals, as well as how you will develop through life. It also
            gives details about your life mission, the lessons you must learn over
            your lifetime, and the best career options for you to pursue. It also
            reveals the tone of your experiences and why things happen the way
            they do: past, present, and future. It's one of the most crucial of your
            chart's core numbers. Any single digit from 1 to 9, as well as Master
            Numbers 11, 22, and 33, are life path numbers. To calculate your Life
            Path number, add the month, day, and year of your birth together and
            continue until you reach a single digit. ''';
        sublpText = '''   As a Life Path number 3 person, you are cognitively attentive and
            possess a very creative mind, particularly in terms of communication.
            You can be a comedian, writer, hairstylist, designer, singer, podcaster,
            teacher, dancer, or poet, and you're an actor, painter, artist, or
            photographer. People would admire you since you come to this earth
            to express yourself and amuse them. You are a joyful person,
            optimistic, fun, kind, considerate, humorous, outgoing, and outspoken
            if you vibrate on the positive side of your life path 3. People are drawn
            to you because you like making new connections. You are a creative
            genius with a multitude of novel ideas. Because of your selfexpression and inventiveness, you are a service provider. Due to your
            artistic abilities, you can easily make money or work for yourself. 
            You're an original in that you attempt to keep an optimistic view on life
            and search for the good in everything. You're warm, funny, and
            charming. You certainly have a knack for making others feel better.
            When it comes to problem-solving, you are resourceful and inventive.
            You have an easy time making friends and like socializing. You're
            extroverted, dynamic, and enthusiastic, and you're considerate of
            others. You despise being bored. You like collaborating with others.
            You live in the present moment and worry about the future when it
            arrives. You prefer to work without constraints. When you're stressed,
            you're more likely to work and perform well, which boosts your mental
            energy. Because of your lovely demeanor, you can easily succeed if
            you work hard. You must let your artistic nature flourish and not be
            silent for lengthy periods of time since you were born to express
            yourself. 
            If you’re on the negative side of life path 3, your weaknesses are that
            you make snap decisions from time to time, but they aren't always the
            best. You might be extremely gloomy and negative about the future or
            life in general. You may have a pessimistic attitude about many things
            and be dissatisfied with your life or yourself. You may find it difficult to
            prepare ahead of time and lack direction or attention. You must learn
            to be more ambitious and more open to others. You have a tendency
            to be critical and gossipy about others; as a result, you should strive to
            be more sympathetic and diplomatic. Even yet, you enjoy criticizing
            others, but you despise it when others criticize you. 
            When you're furious, you might take it out on the people you care
            about and become passive-aggressive. You could get agitated and
            distracted. You are irritable, manipulative, and impulsive, and you
            have a terrible temper. You can be dishonest, noncommittal,
            untrustworthy, and reckless on a regular basis. You may be afraid of
            monotony, have a difficult financial situation, and be scattered,
            unfocused, and unorganized. You may be someone who wastes
            money or is constantly in need of money as a result of your
            negligence. You're opulent and conceited, and you want everything to
            be big and flawless. You want to be the life of the party and the focus
            of attention. You might quickly get hooked on sex, drugs, alcohol, and
            other substances, as well as disingenuous at times.
            Know that you can fall anywhere between the positive or the negative
            of this life path, and if you have the majority of the positive, that's
            fantastic. Your life path number is also influenced by your birthdate,
            destiny, soul urge, and personality numbers.''';
    } else if (lifePathText == '4' || lifePathText == '13/4' || lifePathText == '31/4' ||  lifePathText == '40/4' || (lastValue != null && lastValue == '4')) {
      lpText = '''  The Life Path number represents the path you’ll take in this life. It
            exposes your true self, our life purpose, strengths, weaknesses,
            abilities, and goals, as well as how you will develop through life. It also
            gives details about your life mission, the lessons you must learn over
            your lifetime, and the best career options for you to pursue. It also
            reveals the tone of your experiences and why things happen the way
            they do: past, present, and future. It's one of the most crucial of your
            chart's core numbers. Any single digit from 1 to 9, as well as Master
            Numbers 11, 22, and 33, are life path numbers. To calculate your Life
            Path number, add the month, day, and year of your birth together and
            continue until you reach a single digit. ''';
        sublpText = '''  If you’re vibrating on the positive side of your life path number 4, you
            are a hard worker who is patient, careful, committed, focused,
            determined, logical, self-disciplined, stable, responsible, and
            grounded. Your dedication, commitment, and well-organized work may
            help you achieve great success in anything you undertake. You are a
            natural-born instructor with a wide variety of expertise. You have the
            potential to be a successful business owner or manager. 
            Working hard will undoubtedly lead to success later in life. Others
            accept your words when you talk clearly and authoritatively about what
            you know since you are a confident person. You place a high value on
            consistency and teaching. You're in charge of keeping track of
            everything and making sure everything is in order. In life, you want to
            be comfortable and keep a beautiful house. To be happy, you need a
            prosperous, stable life, family, work, and foundation. Your loved ones
            adore you because you are dependable, devoted, and honest with
            them. 
            You’re someone who wants to put in the work to acquire what you
            want and to stay competitive. It's admirable that you use your
            practicality to your advantage in all you do. You're not just pragmatic,
            but also conservative. You dislike monotony and changes. You have a
            tendency to make firm conclusions about what is proper and to close
            the door or close your thoughts to anything new or unusual that could
            have an impact on your genuine potential. You know how to manage
            your time well so that you can complete tasks on time. Because you
            are naturally physically powerful, you seek hobbies or occupations that
            allow you to put your physical strength and aptitude to good use.
            You are trustworthy, faithful, and dedicated in your relationships, and
            you expect the same from your spouse. You appreciate trust and
            dependability, so it's great that you've found someone who shares
            your religious beliefs and values. You would never waste your time
            with someone who does not share your beliefs or with whom you are
            incompatible, but once you have found that special someone, you will
            try hard to ensure the relationship is fruitful and long-lasting. If you are
            overly controlling or dull, your relationship may not be the most
            interesting, but it may surely be solid and prosperous. 
            If you’re on the negative side of your life path 4, your weaknesses are
            that you can become a workaholic, controlling, stubborn, narrowminded, argumentative, boring, blunt, undisciplined, lazy, insensitive to
            others, dull, worrisome, anxious, materialistic, risk aversion. You can
            also be careless and have a narrow view of life. You might lack
            confidence. You can struggle with change and become negative at
            times. Doesn’t like to take risks and become a complainer. 
            Know that you can fall anywhere between the positive or the negative
            of this life path, and if you have the majority of the positive, that's
            fantastic. Your life path number is also influenced by your birthdate,
            destiny, soul urge, and personality numbers.''';
    } else if (lifePathText == '5' || lifePathText == '14/5' ||  lifePathText == '23/5' || lifePathText == '32/5' ||  lifePathText == '41/5' || (lastValue != null && lastValue == '5')) {
      lpText = '''The Life Path number represents the path you’ll take in this life. It
            exposes your true self, our life purpose, strengths, weaknesses,
            abilities, and goals, as well as how you will develop through life. It also
            gives details about your life mission, the lessons you must learn over
            your lifetime, and the best career options for you to pursue. It also
            reveals the tone of your experiences and why things happen the way
            they do: past, present, and future. It's one of the most crucial of your
            chart's core numbers. Any single digit from 1 to 9, as well as Master
            Numbers 11, 22, and 33, are life path numbers. To calculate your Life
            Path number, add the month, day, and year of your birth together and
            continue until you reach a single digit. ''';
      sublpText= ''' As a Life Path 5 person, you want freedom, movement, and change,
            and you like traveling. You desire independence above everything
            else, as well as enjoyment and adventure in your life. You're on a
            once-in-a-lifetime journey that no one can stop you from pursuing. You
            get the impression that life is useless if you aren't entertaining or
            having a good time. Overall if you are vibrating on the positive side 
            of your life path number 5, you are funny, outgoing, adventurous, free, friendly, romantic,
            charismatic, flexible, witty, playful, exciting, energetic, adaptable,
            accepting, dynamic, and resourceful. You are unafraid of change and
            transformation. Meeting new people is not an issue for you since you
            are naturally a sociable person who enjoys interacting with others.
            You're always curious about new things, experiences, and ideas.
            Because there is so much in the world for you to learn and experience,
            you want to do so with a broad smile on your face.
            You have natural leadership ability. You are ambitious, yet you may be
            overly sensitive at times, ignoring routine and tedium. 
            You're a highenergy person who is always on the go. You have a tendency to learn
            by doing, and you may find it difficult to be tied down since you are
            afraid of becoming stuck. You'll move on to something more intriguing
            or enjoyable as soon as things in your relationship or environment
            start to get boring. You may struggle to find a sense of direction in life
            if you desire too much independence. You may find it difficult to
            maintain friendships and love connections, and you might be disloyal
            to your spouse at times. You have a proclivity to lose interest and
            abandon a project or relationship before it has a chance to succeed.
            If your spouse doesn't understand your need for independence and
            adventure, your relationship may suffer. So, if you don't allow yourself
            to be an adventurer, you'll suffer psychologically and be miserable.
            You prefer people who have the ability to affect you in some way. You
            are uninterested in traditional 9-5 work since you would feel
            imprisoned and unable to roam as freely as you like. You may change
            jobs several times in your life, so look for jobs or professions that
            provide you the flexibility to move about and make your own
            judgments. Feeling boring is the one thing you despise in life. To you,
            life is about having fun, exploring, learning, engaging, and amusing,
            and you can't wait to do all of these things each day.
            If you’re on the negative side of your life path 5, you may be unstable,
            easily bored, irresponsible, wild, impulsive, reckless, inconsistent,
            destructive, unpredictable, unfaithful/cheating, and non-committal.
            Because you want to try new things, you might become hooked on
            drugs, alcohol, or other substances. Nervousness and restlessness
            are possible side effects. You should keep a record of your emotions,
            occupations, and finances. You despise routine, rules, and restrictions,
            and no one can make you do something you don't want to do.
            Accidents caused by negligence, or a dangerous journey should be
            avoided. Know that you can fall anywhere between the positive or the negative
            of this life path, and if you have the majority of the positive, that's
            fantastic. Your life path number is also influenced by your birthdate,
            destiny, soul urge, and personality numbers.''';
    } else if (lifePathText == '6' || lifePathText == '15/6' ||  lifePathText == '24/6' || lifePathText == '42/6' || lifePathText == '51/6' || (lastValue != null && lastValue == '6')) {
      lpText = '''The Life Path number represents the path you’ll take in this life. It
            exposes your true self, our life purpose, strengths, weaknesses,
            abilities, and goals, as well as how you will develop through life. It also
            gives details about your life mission, the lessons you must learn over
            your lifetime, and the best career options for you to pursue. It also
            reveals the tone of your experiences and why things happen the way
            they do: past, present, and future. It's one of the most crucial of your
            chart's core numbers. Any single digit from 1 to 9, as well as Master
            Numbers 11, 22, and 33, are life path numbers. To calculate your Life
            Path number, add the month, day, and year of your birth together and
            continue until you reach a single digit. ''';
        sublpText = ''' As a Life Path number 6, you like helping people. You are kind,
            accepting, compassionate, gentle, respectful, peaceful, stable,
            responsible, loving, caring, devoted, caretaker, domestic, harmonious,
            balanced, and attractive. Others want to be around you because you
            convey warm and friendly energy. You have a natural ability to work
            with people and provide support and advice. You feel that having a
            love connection, a family, and a house are all necessary for success.
            You want to be the nurturer, supporter, and comforter for those around
            you. You desire a solid family support system as well as a lovely
            setting in which to live. Understand that most people on the life path 6
            marry or have children at a young age. You are willing to give up
            yourself for the sake of others and the greater benefit of peace, even if
            it means ignoring your own wants and enjoyment.
            You're a natural humanitarian who isn't hesitant to stand up for the
            underserved, raise funds, and provide emotional support and
            protection to people in need. As a result, try not to give too much of
            yourself away along the road. You'll have to make a lot of decisions,
            and it's critical that you make the proper ones so that people don't take
            advantage of your compassionate and supportive nature. You should
            take care of your mental and physical health on a regular basis to
            avoid being burnt out from assisting others. You have the potential to
            be an outstanding counselor, doctor, nurse, healer, firefighter, first
            responder, community or social worker, mentor, or teacher.
            You place a strong emphasis on the material aspect of life and are
            frequently gifted in business and art. Your love is strong and
            passionate. Since you are dedicated to loving, harmony, and ensuring
            that your connection lasts, you are someone who can have a
            successful love life and marriage. Due to the fact that you might be
            demanding or have high expectations, you should seek a mate who
            fulfills your standards. It is essential to devote the same level of
            commitment to yourself as you do to others; only then can you
            genuinely feel satisfied and balanced.
            If you are vibrating on the negative side of your life path 6, your
            weaknesses are that you can be superficial/picky, have high
            standards, self-righteous, bossy, idealization, intolerant, irritate,
            vulnerable, self-sacrifice, hesitate, restless, jealous, backstabber,
            possessive, critical of others, unwilling to change, and gossiping. You
            can have a strong drive for perfection and want everything to be 
            flawless. You can be harsh with others or shove your nose where it
            isn't supposed to be. It's easy to become lost in a relationship.
            Know that you can fall anywhere between the positive or the negative
            of this life path, and if you have the majority of the positive, that's
            fantastic. Your life path number is also influenced by your birthdate,
            destiny, soul urge, and personality numbers.'''; 
    } else if (lifePathText == '7' || lifePathText == '16/7' ||  lifePathText == '25/7' ||  lifePathText == '34/7' ||  (lastValue != null && lastValue == '7')) {
      lpText = '''  The Life Path number represents the path you’ll take in this life. It
            exposes your true self, our life purpose, strengths, weaknesses,
            abilities, and goals, as well as how you will develop through life. It also
            gives details about your life mission, the lessons you must learn over
            your lifetime, and the best career options for you to pursue. It also
            reveals the tone of your experiences and why things happen the way
            they do: past, present, and future. It's one of the most crucial of your
            chart's core numbers. Any single digit from 1 to 9, as well as Master
            Numbers 11, 22, and 33, are life path numbers. To calculate your Life
            Path number, add the month, day, and year of your birth together and
            continue until you reach a single digit. ''';
      sublpText = '''  As a Life Path number 7, you are the truth seekers. The number 7
            represents spiritual awakening, illumination, intuition, enlightenment,
            foresight, introspection, profound, research, knowledge, and isolation.
            You're a bright person with an analytical mind who enjoys studying
            and learning new things. You go under the surface and ask probing
            questions that most would never consider. As a result, basic
            explanations and superficial facts are insufficient for you, this is
            foolishness. You know the real gold is buried down, so you'll keep
            digging until you discover it. In your quest for knowledge, you use a
            wide range of skills, such as questioning, investigating, listening,
            watching, experiencing, and sensing. 
            Mental work is more appealing to you than practical work. You're good
            at gathering information and conducting research. You are an intuitive,
            intelligent, deep thinker, wise, visionary, spiritual, psychic, mysterious,
            dreamy, independent, non-materialistic, enigmatic, and curious
            person. You have the potential to build a strong spiritual life or embark
            on a long adventure. As a result, religion, or whatever spiritual path
            you choose, has become an important part of your life. Even though
            you feel one with the world and are always seeking the so-called truth
            in everything; you're someone who has one foot in the physical world
            and one foot out because you often feel like you don't belong here and
            even doubt or question God at times. 
            You prefer silence in your environment, and when someone or your
            loved ones disturb your deep concentration, you feel irritated and
            agitated. It takes a particular person to comprehend your desire for
            space and seclusion, which you want because you are always
            thinking. Poverty is the one thing you despise the most. You see the
            charm in everything; therefore, you wonder about the world and your
            existence. You're a person who thinks a lot. This might make it difficult
            for you to function in the physical world, leaving you unable to connect
            with others and emotionally disconnected. For instance, when you are
            in a social environment or have friends or relatives visiting for an
            extended period of time, you may become overwhelmed and reach
            your limitations, forcing you to withdraw to the safety of isolation and
            private away from them. 
            You may look distant and disconnected at times, but you are only
            conserving energy. You either have a narrow circle of friends or none
            at all. You should make an effort to spend time with your loved one
            since you have a strong desire to be self-sufficient. If you are left alone
            for an extended period of time, you may become lonely and lose
            companionship. Try not to let your independence prohibit you from
            spending time with friends, family, or even a love relationship.
            Understand that, not only are you a loner, but you also have a sharp
            tongue that can quickly damage someone's feelings. As a result, you
            may be misread and misunderstood by others. You have a high
            standard for yourself, which makes it difficult for you to have a good
            marriage or relationship. Be aware that your life may undergo
            unexpected changes at times. 
            Others may see you as being highly secretive; however, it is not
            because you are attempting to hide detrimental secrets; rather, you
            just do not feel the need for others to know all about your life, which is
            why others perceive you as mysterious. Some people might be
            obsessed with you without your knowledge. You should know how
            difficult it is for others to connect with you or see the real you if you
            refuse to allow them in or open yourself. Since you have a difficult time
            believing, you may be paranoid or distrustful of individuals or things,
            ruining something wonderful by making assumptions and accusations,
            or looking for explanations when none exist. Always presuming or
            believing that there's more to the tale when there isn't. 
            Others can't lie to you since you have a strong intuition and can
            quickly read people. You'll spot someone lying right away and call
            them out. Overall, you should realize that it is critical to communicate
            with people, live life, and have self-confidence in order to achieve.
            Walking, meditation, and being in the countryside, nature, in the
            mountains, or by the sea will make you feel wonderful. You may have
            a variety of healing abilities, including physical, emotional, and spiritual
            healing. Your analytical mind could work as a surgeon, researcher,
            lawyer, scientist, analyst, detective, spiritual leader or teacher,
            psychotherapist, or in any other profession that requires you to utilize
            your intellect. 
            Your weaknesses are that you are secretive, reclusive, suspicious,
            shy, perceptive, reserved/private, skeptical, lonely, cannot stand noisy
            environment, condescending, selfish, out of touch with reality, have
            trust issues, conservative or close-minded, high standard/perfections,
            a lone wolf, paranoia, in the head too much, depressed, constant
            mood swing, distant, isolated, cynical, sharp tongue, pessimistic,
            skeptical, critic, resentful, rumination, have trust issue, obsessive,
            difficulty connecting or communicating at times, complainer/negative,
            easily cut off communication with others or push people away, can
            appear socially awkward or odd to others. Doubtful and curtness.
            Paranoid about others watching or things. Sometimes you may be too
            proud and inaccessible. Independence is important to you; therefore,
            you do not tolerate needy people. Can be careless of other people's
            feelings or problems at times. 
            Know that you can fall anywhere between the positive or the negative
            of this life path, and if you have the majority of the positive, that's
            fantastic. Your life path number is also influenced by your birthdate,
            destiny, soul urge, and personality numbers.''';
    } else if (lifePathText == '8' || lifePathText == '17/8' || lifePathText == '26/8' ||  lifePathText == '35/8' ||  (lastValue != null && lastValue == '8')) {
      lpText = ''' The Life Path number represents the path you’ll take in this life. It
            exposes your true self, our life purpose, strengths, weaknesses,
            abilities, and goals, as well as how you will develop through life. It also
            gives details about your life mission, the lessons you must learn over
            your lifetime, and the best career options for you to pursue. It also
            reveals the tone of your experiences and why things happen the way
            they do: past, present, and future. It's one of the most crucial of your
            chart's core numbers. Any single digit from 1 to 9, as well as Master
            Numbers 11, 22, and 33, are life path numbers. To calculate your Life
            Path number, add the month, day, and year of your birth together and
            continue until you reach a single digit. ''';
        sublpText = ''' Money, wealth, and power are associated with the number 8.
            Furthermore, this number is linked to excellent administrative,
            entrepreneur, and management abilities. The negative aspects of
            number 8 include dictatorial proclivity, misused or abuse of power,
            stubborn attitude, a procrastinating propensity, and relationship issues.
            Despite the fact that 8 appears to be associated with the material
            world. It has a spiritual component as well. If you have 8 in your core
            chart: life path number, birth number, expression/destiny, soul
            urge/heart desire, and personality number, then you have the number
            8 vibration, which is a very strong energy that can be both powerful
            and destructive. Understand that the more 8s you have in your core
            chart, the more opportunities, prosperity, and achievement you will
            have in life. 
            As a Life Path number 8 person, you are driven by ambition and a
            desire for power, wealth, and money. You'll have to go through a lot of
            difficult lessons and trials if you want to be successful in life. You
            create financial objectives for yourself because you want to be
            financially independent. Money and other possessions are valuable to
            you since they serve as rewards and reminders of your hard work.
            You are strong, tenacious, and conservative, and you have
            outstanding management and administrative abilities. If you are
            vibrating on the positive side of your life path 8, you are powerful,
            ambitious, active, balanced, risk-taker, driven, wealthy, successful,
            stable, prosperous, secure, generous/giver, organized, hard worker,
            moneymaker, practical, brave/courageous, well-respected, great at
            dealing with conflict, action-oriented, extroverted, business-minded,
            accomplished, leader, and focused. 
            You are a very spiritual person who understands that you are
            connected to source energy and God, thus you will go to any length to
            achieve your goals. You have the ability to manifest whatever you
            desire in your life. You're the CEO, and you're the boss. The material
            world, authority, finance, and inspiration are all symbols of the number
            8. Understand that if you come from an underprivileged home or 
            environment, you may have to work harder to get there than others,
            but with desire and hard effort, you will succeed. Your actual strength
            is resilience. You have a robust physique and fitness level that reflects
            your mental toughness. 
            You will have to struggle and learn some painful lessons at the
            beginning of your life so you can become your true self, but you will
            surprise everyone since you were born to be wealthy and successful.
            It is your birthright, especially if your core number contains several 8s.
            Although some 8s have difficulty navigating life, you must recognize
            that taking risks will lead to success; nevertheless, you must always
            be honest, fair, and do things the right way by avoiding cheating,
            manipulating, or stealing.
            You can conquer any problems since you have a strong character and
            determination. Because you are a leader, dealing with individuals in
            positions of authority is difficult for you. You don't appreciate being told
            what to do, especially if it contradicts what you would do or believe in.
            You don't want to ask for approval or pardon because you believe you
            are entitled. Your ambition to achieve may force you to be completely
            ignorant of laws and regulations, but ignoring them and taking issues
            into your own hands makes collaboration impossible and creates a
            division between partners. 
            Since you've grown accustomed to having your way and obtaining
            what you want at any costs, which makes others despise you at times.
            With the aggressive attitude, difficulty working with others, and
            unwillingness to listen at times, a child with an 8 energy may be
            misinterpreted. The majority of people with 8s are the same, if not
            worse, and this is when you get into conflict, sometimes with the law or
            other people. When an 8 enters adulthood and has completed all of
            their hard lessons of life, they become highly disciplined, often honest,
            and balanced. 
            If you are vibrating on the negative side of your life path 8, you can be
            too proud to accept advice, or you might be extremely controlling,
            bossy, and dictatorial, or you might be hesitant to cooperate or work
            with others. You must be careful not to abuse your power since it
            might result in major consequences such as financial or legal
            problems. Everyone should be treated with decency and respect. It is
            beneficial if you learn to wait for your accomplishment since you might
            be penalized if you cheat or steal. Because of your forceful approach
            or strong personality, many may find it difficult to understand you.
            Negative traits you may display are aggression, greediness,
            materialism, stinginess, wasteful, insincere, tense, narrow-minded, too
            serious, perfectionist, big ego, entitled, misunderstood by others,
            argumentative, ruthless, cruel, calculating, cold, intolerant, forceful
            authoritative, and impatience. You may think highly of yourself and can
            be picky and moody at times. 
            Due to their aggressiveness and dominating nature, some 8s may
            have failed relationships or marriages. Some individuals with Life Path
            number 8 are competent breadwinners and will assist their loved ones,
            but their romantic connections may look to be more like business
            deals than romantic or passionate love affairs. You may not be the
            most romantic, emotional, supporting, or available spouse, yet you
            may be a fantastic provider. You might be very materialistic at times,
            putting an excessive amount of emphasis on achievement or money.
            Understand that while control and power may help you advance in
            your job or business, they may not help you develop a healthy love
            life. You'll need a partner who understands your goals and the need for
            success. You must compromise because you might have a lot of
            success but lack progress in other areas of your life, leaving you
            feeling empty. You must recognize that all aspects of your life are
            significant, not only gaining money, accumulating wealth, or advancing
            in your work; consequently, you must consider the whole picture in
            order to be happy. Keep an eye on your health because you may be
            living a hectic life. Spend time meditating, socializing with friends and
            family, and attempting to live a balanced life. Recognize that health is
            wealth and that maintaining a healthy lifestyle should be your first
            concern.  Know that you can fall anywhere between the positive or the negative
            of this life path, and if you have the majority of the positive, that's
            fantastic. Your life path number is also influenced by your birthdate,
            destiny, soul urge, and personality numbers.''';
    } else if (lifePathText == '9' || lifePathText == '18/9' || lifePathText == '27/9' || lifePathText == '36/9' || (lastValue != null && lastValue == '7')) {
      lpText = ''' The Life Path number represents the path you’ll take in this life. It
            exposes your true self, our life purpose, strengths, weaknesses,
            abilities, and goals, as well as how you will develop through life. It also
            gives details about your life mission, the lessons you must learn over
            your lifetime, and the best career options for you to pursue. It also
            reveals the tone of your experiences and why things happen the way
            they do: past, present, and future. It's one of the most crucial of your
            chart's core numbers. Any single digit from 1 to 9, as well as Master
            Numbers 11, 22, and 33, are life path numbers. To calculate your Life
            Path number, add the month, day, and year of your birth together and
            continue until you reach a single digit. ''';
            sublpText = '''As a Life Path 9 person, you are a natural humanitarian who wants to
            utilize your compassionate heart to help others who have been made
            to feel unequal or undeserving. You wish to make the world a better
            place by helping or saving it. You see everyone and desire to assist
            those who are unable to assist themselves. People look to you for
            direction. 
            If you are on the positive side of your life path 9, you are a good
            Samaritans, wise, socially conscious, tolerant, compassionate,
            empathetic, emotional, loving, caring, sensitive, creative, helpful,
            community-oriented, committed, generous/charitable, intuitive,
            spiritual, open minded, sentimental, service provider, eccentric,
            playful, charismatic. You care greatly about injustices. You will 
            frequently find yourself in positions or situations where you will be
            offering care and advice to others, since this is a natural gift of yours.
            You have a spiritual bent and may have a strong religious connection.
            You're an empath, which means you can sense or pick up on the
            feelings and emotions of others. You are concerned with the past and
            events that have occurred in your life. You want to have a global
            impact since you are so creative. You have telepathic and healing
            abilities and are intuitive. Because of your kind attitude, a lot of people
            are drawn to you. You create the idea that you know exactly what has
            to be done and that you are in the lead. You have an ideaalized view of
            yourself and your surroundings. You have a high degree of mental
            energy and are capable of dealing with a wide range of obstacles and
            tasks.  
            When it comes to relationships, you can have one foot in and one foot
            out. In this life, you must address the issues of your past, and the
            more you battle to come to grips with your troubles, the more difficult
            your life becomes. You may have had a difficult upbringing or a difficult
            life, and this may have occurred just so that you can sympathize with
            others. You must let go of the past in order to be happy. You may be
            sacrificing yourself excessively, either financially or by assisting
            others, and you must learn to say no when necessary. Remember to
            look after your emotional, bodily, and spiritual well-being.
            Your weaknesses are that you can be wounded or hurt easily,
            mentally unstable, too sensitive, moody and exaggerated behavior,
            narcissistic, bottle up emotions where you blow up or explode,
            emotionally scarred, fear of rejection and abandonment, delusions,
            feel like a victim, cannot let go of the past, end things easily,
            depressed, resentful, and emotional stress. 
            Know that you can fall anywhere between the positive or the negative
            of this life path, and if you have the majority of the positive, that's
            fantastic. Your life path number is also influenced by your birthdate,
            destiny, soul urge, and personality numbers.'''; 
    }

  // 02. Born Day/Birthday Number Calucations
  print(widget.selectedDay);
  
  daySum = calculateDaySum(widget.selectedDay ?? 0);
  print('Born Day1: $daySum');

  int selectedDay = widget.selectedDay ?? 0;

// Set bdNum and bdText based on daySum
Map<int, String> specialCases = {
    10: '1',
    13: '13/4',
    14: '14/5',
    16: '16/7',
    19: '19/1'
  };

  if (selectedDay < 10) {
    sumDayArray = calculateDaySum(selectedDay).toString();
  } else {
    if (specialCases.containsKey(selectedDay)) {
      sumDayArray = specialCases[selectedDay]!;
    } else {
      int daySum = calculateDaySum(selectedDay);
      if (daySum < 10 || specialCases.containsKey(daySum)) {
        specialDaySum = specialCases.containsKey(daySum) ? specialCases[daySum]! : daySum.toString();
      } else {
        daySum = calculateDaySum(daySum);
        specialDaySum = daySum.toString();
      }
      sumDayArray = specialDaySum;
    }
  }
  
  print('sum Day Array: $sumDayArray');

  switch (sumDayArray) {
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      bdNum = '${selectedDay}/$sumDayArray';
      break;
    case '13/4':
    case '14/5':
    case '16/7':
    case '19/1':
      bdNum = sumDayArray;
      break;
    default:
      bdNum = sumDayArray; 
      break;
  }

    print('bdNum: $bdNum');
    print('sum Day Array 3:$sumDayArray');
    definebd = getDefinebdText(sumDayArray!);
    bdNumText = getBdNumText(sumDayArray!);

  if (widget.selectedDay != null) {
      String birthdayText = BirthdayTextResolver.resolveBirthdayText(widget.selectedDay!);
      List<String> texts = birthdayText.split('\n\n');
      if (texts.length > 1) {
        setState(() {
          bdText = texts[0];
          bornDayText = texts[1];
        });
      }
    }







  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              title: Text('Result Screen'),
              backgroundColor:Color(0xFFFFC700)
            ),
            body: SingleChildScrollView(
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Present Name',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('First Name: ${widget.firstName ?? ''}'),
                        Text('Last Name: ${widget.lastName ?? ''}'),
                      ],
                    ), 
                    SizedBox(height: 15),
                    Text(
                        'Full Name at Birth',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    SizedBox(height: 10),
                    Text('First Name: ${widget.firstName ?? ''}'),
                    SizedBox(height: 5),
                        Text('Middle Name: ${widget.middleName ?? ''}'),
                    SizedBox(height: 5),
                        Text('Last Name: ${widget.lastName ?? ''}'),  
                    SizedBox(height: 15),
                    Text(
                        'Date of Birth',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Birth Year: ${widget.birthYear ?? ''}'),
                        Text('Day: ${widget.selectedDay?.toString() ?? ''}'),
                        Text('Month: ${widget.selectedMonth ?? ''}'),
                      ],
                    ),
                    SizedBox(height: 15),
                    CalculatedResultWidget(
                      lifePathText: lifePathText, 
                      lastValue: lastValue, 
                      lpText: lpText, 
                      sublpText: sublpText, 
                      bdNum: bdNum,                     
                      bdText:bdText, 
                      definebd:definebd,
                      bdNumText:bdNumText,
                      bornDayText:bornDayText,
                      sumDayArray:sumDayArray,
                      resolvedText:resolvedText,
                      ),
                  ],
                ),
              ),
            )
          )
        )
      );
    }
}

// Calculated Result  Widget
class CalculatedResultWidget extends StatefulWidget {
  final String? lifePathText;
  final String? lastValue;
  final String? lpText;
  final String? sublpText;
  final String? bdNum;
  final String? bdText;
  final String? sumDayArray;
  final String? definebd;
  final String? bdNumText;
  final String? bornDayText;
  final String? resolvedText;


  CalculatedResultWidget({
    this.lifePathText, 
    this.lastValue, this.lpText, 
    this.sublpText, this.bdNum, 
    this.bdText, 
    this.sumDayArray, this.definebd, 
    this.bdNumText, this.bornDayText,
    this.resolvedText});

  @override
  _CalculatedResultWidgetState createState() => _CalculatedResultWidgetState();
}

class _CalculatedResultWidgetState extends State<CalculatedResultWidget> {
  bool _isExpanded = false;
  bool _isExpandedColumnTwo = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  void _toggleExpansionColumnTwo() {
    setState(() {
      _isExpandedColumnTwo = !_isExpandedColumnTwo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 01. Life Path Number
        Column(
          children: [            
            ListTile(
              title: Text('Life Path Number ${widget.lifePathText}'),
              trailing: _isExpanded ? Icon(Icons.expand_less) : Icon(Icons.expand_more),
              onTap: _toggleExpansion,
            ),
            if (_isExpanded)
              Column(
                children: [
                  ListTile(
                    title: Text('Definition'),
                    subtitle: Text('${widget.lpText}', textAlign: TextAlign.justify),
                  ),
                  ListTile(
                    title: Text('Life Path Number ${widget.lastValue}'),
                    subtitle: Text('${widget.sublpText}', textAlign: TextAlign.left),
                  ),
                ],
              ),
          ],
        ),
        // 02. Born Day/Birthday Number
        Column(
          children: [
            ListTile(
              title: Text('Born Day/Birthday Number ${widget.bdNum}'),
              trailing: _isExpandedColumnTwo ? Icon(Icons.expand_less) : Icon(Icons.expand_more),
              onTap: _toggleExpansionColumnTwo,
            ),
            if (_isExpandedColumnTwo)
            Column(
                children: [
                  ListTile(
                    title: Text('Definition'),
                    subtitle: Text('${widget.definebd}', textAlign: TextAlign.left),
                  ),
                  ListTile(
                    title: Text('Birthday Number ${widget.sumDayArray}'),
                    subtitle: Text('${widget.bdNumText}',textAlign: TextAlign.left),
                  ),
                  SizedBox(height:10),
                  ListTile(
                    title: Text('Definition'),
                    subtitle: Text('${widget.bdText}', textAlign: TextAlign.left),
                  ),
                  ListTile(
                    title: Text('Born day on ${widget.sumDayArray}'),
                    subtitle: Text('${widget.bornDayText}',textAlign: TextAlign.left),
                  ),
                ],
            ),       
          ],
        ),
      ],
    );
  }
}
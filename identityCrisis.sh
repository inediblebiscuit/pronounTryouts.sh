#!/usr/bin/env bash

#the only thing missing here is the non-gendered only name and pron messages

#USE ARRAYS to replace things... associate each gender with a value... and then .format(sibling[gender])
#is there a way to do this in bash? or I could rewrite this in python, ez?

#trying to make a full package identity crisis!! yayyy
#I JUST HAD THE BEST IDEA!! RUSSIAN ROULETTE MODE, FOR QUESTIONING PPL WHO CAN'T FIGURE OUT WHICH THEY LIKE HAHAHA
    echo "»»——⍟——«« WELCOME TO PRONOUN TRYOUTS »»——⍟——««"
    echo "
    the 'how other people will read you', simplified version
    please enter your NAME, PRONOUNS and PREFERRED DESCRIPTORS"
    echo '
    common options:
    type [he] for [he/him/his/his/himself]
    type [she] for [she/her/her/hers/herself]
    type [they] for [they/them/their/theirs/themself]
    type [oth] for [custom pronouns]
    type [name] for [name only]
    ------
    type [m] for [masculine descriptors]
    type [f] for [feminine descriptors]
    type [x] for [neutral descriptors]'
# find a way to save cookies for presets??

function getID {
    echo "
    please enter your name, pronouns and descriptor here:
    e.g. Mary she f ; Tim oth x ; Ann name m"
    read -r name pron gender

    if [ -z "$name" ]; then
    getID
    fi

    if [ -z "$pron" ]; then
    getID
    fi

    if [ -z "$gender" ]; then
    getID
    fi
}
getID

function loadprns {

    if [ "$pron" = "he" ]; then
    sub="he"
    obj="him"
    pod="his"
    pop="his"
    ref="himself"
    sub1="$sub's"
    sub2="$sub's"
    subHave="$sub has"
    # I need subGOES too help argh
    subIs="$sub is"

    elif [ "$pron" = "she" ]; then
    sub="she"
    obj="her"
    pod="her"
    pop="hers"
    ref="herself"
    sub1="$sub's"
    sub2="$sub's"
    subHave="$sub has"
    subIs="$sub is"

    elif [ "$pron" = "they" ]; then
    sub="they"
    obj="them"
    pod="their"
    pop="theirs"
    ref="themself"
    sub1="$sub're"
    sub2="$sub've"
    subHave="$sub have"
    subIs="$sub are"

    elif [ "$pron" = "oth" ]; then
    echo '
    please enter your pronouns:'
    read -r sub obj pod pop ref
    sub1="$sub's"
    sub2="$sub's"
    subHave="$sub has"
    subIs="$sub is"

    elif [ "$pron" = "name" ]; then
    sub="$name"
    obj="$name"
    pod="$name's"
    pop="$name's"
    ref="$name"
    sub1="$sub's"
    sub2="$sub's"
    subHave="$sub has"
    subIs="$sub is"

    else
    getID

    fi

}
#need to make variables for $adr for Miss, Mr
#Miss, Ma'am, Sir 
#$child for son, daughter, child
#$sib for sister, brother, sibling
#$parent mother, mum; father, dad; parent
loadprns

function loadgender {

    if [ "$gender" = "m" ]; then
    title="Mr"
    title1="sir"
    person="guy"
    child="son"
    sib="brother"
    sib1="bro"
    partner="boyfriend"
    parent="father"
    compl="handsome"
    
    elif [ "$gender" = "f" ]; then
    title="Ms"
    title1="miss"
    person="girl"
    child="daughter"
    sib="sister"
    sib1="sis"
    partner="girlfriend"
    parent="mother"
    compl="pretty"

    elif [ "$gender" = "x" ]; then
    title="Mx"
    title1=""
    person="person"
    child="child"
    sib="sibling"
    sib1="sib"
    partner="partner"
    parent="parent"
    compl="cute"

    else
    getID

    fi

}
loadgender

function getMessage {
    #40 messages so far
    #REMEMBER TO REMOVE ECHO LENGTH BEFORE COMMIT IF YOU HAVEN'T
    arr=(
        "Have I introduced you to $name? $sub1 my $sib. Oh man, I thought I'd introduce $obj to you! $sub1 super cool! We share a flat together with another $person. I think you'll really like $name, $sub1 really cool." 

        "I've known $name since we were children. $sub is the kindest $person I know, and so are $pod parents, who always shower their $child's friends with tasty snacks when they come over to play with $obj." 

        "$name is a $person that I met today. I get along really well with $obj, it's like $sub is the $sib that I never had! You should meet $obj too, you'll love $obj." 

        "$name is the most reliable worker in this department. $sub has been working here for more than 7 years and knows the work here like the back of $pod hand." 

        "Excuse me $title1, do you need any help? The $person's clothing section is over there, I'm sure you'd find something suitable for a $compl $person like you." 

        "$name is my $sib, and $sub is the best! $sub is always so much fun to hang out with, and always teaches me what I don't understand. I'm so glad to have a $sib like $obj!" 

        "$name is my $sib-in-law, I haven't known $obj for long but we hit it off really quickly." 

        "I have two ${child}s, $name and $pod $sib. $name and $pod $sib bicker and fight like all siblings do, but at the end of the day the ${sib}s have a very good relationship." 

        "My $child $name just won a country-wide competition! Isn't that awesome? Go on $name, tell them about it!" 

        "Hey, it's $name! $sub1 so $compl and smart! $name is real good with computers too, $sub helped me out recently. I hope I'll be meeting $obj again soon, I love to hang out with $obj!" 

        "I'm busy. Go play with your $sib $name instead, I'm sure playing with $obj will be much more fun than bothering me. Now shoo, I have work to do." 

        "$title1, do you have a moment? Would you like to hear about out brand new insurance model? I promise this will be worth your time." 

        "$name's parents must be so lucky to have a $child like $obj. $sub is such a reliable $person, I bet $pod parents never have to worry about $obj." 

        "$name is my new colleague at work. $sub is always so busy, I couldn't even introduce myself during break. I talked to $obj once, but it was very brief. $sub is so hardworking, but difficult to talk to." 

        "$name sprained $pod ankle a few days ago, I wonder how $sub is doing now. I'm going to check on $obj at $pod house later today and keep $obj company while $sub recovers." 

        "$name's mother had 4 ${child}s in all. The first one was named May. The second and third were called June and July respectively. What was the fourth $child’s name?" 

        "A $person was rushed to the hospital emergency room. The ER doctor saw the $person and said, “I cannot operate on $obj. $sub is my $child.” But the doctor was not the $person's father. How could that be?" 

        "My $partner $name gave me this bouquet, aren’t the flowers so pretty? $sub put my favorite flowers in this bouquet, $sub is so thoughtful." 

        "I can't believe I managed to find such a $compl $partner like $name! $sub is such a considerate $person too, and spending time with $obj always makes me feel at ease. I'm so lucky!" 
        
        "$name is on $pod way to the store. $sub’s gonna buy something for us today. I hope $sub brought $pod wallet and not mine. $sub’s $compl but I’m not paying for everything just yet!" 

        "$name is a really cool $person. $subIs always there for $pod friends and all $pod friends know this and love $obj for it. $sub should be coming to meet us for a coffee soon. I'm sure $sub'd love to show you some of $pod work." 

        #"Yeah, I went and saw a movie with $name yesterday and $sub said it gave $obj great inspiration for project $subIs working on. I hope it goes well for $obj!" 

        "I met a really cool $person today named $name! $sub and I talked about different things we are interested in. $sub told me about $pod favorite movies, and I think $subHave great taste!" 

        #"$name asked me to be on one of $pod films the other day, I really love how much $sub cares about those things, but damn I'll need some acting classes, $sub1 my friend 'yknow, I don't want to let $obj down." 

        "Do you know $name? $sub1 my friend, and $sub1 a really cool $person! You should meet $obj, I think you'd get along really well with $obj!" 

        #"$name told me about this show $sub2 been watching. $sub said it's really good! $sub said I should check it out sometime." 

        #"$name's birthday is soon. $sub invited me to $obj party, but I still need to get a present for $obj! You're $pod best friend, aren't you? Do you know what $sub likes the most? Has $sub been talking about anything $sub'd like to have?" 

        #"I met $name at the park yesterday. I haven't seen $obj in quite some time, so it was nice to catch up with $obj! Talking to $obj is always so much fun. I'd love to meet up with $obj soon again!" 

        #"Have you seen $name? $sub2 got a new haircut, and it suits $obj really well! I wonder if $sub cut it $ref, or if $sub go to a hairdresser. I should ask $obj when I see $obj again!" 

        #"A couple of days ago, I met $name. I got to talk to $obj for a bit and $sub seemed really cool! $sub suggested we go to the cinema together this weekend. Do you maybe want to join us and say hi to them? I'm sure $name would be happy to introduce $ref to you!" 

        #"$name and I were supposed to meet up here, but $sub seem to be running late. I've thought about calling them, but maybe $sub1 just stuck in traffic. $sub mentioned the roads tend to be quite busy during this time of the day. I'm sure $sub will be here soon. Oh, wait, I think that's $obj over there! Hi $name!" 

        #"Have you seen $name? I borrowed a book from $obj earlier and want to return it to $obj, but I can't seem to find $obj anywhere! If you see $name, can you let $obj know I'm looking for $obj?" 

        #"Do you see that person over there? $pod name is $name, and $sub1 my friend! $sub1 super nice, I think you would get along great with $obj. Do you want to go say hi to $obj? I'm sure $sub would be glad to meet you!" 

        #"Do you know where $name is? I've been trying to find $obj. I wanted to ask $obj a question, but $pod phone is turned off. Maybe $sub1 busy at the moment. I'll just try to call $obj tomorrow again!" 

        "This is my younger $sib $name. $sub1 very busy with school and work, but $sub said $sub wanted to meet you." 

        "$name is the best $child any parent can ask for. $sub1 very polite and compassionate." 

        #"Do you think I can ask $name to help me with this? I don’t know how to do this and I know $sub1 very good at it. Maybe $sub can give me some advice." 

        #"The food here is so good! Thanks for taking us here, $name! See? I told you $name knows all the best restaurants in town!" 
    )
    length=${#arr[*]}
    echo "
    loading..."
    sleep 0.85
    echo "${arr[ $RANDOM % $((length-1)) ]}"
}
getMessage


echo "
    Enter [y] to generate another message
    Enter [n] to end program
    Enter [x] to view or edit name, pronouns and descriptors
    note: this is the last time this message will be displayed.
          commands will still work afterwards."


function newMessage {
    read -r response

    if [ -z "$response" ]; then
    response=null
    newMessage

    elif [ "$response" = "y" ]; then
    getMessage
    newMessage

    elif [ "$response" = "n" ]; then
    echo "
    Goodbye!"
    exit

    elif [ "$response" = "x" ]; then
    echo "    name: $name"
    echo "    pronouns: $sub/$obj/$pod/$pop/$ref"
    echo "    descriptors: $gender: $title1 $person $child $sib $partner $compl"
    #no $parent cos not used
    function editID {
        echo "    Would you like to edit anything? [y/n]"
        read -r edit
        if [ "$edit" = "y" ]; then
        getID
        loadprns
        loadgender
        getMessage
        newMessage
        elif [ "$edit" = "n" ]; then
        newMessage
        else
        editID
        fi

    }
    editID
    
    else
    response=null
    newMessage

    fi

}
newMessage


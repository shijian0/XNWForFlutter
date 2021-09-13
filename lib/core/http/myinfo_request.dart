import 'base/xnw_request.dart';

//get_my_info
/*{
    "class_count" = 29;
    "comment_count" = 345;
    "cost_time" = "4.601454973220825";
    "course_count" = 199;
    errcode = 0;
    "evaluation_count" = 0;
    "exam_report_count" = 46;
    "fav_count" = 150;
    "friend_count" = 22;
    "help_center_unread" = 0;
    "home_weibo_count" = 196;
    "ios_amount" = 0;
    "mistake_count" = 16;
    msg = "\U6210\U529f";
    "new_exam_report_count" = 0;
    "new_fans_count" = 0;
    "new_work_count" = 0;
    "order_count" = 897;
    "personal_record_count" = 5;
    "quan_count" = 0;
    qun =     {
        "allow_join" = 1;
        description = "";
        "disable_qun_chat" = 0;
        "follow_status" = following;
        "full_name" = "\U56db\U5e74\U7ea706\U73ed";
        grade = "\U56db\U5e74\U7ea7";
        "has_open_channel" = 0;
        headteacher =         {
            account = "\U5c0f\U9ed12";
            gid = 40223341;
            honour = "\U4e66\U751f";
            icon = "https://cdn.xnwimg.com/down/{c56e0460-e859-853f-ab6c-073245afa532}/s:110x110/1.jpg";
            "icon_filed_id" = "{c56e0460-e859-853f-ab6c-073245afa532}";
            id = 40223341;
            mobile = 13263227872;
            "never_login" = 0;
            nick = "\U6d4b\U6d4b\U6d4b\U6d4b";
            nickname = "\U6d4b\U6d4b\U6d4b\U6d4b";
            "page_view_count" = 1;
            pinyin = "XiaoHei2;XH2;\U5c0f\U9ed12;CeCeCeCe;CCCC;\U6d4b\U6d4b\U6d4b\U6d4b";
            realname = "\U6d4b\U6d4b\U6d4b\U6d4b";
            "star_value" = 26;
            "web_icon" = "{fab74ec2-fff8-0964-4b0c-eee87e457a74},{c56e0460-e859-853f-ab6c-073245afa532}";
        };
        icon = "http://demo.xnw.com:8080/images/qun_logo/class-logo.png";
        id = 2975748;
        indentity = 0;
        "is_forum_mode" = 0;
        label = "\U73ed\U7ea7";
        "label_int" = 1;
        "member_count" = 3;
        name = "\U56db\U5e74\U7ea706\U73ed";
        pinyin = "SiNianJi06Ban;SNJ06B;\U56db\U5e74\U7ea706\U73ed";
        "school_info" =         {
            address = "\U5317\U4eac\U5e02\U6d77\U6dc0\U533a\U524d\U516b\U5bb6\U6751\Uff17\U53f7\Uff08100085\Uff09";
            city =             {
                id = 011001000;
                name = "\U5317\U4eac\U5e02";
            };
            county =             {
                id = 011001008;
                name = "\U6d77\U6dc0\U533a";
            };
            governmental = 1;
            "identified_sch_qid" = "";
            province =             {
                id = 011000000;
                name = "\U5317\U4eac\U5e02";
            };
            schname = "\U5317\U4eac\U5e02\U6d77\U6dc0\U533a\U4e1c\U5347\U5b9e\U9a8c\U5c0f\U5b66";
            "school_qid" = 0;
            "school_system" = "\U516d\U5e74\U5236";
            type = "\U5c0f\U5b66";
            "type_dict_value" = 2;
        };
        "school_qid" = 0;
        "student_count" = 1;
        type = 0;
    };
    ts = 1630630143;
    "weibo_count" = 1652;
    "work_count" = 1190;
} */
///api/get_personal_info
class MyInfoRequest {
  static Future<Map> request<T>() async {
    final url = "/v1/weibo/get_my_info";
    final result = await XNWRequest.request(url);

    return result;
  }
}
//get_personal_info
/*{
    "cost_time" = "0.6386709213256836";
    errcode = 0;
    ts = 1630630266;
    user =     {
        account = "\U5c0f\U9ed12";
        address = "";
        "allow_chat" = 0;
        "allow_school_multi_select" = 0;
        area = "\U5317\U4eac\U5e02";
        birthday = "0000-00-00";
        "black_user_count" = 0;
        "blog_count" = 0;
        "check_in_xcoin" = 2;
        "checked_in" = 0;
        "child_list" =         (
        );
        city = "\U5317\U4eac\U5e02";
        "client_banner" = "https://cdn.xnwimg.com/down/f:{2fc3c4bd-0a4d-0c2b-e6d6-4a1994fc814d}/1.jpg";
        "comment_atme_count" = 238;
        "comment_count" = 345;
        county = "";
        ctime = 1457579478;
        "defined_icon" = 1;
        "delete_count" = 0;
        description = "\U96e8\U540e\U9ec4\U91d1\U5b63\U8282\U65a4\U65a4\U8ba1\U8f83\U65a4\U65a4\U8ba1\U8f83\U65a4\U65a4\U8ba1\U8f83\U65a4\U65a4\U8ba1\U8f83\U65a4\U65a4\U8ba1\U8f83\U65a4\U65a4\U8ba1\U8f83\U65a4\U65a4\U8ba1\U8f83\U65a4\U65a4\U8ba1\U8f83\U65a4\U65a4\U8ba1\U8f83\U65a4\U65a4\U8ba1\U8f83\U65a4\U65a4\U8ba1\U8f83\U5bb6\U54c8\U54c8\U54c8\U54c8\U54c8\U54c8\U54c8\U54c8\U54c8\U59d1\U59d1\U59d1\U59d1\U4e2a\U6708\U5c31\U5f00\U59cb\U7684";
        "device_enable" = 1;
        "device_list" =         (
        );
        "disallow_pub" = 0;
        "disallow_pub_msg" = "\U5141\U8bb8\U53d1\U8868";
        dqid = 0;
        email = "";
        "fav_count" = 119;
        "follow_count" = 22;
        "follow_weiqun_count" = 408;
        "follower_count" = 23;
        "friend_utime" = 0;
        gender = 2;
        gid = 40223341;
        "growth_value" = 800;
        "guardian_list" =         (
                        {
                account = "\U5c0f\U9ed12\U7238\U7238";
                email = "";
                icon = "https://cdn.xnwimg.com/down/{e432d507-2be2-0fa8-b2de-3f48db7b1e88}/s:110x110/1.jpg";
                id = 40223342;
                mobile = 19112345679;
                name = "\U54e6\U54e6";
                uid = 40223342;
            },
                        {
                account = 40232167;
                email = "";
                icon = "https://cdn.xnwimg.com/down/{FB44F11D-AB46-5C7C-10E6-3337CE33118F}/s:110x110/1.png";
                id = 40232167;
                mobile = "";
                name = "40231899\U5988\U5988";
                uid = 40232167;
            }
        );
        "has_reging_course_class" = 0;
        honour = "\U4e66\U751f";
        hqid = 1194040;
        icon = "https://cdn.xnwimg.com/down/{c56e0460-e859-853f-ab6c-073245afa532}/s:110x110/1.jpg";
        "icon_filed_id" = "{c56e0460-e859-853f-ab6c-073245afa532}";
        "icon_photo" = "https://cdn.xnwimg.com/down/{fab74ec2-fff8-0964-4b0c-eee87e457a74}/1.jpg";
        id = 40223341;
        "id_card" = "";
        "in_my_blacklist" = 0;
        "in_my_forbidden_list" = 0;
        "in_my_ignorelist" = 0;
        "is_black_mobile" = 0;
        "is_follow" = 0;
        "is_official" = 0;
        "is_partner" = 0;
        "keep_check_in_days" = 0;
        label = 0;
        "last_login_ip" = 2029335685;
        "last_login_time" = 1630628480;
        "last_read_qwid" = 0;
        "last_read_wid" = 0;
        "latest_photo" =         (
                        {
                content = "1509443311058.png";
                ctime = 1509443398;
                id = 372875;
                pic = "{fc2d9f0e-d2a7-660a-1391-870fc8153976},{fc2d9f0e-d2a7-660a-1391-870fc8153976},{7A6ACFD5-C647-7BBC-1166-C490DBBEC97F}";
                "pic_name" = "";
                "pic_wxh" = 685x470;
                seq = 1000;
                status = 1;
                video = "";
                wid = 1508351;
            },
                        {
                content = "";
                ctime = 1507606485;
                id = 371677;
                pic = "{76731e8b-8e89-2c30-2a48-5248cf7f717f},{994277cc-0a3d-0bbf-79b8-fa6492b53e2c},{994277cc-0a3d-0bbf-79b8-fa6492b53e2c}";
                "pic_name" = "";
                "pic_wxh" = 480x852;
                seq = 1000;
                status = 1;
                video = "";
                wid = 1503940;
            },
                        {
                content = "";
                ctime = 1506561938;
                id = 371479;
                pic = "{7bfd3fb2-5b5e-bb29-c8e4-6997e853043f},{7bfd3fb2-5b5e-bb29-c8e4-6997e853043f},{7CF442FD-0DEC-C967-3D2A-4397E8C46C9C},{7bfd3fb2-5b5e-bb29-c8e4-6997e853043f}";
                "pic_name" = "";
                "pic_wxh" = 360x640;
                seq = 1000;
                status = 1;
                video = "";
                wid = 1503338;
            }
        );
        latitude = "39.99";
        level = 2;
        longitude = "116.32";
        markdown = 1;
        "message_level" = 0;
        "micro_diary_count" = 0;
        mobile = 13263227872;
        "mute_notify_sms" = 0;
        "myfav_is_public" = 0;
        "mytopic_is_public" = 1;
        "never_login" = 0;
        "new_c_atme_count" = 0;
        "new_comment_count" = 0;
        "new_fans_count" = 0;
        "new_message_count" = 0;
        "new_w_atme_count" = 0;
        nick = "\U6d4b\U6d4b\U6d4b\U6d4b";
        nickname = "\U6d4b\U6d4b\U6d4b\U6d4b";
        oemid = 0;
        "org_id" = 0;
        "page_view_count" = 1;
        pinyin = "XiaoHei2;XH2;\U5c0f\U9ed12;CeCeCeCe;CCCC;\U6d4b\U6d4b\U6d4b\U6d4b";
        "praise_value" = 0;
        "qun_group_utime" = 0;
        "qun_utime" = 0;
        "qweibo_count" = 2025;
        realname = "\U6d4b\U6d4b\U6d4b\U6d4b";
        "recommended_qun_list" =         (
                        {
                "allow_join" = 0;
                "child_count" = 0;
                "course_id" = 4684;
                icon = "https://cdn.xnwimg.com/down/f:%7B95BC37F2-C623-D536-05F3-48831D5525BB%7D/s:180x180/1.jpg";
                id = 2981506;
                indentity = 0;
                label = "\U76f4\U64ad";
                "label_int" = 8;
                lwid = 1533268;
                name = "\U53cc\U5e08\U8bfe-\U8fb9\U4f73\U6ee2";
                "parent_id" = 0;
                pinyin = "SSK-BJY;\U53cc\U5e08\U8bfe-\U8fb9\U4f73\U6ee2;ShuangShiKe-BianJiaYing";
            },
                        {
                "allow_join" = 1;
                "child_count" = 6;
                "course_id" = 0;
                icon = "https://cdn.xnwimg.com/down/f:%7B7e112274-cfbe-24cc-6c89-a5691606b0c9%7D/s:180x180/1.jpg";
                id = 1194037;
                indentity = 0;
                label = "\U73ed\U7ea7";
                "label_int" = 1;
                lwid = 1522924;
                name = "\U6210\U7ee9\U5355\U6d4b\U8bd5";
                "parent_id" = 0;
                pinyin = "CJDCS;\U6210\U7ee9\U5355\U6d4b\U8bd5;ChengJiDanCeShi";
            },
                        {
                "allow_join" = 1;
                "child_count" = 0;
                "course_id" = 0;
                icon = "https://cdn.xnwimg.com/down/f:%7B19f43cc5-2a19-e8e3-7329-0bccbca8274e%7D/s:180x180/1.jpg";
                id = 2064304;
                indentity = 0;
                label = "\U5176\U4ed6";
                "label_int" = 3;
                lwid = 1484872;
                name = putong11;
                "parent_id" = 0;
                pinyin = "putong11;putong11;putong11";
            },
                        {
                "allow_join" = 1;
                "child_count" = 0;
                "course_id" = 0;
                icon = "http://demo.xnw.com:8080/images/qun_logo/class-logo.png";
                id = 2060033;
                indentity = 0;
                label = "\U73ed\U7ea7";
                "label_int" = 1;
                lwid = 1534724;
                name = "2016\U4e94\U5e74\U7ea71\U73ed";
                "parent_id" = 0;
                pinyin = "2016WNJ1B;2016\U4e94\U5e74\U7ea71\U73ed;2016WuNianJi1Ban";
            }
        );
        "reg_cid" = 0;
        "reg_from" = "pre_reg";
        "reg_type" = "";
        "register_ip" = 3411423058;
        remark = "";
        "remark_utime" = 0;
        "role_list" =         {
            1 =             (
                2061645,
                2061691,
                2061686,
                2061693,
                2060293,
                2061726,
                2061740,
                2061747,
                2061750,
                2061751,
                2061752,
                2061753,
                2061754,
                2061690,
                2061962,
                1194198,
                1194301,
                2056623,
                2056833,
                2056837,
                2057300,
                2061063,
                2061067,
                2061071,
                2061102,
                2061127,
                2061429,
                2061432,
                2061433,
                2061434,
                2061435,
                2061445,
                2061446,
                2061447,
                2061456,
                2061462,
                2061511,
                2061524,
                2060041,
                2062770,
                2063016,
                2063112,
                2064363,
                2064364,
                2065776,
                2061523,
                2067991,
                2068025,
                2068026,
                2066006,
                2068307,
                2068308,
                2068315,
                2068316,
                2068322,
                2068344,
                2068346,
                2068347,
                2068348,
                2068350,
                2068351,
                2068363,
                2068376,
                2068377,
                2068398,
                2068402,
                2068411,
                2068475,
                2068491,
                2068492,
                2068493,
                2068494,
                2068495,
                2068496,
                2068498,
                2068499,
                2068502,
                2068521,
                2068523,
                2068524,
                2068525,
                2068526,
                2068527,
                2068528,
                2068529,
                2068535,
                2068595,
                2068597,
                2068615,
                2068645,
                2068646,
                2068648,
                2068805,
                2061534,
                2069129,
                2068622,
                2075816,
                2075821,
                2075827,
                2075826,
                2075853,
                2938040,
                2938048,
                2938197,
                2938198,
                2938210,
                2938211,
                2938227,
                2938228,
                2938230,
                2938229,
                2938232,
                2938233,
                2938241,
                2938275,
                2938317,
                2972010,
                2972033,
                2972034,
                2938326,
                2972321,
                2972344,
                2972409,
                2972410,
                2972416,
                2972292,
                2938324,
                2973300,
                2974837,
                2974846,
                2975516,
                2975517,
                2975677,
                2975748,
                2975964,
                2976378,
                2976380,
                2976834,
                2976838,
                2980445
            );
            2 =             (
                2057955,
                2060292,
                2061929,
                2062571,
                2062889,
                2068043,
                2057378,
                2068213,
                2068218,
                2068221,
                2068056,
                2068234,
                2068251,
                2068255,
                2068288,
                2068792,
                2068871,
                2068911,
                2068695,
                2938039,
                2938041,
                2068583,
                2938062,
                2938106,
                2938133,
                2938224,
                2938225,
                2938060,
                2938253,
                2938252,
                2938223,
                2938257,
                2938258,
                2938265,
                2938266,
                2938280,
                2938318,
                2938319,
                2938322,
                2938288,
                2971958,
                2972009,
                2972141,
                2972140,
                2972311,
                2972347,
                2973273,
                2972420,
                2973283,
                2973284,
                2973285,
                2973292,
                2973296,
                2973297,
                2062658,
                1192805,
                2973291,
                2973277,
                2972415,
                2062161,
                2973320,
                2973315,
                2973460,
                2974811,
                2973309,
                2974839,
                2974840,
                2974810,
                2974818,
                2974925,
                2973314,
                2975160,
                2973310,
                2973317,
                2973279,
                2975496,
                2975495,
                2973489,
                2974850,
                2975532,
                2973290,
                2975571,
                2974835,
                2975596,
                2975611,
                2975715,
                2975723,
                2975731,
                2975742,
                2975721,
                2975724,
                2975624,
                2975696,
                2975753,
                2975660,
                2975703,
                2975781,
                2975790,
                2975829,
                2975792,
                2975832,
                2975685,
                2975888,
                2975893,
                2975913,
                2975918,
                2975946,
                2976000,
                2976001,
                2976024,
                2975598,
                2976021,
                2976073,
                2976081,
                2976090,
                2976016,
                2976108,
                2976110,
                2976350,
                2976374,
                2976233,
                2976089,
                2976382,
                2976372,
                2976627,
                2975785,
                2975892,
                2975616,
                2976640,
                2976870,
                2976080,
                2975880,
                2975865,
                2976812,
                2976862,
                2975760,
                2975916,
                2976710,
                2977070,
                2975922,
                2974911,
                2977063,
                2977199,
                2977252,
                2977267,
                1194037,
                2975740,
                2977627,
                2977124,
                2977783,
                2977784,
                2977792,
                2977601,
                2978245,
                2978332,
                2978333,
                2978369,
                2978386,
                2978413,
                2978545,
                2977381,
                2975556,
                2978596,
                2977757,
                2978597,
                2978603,
                2978604,
                2977527,
                2978519,
                2978598,
                2975699,
                2975757,
                2975600,
                2976377,
                2974871,
                2978536,
                2978595,
                2978610,
                2979063,
                2979129,
                2979132,
                2979308,
                2979309,
                2939297,
                2979517,
                2979606,
                2980418,
                2980406,
                2980460,
                2980459,
                2980458,
                2980469,
                2980476,
                2980456,
                2980487,
                2980490,
                2980512,
                2980523,
                2980518,
                2980532,
                2980536,
                2980563,
                2980623,
                2980669,
                2980812,
                2980930,
                2980895,
                2980404,
                2980933,
                2980847,
                2981213,
                2981214,
                2981219,
                2981302,
                2981312,
                2981223,
                2981313,
                2981351,
                2981436,
                2981468,
                2981497,
                2981506,
                2981508
            );
        };
        score = 0;
        setting =         {
            "area_status" = everyone;
            "email_status" = myself;
            "mobile_status" = myself;
        };
        "skin_setting" =         (
        );
        "sms_count" = 0;
        "sms_time" = 0;
        "star_value" = 26;
        tag = "";
        "third_weibo" = "";
        utime = 1547195239;
        "view_name" = "\U6d4b\U6d4b\U6d4b\U6d4b";
        "vip_level" = 2;
        "visit_count" = 0;
        "web_icon" = "{fab74ec2-fff8-0964-4b0c-eee87e457a74},{c56e0460-e859-853f-ab6c-073245afa532}";
        "weibo_140c_limit" = 0;
        "weibo_atme_count" = 279;
        "weibo_count" = 202;
        "weibo_total_pv" = 14340;
        xcoin = 285;
    };
} */

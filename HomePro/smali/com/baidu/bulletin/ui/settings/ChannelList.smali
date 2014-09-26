.class public Lcom/baidu/bulletin/ui/settings/ChannelList;
.super Landroid/widget/RelativeLayout;
.source "ChannelList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/settings/ChannelList$1;,
        Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter;
    }
.end annotation


# static fields
.field public static final CHANNEL_APPS:I = 0x9

.field public static final CHANNEL_CAMERA:I = 0xc

.field private static final CHANNEL_COUNT:I = 0x5

.field public static final CHANNEL_ENTERTAINMENT:I = 0x2

.field public static final CHANNEL_FINANCE:I = 0x4

.field public static final CHANNEL_FOCUS:I = 0x0

.field public static final CHANNEL_GYM:I = 0x5

.field public static final CHANNEL_HISTORY:I = 0xe

.field public static final CHANNEL_ICON_NORM:[I = null

.field public static final CHANNEL_ID:[I = null

.field public static final CHANNEL_INTERNET:I = 0x7

.field public static final CHANNEL_MILITARY:I = 0x1

.field public static final CHANNEL_MODEL:I = 0xb

.field public static final CHANNEL_MOKO:I = 0xd

.field public static final CHANNEL_MUSIC:I = 0x8

.field public static final CHANNEL_NAME:[I = null

.field public static final CHANNEL_SEXIY:I = 0xa

.field public static final CHANNEL_TECH:I = 0x3

.field public static final CHANNEL_WOMEN:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 27
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ICON_NORM:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_NAME:[I

    .line 76
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ID:[I

    return-void

    .line 27
    :array_0
    .array-data 0x4
        0xb5t 0x2t 0x2t 0x7ft
        0xb6t 0x2t 0x2t 0x7ft
        0x22t 0x4t 0x2t 0x7ft
        0xb8t 0x2t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
        0x38t 0x3t 0x2t 0x7ft
        0xd8t 0x2t 0x2t 0x7ft
        0x7ct 0x1t 0x2t 0x7ft
        0x21t 0x4t 0x2t 0x7ft
        0x1ft 0x4t 0x2t 0x7ft
    .end array-data

    .line 43
    :array_1
    .array-data 0x4
        0x2ct 0x2t 0xct 0x7ft
        0x2dt 0x2t 0xct 0x7ft
        0x2et 0x2t 0xct 0x7ft
        0x2ft 0x2t 0xct 0x7ft
        0x30t 0x2t 0xct 0x7ft
        0x31t 0x2t 0xct 0x7ft
        0x32t 0x2t 0xct 0x7ft
        0x33t 0x2t 0xct 0x7ft
        0x34t 0x2t 0xct 0x7ft
        0x35t 0x2t 0xct 0x7ft
    .end array-data

    .line 76
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 231
    return-void
.end method

.method public static getChannelIconRes(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 218
    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    .line 219
    const v0, 0x7f020077

    .line 221
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_ICON_NORM:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static getChannelIdUseTopic(I)I
    .locals 1
    .parameter "topicId"

    .prologue
    .line 143
    const/4 v0, -0x1

    .line 144
    .local v0, channelId:I
    sparse-switch p0, :sswitch_data_0

    .line 206
    :goto_0
    return v0

    .line 146
    :sswitch_0
    const/4 v0, 0x0

    .line 147
    goto :goto_0

    .line 150
    :sswitch_1
    const/4 v0, 0x1

    .line 151
    goto :goto_0

    .line 154
    :sswitch_2
    const/4 v0, 0x2

    .line 155
    goto :goto_0

    .line 158
    :sswitch_3
    const/4 v0, 0x3

    .line 159
    goto :goto_0

    .line 162
    :sswitch_4
    const/4 v0, 0x4

    .line 163
    goto :goto_0

    .line 166
    :sswitch_5
    const/4 v0, 0x5

    .line 167
    goto :goto_0

    .line 170
    :sswitch_6
    const/4 v0, 0x6

    .line 171
    goto :goto_0

    .line 174
    :sswitch_7
    const/4 v0, 0x7

    .line 175
    goto :goto_0

    .line 178
    :sswitch_8
    const/16 v0, 0x8

    .line 179
    goto :goto_0

    .line 182
    :sswitch_9
    const/16 v0, 0x9

    .line 183
    goto :goto_0

    .line 186
    :sswitch_a
    const/16 v0, 0xe

    .line 187
    goto :goto_0

    .line 190
    :sswitch_b
    const/16 v0, 0xa

    .line 191
    goto :goto_0

    .line 193
    :sswitch_c
    const/16 v0, 0xb

    .line 194
    goto :goto_0

    .line 196
    :sswitch_d
    const/16 v0, 0xc

    .line 197
    goto :goto_0

    .line 199
    :sswitch_e
    const/16 v0, 0xd

    .line 200
    goto :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x3e8 -> :sswitch_9
        0x7d0 -> :sswitch_8
        0xbb9 -> :sswitch_b
        0xbba -> :sswitch_c
        0xbbb -> :sswitch_d
        0xbbc -> :sswitch_e
        0xfa0 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getChannelInfoId(I)I
    .locals 1
    .parameter "channelId"

    .prologue
    .line 82
    const/4 v0, -0x1

    .line 84
    .local v0, channelInfoId:I
    packed-switch p0, :pswitch_data_0

    .line 139
    :goto_0
    return v0

    .line 86
    :pswitch_0
    const/4 v0, 0x1

    .line 87
    goto :goto_0

    .line 90
    :pswitch_1
    const/4 v0, 0x2

    .line 91
    goto :goto_0

    .line 94
    :pswitch_2
    const/4 v0, 0x3

    .line 95
    goto :goto_0

    .line 98
    :pswitch_3
    const/4 v0, 0x4

    .line 99
    goto :goto_0

    .line 102
    :pswitch_4
    const/4 v0, 0x5

    .line 103
    goto :goto_0

    .line 106
    :pswitch_5
    const/4 v0, 0x6

    .line 107
    goto :goto_0

    .line 110
    :pswitch_6
    const/4 v0, 0x7

    .line 111
    goto :goto_0

    .line 113
    :pswitch_7
    const/16 v0, 0x8

    .line 114
    goto :goto_0

    .line 117
    :pswitch_8
    const/16 v0, 0x7d0

    .line 119
    goto :goto_0

    .line 121
    :pswitch_9
    const/16 v0, 0x3e8

    .line 122
    goto :goto_0

    .line 124
    :pswitch_a
    const/16 v0, 0xbb9

    .line 125
    goto :goto_0

    .line 127
    :pswitch_b
    const/16 v0, 0xbba

    .line 128
    goto :goto_0

    .line 130
    :pswitch_c
    const/16 v0, 0xbbb

    .line 131
    goto :goto_0

    .line 133
    :pswitch_d
    const/16 v0, 0xbbc

    .line 134
    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static getChannelNameRes(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 210
    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    .line 211
    const v0, 0x7f0c0274

    .line 213
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/baidu/bulletin/ui/settings/ChannelList;->CHANNEL_NAME:[I

    aget v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method public onInit()V
    .locals 3

    .prologue
    .line 234
    const v1, 0x7f0800e2

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/settings/ChannelList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 235
    .local v0, listView:Landroid/widget/ListView;
    new-instance v1, Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/bulletin/ui/settings/ChannelList$SettingListAdapter;-><init>(Lcom/baidu/bulletin/ui/settings/ChannelList;Lcom/baidu/bulletin/ui/settings/ChannelList$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    return-void
.end method

.class public Lcom/baidu/launcher/ui/widget/baidu/camera/Time;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Time_camera_widget"


# instance fields
.field private mDate:Ljava/lang/String;

.field private mHourAminute:Ljava/lang/String;

.field private mMonthADay:Ljava/lang/String;

.field private mTime:Ljava/lang/String;

.field private mYear:Ljava/lang/String;

.field private timeFormat:Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;

    const-string v2, "yyyy/MM/dd/HH:mm"

    invoke-direct {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->timeFormat:Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;

    .line 27
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 28
    .local v0, date:Ljava/util/Date;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->timeFormat:Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mTime:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 9
    .parameter "time"
    .parameter "formatType"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    packed-switch p3, :pswitch_data_0

    .line 50
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 51
    .local v0, date:Ljava/util/Date;
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->timeFormat:Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;

    invoke-virtual {v3, v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, format:Ljava/lang/String;
    const-string v3, "Time_camera_widget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, split:[Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->timeFormat:Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;->formatCount:I
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;->access$000(Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 71
    :goto_1
    return-void

    .line 34
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #format:Ljava/lang/String;
    .end local v2           #split:[Ljava/lang/String;
    :pswitch_0
    new-instance v3, Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;

    const-string v4, "yyyy/MM/dd/HH:mm"

    invoke-direct {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->timeFormat:Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;

    goto :goto_0

    .line 38
    :pswitch_1
    new-instance v3, Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;

    const-string v4, "yyyy"

    const-string v5, "MM.dd"

    const-string v6, "HH:mm"

    invoke-direct {v3, v4, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->timeFormat:Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;

    goto :goto_0

    .line 42
    :pswitch_2
    new-instance v3, Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;

    const-string v4, "yyyy"

    const-string v5, "MM.dd"

    const-string v6, "HH:mm"

    invoke-direct {v3, v4, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->timeFormat:Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;

    goto :goto_0

    .line 46
    :pswitch_3
    new-instance v3, Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;

    const-string v4, "yyyy"

    const-string v5, "MM.dd"

    const-string v6, "HH:mm"

    invoke-direct {v3, v4, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->timeFormat:Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;

    goto :goto_0

    .line 57
    .restart local v0       #date:Ljava/util/Date;
    .restart local v1       #format:Ljava/lang/String;
    .restart local v2       #split:[Ljava/lang/String;
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->getReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mTime:Ljava/lang/String;

    goto :goto_1

    .line 61
    :pswitch_5
    aget-object v3, v2, v7

    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->getReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mDate:Ljava/lang/String;

    .line 62
    aget-object v3, v2, v8

    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->getReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mHourAminute:Ljava/lang/String;

    goto :goto_1

    .line 66
    :pswitch_6
    aget-object v3, v2, v7

    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->getReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mYear:Ljava/lang/String;

    .line 67
    aget-object v3, v2, v8

    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->getReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mMonthADay:Ljava/lang/String;

    .line 68
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->getReplace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mHourAminute:Ljava/lang/String;

    goto :goto_1

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 55
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getReplace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 74
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->timeFormat:Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;->formatCount:I
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;->access$000(Lcom/baidu/launcher/ui/widget/baidu/camera/Time$TimeFormat;)I

    move-result v0

    return v0
.end method

.method public getHourAminute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mHourAminute:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthADay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mMonthADay:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mYear:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mDate:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setHourAminute(Ljava/lang/String;)V
    .locals 0
    .parameter "hourAminute"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mHourAminute:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0
    .parameter "mMonth"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mMonthADay:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "mTime"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mTime:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 0
    .parameter "mYear"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/Time;->mYear:Ljava/lang/String;

    .line 136
    return-void
.end method

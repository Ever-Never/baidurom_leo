.class synthetic Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$2;
.super Ljava/lang/Object;
.source "BulletinCellBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$baidu$bulletin$utils$MusicPlayer$State:[I

.field static final synthetic $SwitchMap$com$baidu$bulletin$utils$MusicPlayer$Toast:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 334
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->values()[Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$2;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$Toast:[I

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$2;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$Toast:[I

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->NetworkInvalid:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-virtual {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$2;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$Toast:[I

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->AcquireMusicUrlError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-virtual {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$2;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$Toast:[I

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->TransmissionError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-virtual {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$2;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$Toast:[I

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->FileInputStreamError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-virtual {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$2;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$Toast:[I

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ChannelContentError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-virtual {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    .line 279
    :goto_4
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer$State;->values()[Lcom/baidu/bulletin/utils/MusicPlayer$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$2;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$State:[I

    :try_start_5
    sget-object v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$2;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$State:[I

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Waiting:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-virtual {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$2;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$State:[I

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-virtual {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    .line 334
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method

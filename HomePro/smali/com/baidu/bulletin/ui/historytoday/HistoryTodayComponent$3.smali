.class synthetic Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$3;
.super Ljava/lang/Object;
.source "HistoryTodayComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$baidu$bulletin$ui$draglist$IOnStateChangeListener$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 285
    invoke-static {}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->values()[Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$3;->$SwitchMap$com$baidu$bulletin$ui$draglist$IOnStateChangeListener$State:[I

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$3;->$SwitchMap$com$baidu$bulletin$ui$draglist$IOnStateChangeListener$State:[I

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->REFRESH:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method